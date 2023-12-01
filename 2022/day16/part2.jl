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
    timeremainingA::Int
    timeremainingB::Int
    currentflow::Int
    valvesA::Vector{Valve}
    valvesB::Vector{Valve}

    Path(t, valve) = new(t, t, 0, [valve], [valve])
    Path(tA, tB, f, vA, vB) = new(tA, tB, f, vA, vB)
end

function Base.show(io::IO, path::Path)
    pathstrA = join([valve.name for valve in path.valvesA], ", ")
    pathstrB = join([valve.name for valve in path.valvesB], ", ")
    print(io, "$(path.currentflow): $(pathstrA) / $(pathstrB)")
end

function push(p::Path; A::Union{Nothing,Valve}=nothing, B::Union{Nothing,Valve}=nothing)
    newp = Path(p.timeremainingA, p.timeremainingB, p.currentflow, copy(p.valvesA), copy(p.valvesB))
    if !isnothing(A)
        push!(newp.valvesA, A)
    end
    if !isnothing(B)
        push!(newp.valvesB, B)
    end
    return newp
end

function parseline(words)
    words = [replace(word, r","=>"") for word in words]
    valvename = words[2]
    flowrate = words[5]
    nextvalves = words[10:end]
    flowrate = tryparse(Int, flowrate[6:end-1]) # ignore "rate=" and ";"
    return Valve(valvename, flowrate, nextvalves)
end

function getdistancemap(valves, valvedict)
    numvalves = length(valves)
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
    lines = readlines("part1.input")
    lines = split.(lines)
    valves = parseline.(lines)

    # Put valves in alphabetical order
    sort!(valves, by=valve->valve.name)
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
    maxtime = 26
    startvalve = valvedict[startvalvename]
    expandingpaths = [Path(maxtime, startvalve)]
    # expandingpaths = Set([Path(maxtime, startvalve)])
    function traversaltime(curvalve, nextvalve)
        curidx = ordering[curvalve.name]
        nextidx = ordering[nextvalve.name]
        return distancemap[curidx,nextidx]
    end
    idx = 0
    bestpath = nothing
    bestflow = 0
    posvalves = filter(valve->valve.flowrate>0, valves)
    while length(expandingpaths) > 0
        path = pop!(expandingpaths)

        # if length(path.valvesA) == 2 && length(path.valvesB) == 1
            # @info path
        # end

        prevvalvesA = [ valve.name for valve in path.valvesA]  # 19%
        prevvalvesB = [ valve.name for valve in path.valvesB]  # 15%
        prevvalves = union(prevvalvesA, prevvalvesB)           # 11%
                                                               # total: 45.5%
        endvalveA = path.valvesA[end]
        nextvalvesA = filter(valve->traversaltime(endvalveA, valve) < path.timeremainingA, posvalves)
        nextvalvesA = filter(valve->!(valve.name in prevvalves), nextvalvesA)
        endvalveB = path.valvesB[end]
        nextvalvesB = filter(valve->traversaltime(endvalveB, valve) < path.timeremainingB, posvalves)
        nextvalvesB = filter(valve->!(valve.name in prevvalves), nextvalvesB)
        
        # Get best possible case and compare to bestflow
        bestpathA = sort([valve.flowrate for valve in nextvalvesA], rev=true)
        besttimesA = range(path.timeremainingA, length=length(bestpathA), step=-2)
        moreflowA = sum(bestpathA .* besttimesA)
        bestpathB = sort([valve.flowrate for valve in nextvalvesB], rev=true)
        besttimesB = range(path.timeremainingB, length=length(bestpathB), step=-2)
        moreflowB = sum(bestpathB .* besttimesB)

        if path.currentflow + moreflowA + moreflowB < bestflow
            # Can't possibly beat the best flow: stop looking down this path
            continue
        end

        for nextvalve in nextvalvesA
            spenttime = traversaltime(endvalveA, nextvalve)+1  # +1 to open the valve
            newpath = push(path, A=nextvalve)
            newpath.timeremainingA -= spenttime
            newpath.currentflow += newpath.timeremainingA * nextvalve.flowrate
            push!(expandingpaths, newpath)
        end

        # nextvalvesB = filter(valve->valve.flowrate>0, nextvalvesB)
        for nextvalve in nextvalvesB
            spenttime = traversaltime(endvalveB, nextvalve)+1  # +1 to open the valve
            newpath = push(path, B=nextvalve)
            newpath.timeremainingB -= spenttime
            newpath.currentflow += newpath.timeremainingB * nextvalve.flowrate
            push!(expandingpaths, newpath)
        end

        if length(nextvalvesA) == 0 && length(nextvalvesB) == 0
            # push!(finishedpaths, path)
            if path.currentflow > bestflow
                bestflow = path.currentflow
                bestpath = path
            end
        end
        idx += 1
        # @info path
        if mod(idx, 10000) == 0
            @info length(expandingpaths)
            # break
        end
    end
    @info idx
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
@profile multi_main(20)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end

# main executes in 9363 seconds :(