using Logging
using BenchmarkTools
using Profile

function parseline(str)
    str=replace(str, r"2"=>"4", r"1"=>"3", r"0"=>"2", r"-"=>"1", r"="=>"0")
    offset = repeat("2", length(str))
    offset = tryparse(Int, offset, base=5)
    return tryparse(Int, str, base=5) - offset
end

function toSNAFU(num)
    offset = repeat("2", ndigits(num, base=5))
    offset = tryparse(Int, offset, base=5)
    @debug num, num + offset
    num = join(digits(num+offset, base=5))[end:-1:begin]
    num = replace(num, r"4"=>"2", r"3"=>"1", r"2"=>"0", r"1"=>"-", r"0"=>"=")
    return num
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    lines = parseline.(lines)
    @debug lines

    @info "Result: $(sum(lines)), $(toSNAFU(sum(lines)))"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
# @btime main(Logging.Info)
# @btime main(Logging.Error)
# @profile  multi_main(15)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end
