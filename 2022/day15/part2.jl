using Logging
using Profile

function parseasint(str)
    # Ignore {x|y}=
    return tryparse(Int, str[3:end])
end

function get_overlaps(left, right, intervals)
    overlaps = []
    for (idx, interval) in enumerate(intervals)
        if !(interval[2] < left || interval[1] > right)
            push!(overlaps, idx)
        end
    end
    # @debug "overlapping:", [left, right], intervals, overlaps
    return overlaps
end

# Assumes they overlap -- will break if they don't
function merge_intervals(intervals, start, stop)
    left = start
    right = stop
    for interval in intervals
        left = min(left, interval[1])
        right = max(right, interval[2])
    end
    # @debug "merging:", intervals, [start,stop], [left, right]
    return [left, right]
end

function get_ruled_out(maxsize, coverage)
    # ruled_out::Set{Int} = Set()
    # Assume coverage is sorted by position:
    # create intervals that are ruled out, merging when possible
    ruled_out::Vector{Vector{Int}} = []
    for (centerx, L) in coverage
        left = max(0, centerx-L)
        right = min(centerx+L, maxsize)
        
        # Check if left:right overlaps any intervals
        overlaps = get_overlaps(left, right, ruled_out)

        # Remove overlapping intervals from ruled_out
        ints = []
        for idx in overlaps[end:-1:begin]
            push!(ints, popat!(ruled_out, idx))
        end
        # @debug "overlapping:", ints, overlaps

        # Merge overlapping intervals
        new_int = merge_intervals(ints, left, right)

        if !isnothing(new_int)
            # Push this into the list of intervals
            push!(ruled_out, new_int)
        end
        # @debug "currently ruled out:", ruled_out, (left, right)
        # setdiff!(possibly, Set(left:right))
        # union!(ruled_out, Set(left:right))
        if length(ruled_out) == 1 && ruled_out[1][1] == 0 && ruled_out[1][2] == maxsize
            break
        end
    end
    return ruled_out
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

    maxsize=4000000
    target = 0
    while target < maxsize
        # Now get an (x, rowDist) pair showing coverage for each sensor
        coverage = [[lines[idx][1][1], distances[idx]-abs(lines[idx][1][2]-target)] for idx in Base.OneTo(length(distances))]

        # Remove negative distances
        coverage = filter(x->x[2]>=0, coverage)
        # @debug "coverage:", coverage

        # Sort coverage by position
        sort!(coverage, by=x->x[1])
        # sort!(coverage, by=x->x[2], rev=true)
        # @debug coverage
        
        # Now construct a set of positions in this row based on coverage
        # possibly = Set(0:maxsize)
        ruled_out = get_ruled_out(maxsize, coverage)
        if mod(target, 100) == 0
            @debug target, ruled_out
        end
        # @debug target, length(possibly)

        if length(ruled_out) > 1 || ruled_out[1][1] != 0 || ruled_out[1][2] != maxsize
            @debug "result:", ruled_out, target
            all_pos = Set(0:maxsize)
            exclude = Set()
            for interval in ruled_out
                union!(exclude, interval[1]:interval[2])
            end
            @debug only(setdiff(all_pos, exclude)), target
            break
        end
        # if length(possibly) == 1
        # if length(ruled_out) == maxsize
        #     @debug "result: ", only(setdiff(Set(0:maxsize), ruled_out)), target
        #     break
        # end

        target += 1
        # if target > 20
        #     break
        # end
    end
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
# @time main(Logging.Error)
@btime main(Logging.Error)
@profile main(Logging.Error)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end