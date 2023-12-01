using Logging

function parseasint(str)
    # Ignore {x|y}=
    return tryparse(Int, str[3:end])
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = read("part1.input", String)
    @debug lines
    lines = replace(lines, r"[:,]" => "")
    lines = split(lines, "\r\n")
    @debug lines

    lines = split.(lines)
    lines = [ [[parseasint(x[3]), parseasint(x[4])], [parseasint(x[9]), parseasint(x[10])]] for x in lines]
    @debug lines

    # for each sensor, compute manhattan distance to beacon
    distances = [abs(x[1][1] - x[2][1]) + abs(x[1][2] - x[2][2]) for x in lines]
    @debug distances

    # Now get an (x, rowDist) pair showing coverage for each sensor
    target = 2000000
    coverage = [[lines[idx][1][1], distances[idx]-abs(lines[idx][1][2]-target)] for idx in Base.OneTo(length(distances))]
    @debug coverage

    # Remove negative distances
    coverage = filter(x->x[2]>=0, coverage)
    @debug coverage
    
    # Now construct a set of positions in this row based on coverage
    ruled_out = Set()
    for (centerx, length) in coverage
        for x in range(centerx-length, centerx+length)
            push!(ruled_out, x)
        end
    end
    # @debug ruled_out
    @debug length(ruled_out)

    # Remove any positions in this set that contain a beacon
    for (sensor, beacon) in lines
        if beacon[2] == target
            pop!(ruled_out, beacon[1], nothing)
        end
    end
    # @debug ruled_out
    @debug length(ruled_out)

    # @debug(sort(collect(ruled_out)))
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
@time main(Logging.Error)
# @btime main(Logging.Error)