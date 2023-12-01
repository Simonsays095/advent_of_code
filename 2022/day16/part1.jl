using Logging
using BenchmarkTools
using Profile

struct Valve
    name::AbstractString
    flowrate::Int
    nextvalves::Vector{AbstractString}
    prevvalves::Vector{AbstractString}

    Valve(name, flowrate, nextvalves) = new(name, flowrate, nextvalves, [])
end

mutable struct Path
    timeremaining::Int
    currentflow::Int
    valves::Vector{Valve}

    Path(t, valve) = new(t, 0, [valve])
    Path(t, f, v) = new(t, f, v)
end

function Base.show(io::IO, path::Path)
    pathstr = join([valve.name for valve in path.valves], ", ")
    print(io, "$(path.currentflow): $(pathstr)")
end

function push(p::Path, v::Valve)
    newp = Path(p.timeremaining, p.currentflow, copy(p.valves))
    push!(newp.valves, v)
    return newp
end


# function getnextpath(valve::Valve, valvedict)
#     if isnothing(valve.currentpath)
#         valve.currentpath = 0
#     end
#     valve.currentpath += 1
#     if valve.currentpath > length(nextvalves)
#         return nothing
#     end

#     return valvedict[valve.nextvalves[]]
# end

# function totalflow(valve)
#     if length(pathto) == 0
#         return 0  # Not hit yet, don't know any will flow
#     end
#     return MAX_TIME - length(pathto)
# end

function parseline(words)
    words = [replace(word, r","=>"") for word in words]
    valvename = words[2]
    flowrate = words[5]
    nextvalves = words[10:end]
    # push!(nextvalves, valvename)  # Represents the option to open this valve
    flowrate = tryparse(Int, flowrate[6:end-1]) # ignore "rate=" and ";"
    return Valve(valvename, flowrate, nextvalves)
end

