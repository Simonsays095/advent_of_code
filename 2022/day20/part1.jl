using Logging
using BenchmarkTools
using Profile

function parseline(line)
    return tryparse(Int, line)
end

function mix!(numsarr, pos, num)
    newpos = mod1(pos+num, length(numsarr)-1)

    # Special case for moving around ends:
    # if num < 0 && newpos == 1
    #     newpos = length(numsarr)
    # elseif num > 0 && newpos == length(numsarr)
    #     newpos = 1
    # end

    val = popat!(numsarr, pos)
    insert!(numsarr, newpos, val)
    return
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    nums = readlines("part1.input")
    nums = parseline.(nums)
    numnums = length(nums)
    @debug nums
    idxarr = collect(Base.OneTo(numnums))

    # Mix it all!
    for mixidx in Base.OneTo(numnums)
        # Find where this idx has gone
        newidx = findfirst(isequal(mixidx), idxarr)
        @info "$mixidx has moved to $newidx"

        # Mix based on this value
        mix!(idxarr, newidx, nums[newidx])
        mix!(nums, newidx, nums[newidx])
    end
    @info nums

    # Compute the values!
    whereiszero = findfirst(isequal(0), nums)
    firstidx = mod1(whereiszero+1000, numnums)
    secondidx = mod1(whereiszero+2000, numnums)
    thirdidx = mod1(whereiszero+3000, numnums)
    summed = nums[firstidx] + nums[secondidx] + nums[thirdidx]
    @info "result: $summed"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@profile @time main(Logging.Info)
# @time main(Logging.Error)
# @btime main(Logging.Error)
# @profile main(Logging.Error)
# open("part1.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end
