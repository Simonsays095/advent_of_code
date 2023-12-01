using Logging
using BenchmarkTools
using Profile

@enum FacingDir UP RIGHT DOWN LEFT

function Forward(pos::CartesianIndex{2}, dir)
    if dir == UP
        return pos + CartesianIndex(-1,0)
    elseif dir == RIGHT
        return pos + CartesianIndex(0,1)
    elseif dir == DOWN
        return pos + CartesianIndex(1,0)
    elseif dir == LEFT
        return pos + CartesianIndex(0,-1)
    end
end

function wraparound(pos::CartesianIndex{2}, dir::FacingDir, height, width)
    if dir == LEFT
        return CartesianIndex(pos[1], pos[2] == 1 ? width-1 : pos[2])
    elseif dir == RIGHT
        return CartesianIndex(pos[1], pos[2] == width ? 2 : pos[2])
    elseif dir == DOWN
        return CartesianIndex(pos[1] == height ? 2 : pos[1], pos[2])
    elseif dir == UP
        return CartesianIndex(pos[1] == 1 ? height-1 : pos[1], pos[2])
    else
        @error "INVALID DIR"
    end
end

function parsedir(dir)
    if dir == '<'
        return LEFT
    elseif dir == '>'
        return RIGHT
    elseif dir == 'v'
        return DOWN
    elseif dir == '^'
        return UP
    else
        @error "INVALID DIR"
    end
end

abstract type ValleyState end

struct OpenState <: ValleyState
    pos::CartesianIndex{2}
end

function copy(state::OpenState)
    return OpenState(state.pos)
end

mutable struct BlizzardState <: ValleyState
    pos::CartesianIndex{2}
    direction::FacingDir

    BlizzardState(pos, dir) = new(pos, parsedir(dir))
end

function moveonestep(bliz::BlizzardState)
    return Forward(bliz.pos, bliz.direction)
end

struct WallState <: ValleyState
    pos::CartesianIndex{2}
end

function parsestate(idx, elem)
    if elem == '.'
        return OpenState(idx)
    elseif elem == '#'
        return WallState(idx)
    else
        return BlizzardState(idx, elem)
    end
end

# Modifies blizzardstates
function getpath!(start, stop, wallpos, blizzardstates, valleymap)
    (mapheight, mapwidth) = size(valleymap)
    paths::Vector{Vector{Tuple{Int, CartesianIndex{2}}}} = [[(0, start.pos)]]
    solutionfound = false
    while !solutionfound
        time = length(paths)
        @info "Start of timestep $(time): $(length(paths[end])) paths"
        # Move blizzards
        for blizzard in blizzardstates
            nextpos = moveonestep(blizzard)
            if nextpos in wallpos
                nextpos = wraparound(nextpos, blizzard.direction, mapheight, mapwidth)
            end
            blizzard.pos = nextpos
        end
        blizpos = Set(bliz.pos for bliz in blizzardstates)

        # Check for / fill in / remove open states
        openpos = Set()
        for (ind, _) in pairs(valleymap)
            if ind in wallpos
                continue
            end
            if ind in blizpos
                continue
            end
            # Not a wall, not a blizzard -- it's open!
            push!(openpos, ind)
        end

        # Now that blizzards have moved, check for future move options
        nextstates = []
        for (idx, (_, laststate)) in enumerate(paths[end])

            # Check if you can stand still
            if laststate in openpos
                push!(nextstates, (idx, laststate))
            end

            # Check if you can move
            for dir in instances(FacingDir)
                nextpos = Forward(laststate, dir)
                # Must be in bounds
                if nextpos[1] < 1 || nextpos[1] > mapheight
                    continue
                end
                if nextpos[2] < 1 || nextpos[2] > mapwidth
                    continue
                end
                if nextpos in openpos
                    push!(nextstates, (idx, nextpos))

                    # Check for win
                    if nextpos == stop.pos
                        solutionfound = true
                    end
                end
            end
        end

        # Cull paths that reach the same point in 2 different ways
        numculled = 0
        culledpaths = []
        culledpos = Set()
        for move in nextstates
            newpos = move[2]
            if !(newpos in culledpos)
                push!(culledpaths, move)
                push!(culledpos, newpos)
            end
        end
        @info "$numculled paths culled, $(length(culledpaths)) remain."
        
        # Append these paths to the accumulated list
        push!(paths, culledpaths)
    end
    
    path::Vector{CartesianIndex{2}} = []
    timestep = length(paths)-1
    state = only(filter(x->x[2] == stop.pos, paths[end]))
    pushfirst!(path, state[2])
    while timestep > 0
        state = paths[timestep][state[1]]
        pushfirst!(path, state[2])
        timestep -= 1
    end
    return path
end

function printpath(path)
    @warn "Path: $(join([Tuple(x) for x in path], " -> "))"
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    lines = reduce(vcat,permutedims.(collect.(lines)))
    mapheight = size(lines, 1)
    
    blizzardstates = Set()
    wallstates = Set()
    openstates = Set()
    for (ind, val) in pairs(lines)
        state = parsestate(ind, val)
        if typeof(state) == WallState
            push!(wallstates, state)
        elseif typeof(state) == BlizzardState
            push!(blizzardstates, state)
        else
            push!(openstates, state)
        end
    end
    @debug "Blizzards: $blizzardstates"
    @debug "Walls: $wallstates"
    wallpos = Set(wall.pos for wall in wallstates)

    start = nothing
    stop = nothing
    for state in openstates
        if state.pos[1] == 1
            start = state
        end
        if state.pos[1] == mapheight
            stop = state
        end
    end
    @warn "Starting at $(start.pos)"
    @warn "Ending at $(stop.pos)"

    path1 = getpath!(start, stop, wallpos, blizzardstates, lines)
    printpath(path1)
    path2 = getpath!(stop, start, wallpos, blizzardstates, lines)
    printpath(path2)
    path3 = getpath!(start, stop, wallpos, blizzardstates, lines)
    printpath(path3)
    @warn "Total length: $(length(path3) + length(path2) + length(path1) - 3)"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Warn)
# @btime main(Logging.Info)
@btime main(Logging.Error)
@profile  multi_main(15)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end