function getdistancemap(valves, valvedict)
    numvalves = length(valves)
    # distancemap = fill(-1, numvalves, numvalves)
    connectivity = Dict()
    for valve in valves
        if !haskey(connectivity, valve.name)
            connectivity[valve.name] = Dict()
            connectivity[valve.name][valve.name] = 0
        end
        for nextvalve in valve.nextvalves
            nextvalve = valvedict[nextvalve]
            if !haskey(connectivity, nextvalve.name)
                connectivity[nextvalve.name] = Dict()
            end
            connectivity[valve.name][nextvalve.name] = 1
            connectivity[nextvalve.name][valve.name] = 1
        end
    end
    @debug connectivity

    ordering = Dict(valve.name=>idx for (idx, valve) in enumerate(valves))

    # Starting from the startingvalve, spread distance to the other valves
    distancemap = fill(-1, numvalves, numvalves)

    for valve in valves
        idx = ordering[valve.name]
        # Distance to self = 0
        distancemap[idx,idx] = 0

        # Distance to neighbors = 1
        for nextvalve in valve.nextvalves
            nextidx = ordering[nextvalve]
            distancemap[idx, nextidx] = 1
            distancemap[nextidx, idx] = 1
        end
        for prevvalve in valve.nextvalves
            previdx = ordering[prevvalve]
            distancemap[idx, previdx] = 1
            distancemap[previdx, idx] = 1
        end
    end
    @debug distancemap

    # Iteratively spread distances from here using:
    # AB = 1
    # for any X: AX <= ABX = AB + BX = 1 + BX
    # for any X: AX <= BX + 1
    # and
    # for any X: BX <= BAX = BA + AX = 1 + AX
    # for any X: BX <= AX + 1
    endvalves = Set([first(valves)])
    while length(endvalves) > 0
        a = pop!(endvalves)
        aidx = ordering[a.name]
        @debug "$(a.name):"
        for b in union(a.nextvalves, a.prevvalves)
            bidx = ordering[b]
            b = valves[bidx]
            for x in valves
                @debug "  $(a.name) -> $(x.name):"
                xidx = ordering[x.name]
                x = valves[xidx]
                ax = distancemap[aidx, xidx]
                bx = distancemap[bidx, xidx]
                if ax == -1 && bx == -1
                    # both undefined, ignore this case...
                elseif ax == -1
                    # bx defined, set ax <= bx + 1
                    distancemap[aidx, xidx] = bx + 1
                    distancemap[xidx, aidx] = bx + 1
                    push!(endvalves, a)
                    push!(endvalves, x)
                    @debug "adding $(a.name) and $(x.name): $ax, $bx, $(distancemap[xidx, aidx])"
                elseif bx == -1
                    # ax undefined, set bx <= ax + 1
                    distancemap[bidx, xidx] = ax + 1
                    distancemap[xidx, bidx] = ax + 1
                    push!(endvalves, b)
                    push!(endvalves, x)
                    @debug "adding $(b.name) and $(x.name): $ax, $bx, $(distancemap[xidx, bidx])"
                else
                    # both defined: set both!
                    if ax > bx + 1
                        distancemap[aidx, xidx] = bx + 1
                        distancemap[xidx, aidx] = bx + 1
                        @debug "adding $(a.name) and $(x.name): $ax, $bx, $(distancemap[xidx, aidx])"
                        push!(endvalves, a)
                        push!(endvalves, x)
                    end
                    if bx > ax + 1
                        distancemap[bidx, xidx] = ax + 1
                        distancemap[xidx, bidx] = ax + 1
                        @debug "adding $(b.name) and $(x.name): $ax, $bx, $(distancemap[xidx, bidx])"
                        push!(endvalves, b)
                        push!(endvalves, x)
                    end
                end
            end
        end
    end
    @debug distancemap
    
    return distancemap
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("example.input")
    lines = split.(lines)
    valves = parseline.(lines)
    numvalves = length(valves)
    
    valvedict = Dict(valve.name => valve for valve in valves)

    # Assign prevvalves
    for valve in valves
        for nextvalvename in valve.nextvalves
            push!(valvedict[nextvalvename].prevvalves, valve.name)
        end
    end
    @debug valves
    ordering = Dict(valve.name=>idx for (idx, valve) in enumerate(valves))

    # Calculate the distance map
    distancemap = getdistancemap(valves, valvedict)

    # Simulate paths
    startvalvename = "AA"
    maxtime = 30
    startvalve = valvedict[startvalvename]
    expandingpaths = Set([Path(maxtime, startvalve)])
    finishedpaths = Set()
    function traversaltime(curvalve, nextvalve)
        curidx = ordering[curvalve.name]
        nextidx = ordering[nextvalve.name]
        return distancemap[curidx,nextidx]
    end
    idx = 0
    bestpath = nothing
    bestflow = 0
    while length(expandingpaths) > 0
        path = pop!(expandingpaths)
        # @debug "checking $path"
        endvalve = path.valves[end]
        # Check if any remaining valves are reachable in the remaining time
        # nextvalves = endvalve.nextvalves
        # nextvalves = filter(name->traversaltime(endvalve, name) < path.timeremaining, nextvalves)
        nextvalves = filter(valve->traversaltime(endvalve, valve) < path.timeremaining, valves)
        prevvalves = [ valve.name for valve in path.valves]
        nextvalves = filter(valve->!(valve.name in prevvalves), nextvalves)
        nextvalves = filter(valve->valve.flowrate>0, nextvalves)
        # @debug "$path + $([valve.name for valve in nextvalves])"
        # @debug nextvalves

        for nextvalve in nextvalves
            spenttime = traversaltime(endvalve, nextvalve)+1  # +1 to open the valve
            # newvalve = valvedict[nextvalvename]
            newpath = push(path, nextvalve)
            newpath.timeremaining -= spenttime
            newpath.currentflow += newpath.timeremaining * nextvalve.flowrate
            push!(expandingpaths, newpath)
            # @debug "start: $path"
            # @debug "end: $newpath"
            # @debug newpath
        end

        if length(nextvalves) == 0
            # push!(finishedpaths, path)
            if path.currentflow > bestflow
                bestflow = path.currentflow
                bestpath = path
            end
        end
        idx += 1
        if mod(idx, 10000) == 0
            @info length(expandingpaths)
        end
    end
    @info bestpath
    # idx = 0
    # finishedpaths = sort(collect(finishedpaths), lt=(l,r)->isless(l.currentflow, r.currentflow), rev=true)
    # for path in finishedpaths[begin:20]
        # @info path
        # if idx > 20
            # break
        # end
        # idx += 1
    # end
    # @debug max(path->path.currentflow, finishedpaths)
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Info)
@time main(Logging.Error)
# @btime main(Logging.Error)
# @profile main(Logging.Error)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end