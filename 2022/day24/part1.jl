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

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    lines = reduce(vcat,permutedims.(collect.(lines)))
    (mapheight, mapwidth) = size(lines)
    
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
    wallpos = [wall.pos for wall in wallstates]

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

    # Breadth-first search for a path through the blizzard!
    paths::Vector{Vector{Tuple{Int, OpenState}}} = [[(0, copy(start))]]
    solutionfound = false
    while !solutionfound
        @info "Start of timestep $(length(paths)): $(length(paths[end])) paths"
        # Move blizzards
        @debug "Blizzards start: $([(Tuple(bliz.pos), bliz.direction) for bliz in blizzardstates])"
        for blizzard in blizzardstates
            nextpos = moveonestep(blizzard)
            if nextpos in [wall.pos for wall in wallstates]
                nextpos = wraparound(nextpos, blizzard.direction, mapheight, mapwidth)
            end
            @debug "blizzard $blizzard moves to $nextpos"

            # Move this blizzard!
            blizzard.pos = nextpos
        end
        @debug "Blizzards end: $([(Tuple(bliz.pos), bliz.direction) for bliz in blizzardstates])"
        blizpos = [bliz.pos for bliz in blizzardstates]

        # Check for / fill in / remove open states
        openstates = Set()
        for (ind, val) in pairs(lines)
            if ind in wallpos
                continue
            end
            if ind in blizpos
                continue
            end
            # Not a wall, not a blizzard -- it's open!
            push!(openstates, parsestate(ind, val))
        end

        # Now that blizzards have moved, check for future move options
        openpos = [open.pos for open in openstates]
        blizandwall = intersect(blizpos, wallpos)
        if length(blizandwall) > 0
            @error "Blizards are in the wall! $blizandwall"
            exit()
        end
        nextstates = []
        for (idx, (_, laststate)) in enumerate(paths[end])
            @debug "looking for valid options for $(laststate)"

            # Check if you can stand still
            if laststate.pos in openpos
                @debug "Can stand still"
                push!(nextstates, (idx, copy(laststate)))
            else
                if laststate.pos in blizpos
                    @debug "Can't stand still, a blizzard has arrived"
                else
                    @debug "Can't stand still, don't know why."
                end
            end

            # Check if you can move
            for dir in instances(FacingDir)
                nextpos = Forward(laststate.pos, dir)
                # Must be in bounds
                if nextpos[1] < 1 || nextpos[1] > mapheight
                    continue
                end
                if nextpos[2] < 1 || nextpos[2] > mapwidth
                    continue
                end
                if nextpos in openpos
                    @debug "Can move $dir"
                    push!(nextstates, (idx, OpenState(nextpos)))

                    # Check for win
                    if nextpos == stop.pos
                        solutionfound = true
                        @warn "Ending at $(stop.pos): $nextpos"
                    end
                else
                    if nextpos in blizpos
                        @debug "Can't move $dir, a blizzard is there"
                    else
                        @debug "Can't move $dir, a wall is there"
                    end
                end
            end
        end

        # Cull paths that reach the same point in 2 different ways
        numculled = 0
        culledpaths = []
        culledpos = []
        for (idx, move) in enumerate(nextstates)
            if !(move[2].pos in culledpos)
                push!(culledpaths, move)
                push!(culledpos, move[2].pos)
            end
        end
        @info "$numculled paths culled, $(length(culledpaths)) remain."
        if length(culledpaths) > 3000
            @error "Too many paths:"
            @error nextstates
            exit()
        end
        
        # Append these paths to the accumulated list
        push!(paths, culledpaths)
        @debug "End of timestep $(length(paths)): $paths"
    end
    @warn "We found a solution after $(length(paths)-1) timesteps!"
    
    timestep = length(paths)-1
    state = only(filter(x->x[2].pos == stop.pos, paths[end]))
    while timestep > 0
        @warn "timestep: $timestep, $(state[2])"
        state = paths[timestep][state[1]]
        # @warn "timestep: $(timestep-1), $(paths[timestep])"
        timestep -= 1
    end
    @warn "timestep: $timestep, $(state[2])"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Info)
# @btime main(Logging.Info)
# @btime main(Logging.Error)
@profile main(Logging.Error)
open("part1.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end
