using Logging
using BenchmarkTools
using Profile
@enum FaceDirection UP=1 DOWN=2 LEFT=3 RIGHT=4 FRONT=5 BACK=6

function opposite(dir::FaceDirection)
    if dir == UP
        return DOWN
    elseif dir == DOWN
        return UP
    elseif dir == LEFT
        return RIGHT
    elseif dir == RIGHT
        return LEFT
    elseif dir == FRONT
        return BACK
    else
        return FRONT
    end
end

mutable struct Cube
    pos::Tuple{Int, Int, Int}
    exposed::Array{Bool}

    Cube(pos::Tuple{Int, Int, Int}) = new(pos, fill(false, 6))
end

function Cube(line)
    pos = [0,0,0]
    for (idx, num) in enumerate(split(line, ','))
        pos[idx] = tryparse(Int, num)
    end
    return Cube(Tuple(pos))
end

function facing(pos, direction)
    if direction == UP
        return pos .+ (0, 0, 1)
    elseif direction == DOWN
        return pos .+ (0, 0, -1)
    elseif direction == LEFT
        return pos .+ (-1, 0, 0)
    elseif direction == RIGHT
        return pos .+ (1, 0, 0)
    elseif direction == FRONT
        return pos .+ (0, 1, 0)
    elseif direction == BACK
        return pos .+ (0, -1, 0)
    end
end

function parseline(line)
    function parseasint(str)
        return tryparse(Int, str)
    end

    # return Cube(Tuple(parseasint.(split(line, ','))))
    return Cube(line)
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    cubes = readlines("part1.input")
    cubes = parseline.(cubes)
    @debug cubes
    cubedict = Dict(cube.pos => cube for cube in cubes)
    @debug cubedict

    # Get the 3D droplet bounding box
    maxpos = [typemin(Int), typemin(Int), typemin(Int)]
    minpos = [typemax(Int), typemax(Int), typemax(Int)]
    for cube in cubes
        maxpos = max.(maxpos, cube.pos)
        minpos = min.(minpos, cube.pos)
    end
    maxpos .+= 1
    minpos .-= 1
    maxpos = Tuple(maxpos)
    minpos = Tuple(minpos)

    checkedpos = Set()
    # Add outer shell to checkedpos
    # XY
    for z in (minpos[3]-1, maxpos[3]+1)
        for x in range(minpos[1]-1, maxpos[1]+1)
            for y in range(minpos[2]-1, maxpos[2]+1)
                push!(checkedpos, (x,y,z))
            end
        end
    end
    # XZ
    for z in range(minpos[3]-1, maxpos[3]+1)
        for x in range(minpos[1]-1, maxpos[1]+1)
            for y in (minpos[2]-1, maxpos[2]+1)
                push!(checkedpos, (x,y,z))
            end
        end
    end
    # YZ
    for z in range(minpos[3]-1, maxpos[3]+1)
        for x in (minpos[1]-1, maxpos[1]+1)
            for y in range(minpos[2]-1, maxpos[2]+1)
                push!(checkedpos, (x,y,z))
            end
        end
    end

    # Keeping all points inside the bounding box, fill with water
    checkpoints = Set([maxpos])
    numchecked = 0
    while length(checkpoints) > 0
        water = pop!(checkpoints)

        # Check nearby blocks
        for dir in instances(FaceDirection)
            neighbor = facing(water, dir)
            if neighbor in checkedpos
                continue
            end

            # Check for droplet
            if haskey(cubedict, neighbor)
                # This direction has a cube - it's exposed
                cubedict[neighbor].exposed[Int(opposite(dir))] = true
            else
                # This direction is not a cube - expand to it
                push!(checkpoints, neighbor)
            end
            push!(checkedpos, water)
        end
        numchecked += 1
    end
    @debug numchecked

    # Sum them all up
    surfacearea = 0
    for cube in cubes
        surfacearea += count(x->x, cube.exposed)
    end
    @debug surfacearea
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
@time main(Logging.Error)
@btime main(Logging.Error)
@profile multi_main(500)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end