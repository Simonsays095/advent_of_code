using Logging
using BenchmarkTools
using Profile

function parseline(line)
    return tryparse(Int, line) * 811589153
end

function mix!(numsarr, pos, num)
    newpos = mod1(pos+num, length(numsarr)-1)

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

    nummixes = 10
    for _ in Base.OneTo(nummixes)
        # Mix it all!
        for mixidx in Base.OneTo(numnums)
            # Find where this idx has gone
            newidx = findfirst(isequal(mixidx), idxarr)
            @debug "$mixidx has moved to $newidx"

            # Mix based on this value
            mix!(idxarr, newidx, nums[newidx])
            mix!(nums, newidx, nums[newidx])
        end
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

@time main(Logging.Info)
@btime main(Logging.Error)
# @btime main(Logging.Error)
@profile multi_main(50)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end
