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

    Cube(pos) = new(pos, fill(true, 6))
end

function facing(cube, direction)
    if direction == UP
        return cube.pos .+ (0, 0, 1)
    elseif direction == DOWN
        return cube.pos .+ (0, 0, -1)
    elseif direction == LEFT
        return cube.pos .+ (-1, 0, 0)
    elseif direction == RIGHT
        return cube.pos .+ (1, 0, 0)
    elseif direction == FRONT
        return cube.pos .+ (0, 1, 0)
    elseif direction == BACK
        return cube.pos .+ (0, -1, 0)
    end
end

function setexposed(cube, others)
    for other in others
        for dir in instances(FaceDirection)
            if facing(cube, dir) == other.pos
                cube.exposed[Int(dir)] = false
                other.exposed[Int(opposite(dir))] = false
            end
        end
    end
end

function parseasint(str)
    return tryparse(Int, str)
end

function parseline(line)
    return Cube(Tuple(parseasint.(split(line, ','))))
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    cubes = readlines("part1.input")
    cubes = parseline.(cubes)
    @debug cubes

    # Check exposed faces
    unchecked = Set(cubes)
    while length(unchecked) > 0
        cube = pop!(unchecked)
    # for cube in cubes
        setexposed(cube, unchecked)
        @debug cube
    end

    # Sum them all UP
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
# @time main(Logging.Error)
# @btime main(Logging.Error)
# @profile main(Logging.Error)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end