using Logging
using BenchmarkTools
using Profile

abstract type Monkey end

struct YellMonkey <: Monkey
    yelled::Int
    YellMonkey(num) = new(num)
end

struct WaitMonkey <: Monkey
    waitfor::Vector{AbstractString}
    op::Char

    WaitMonkey(waitforlist, op) = new(waitforlist, op)
end

function parseline(words)
    if length(words) == 2
        # Yell monkey
        (name, num) = words
        name = name[begin:end-1] # Remove :
        return name, YellMonkey(tryparse(Int, num))
    else
        # WaitMonkey
        (name, monkeyA, op, monkeyB) = words
        name = name[begin:end-1] # Remove :
        return name, WaitMonkey([monkeyA, monkeyB], only(op))
    end
end

function yelled(name, monkeydict)
    monkey = monkeydict[name]
    if typeof(monkey) == YellMonkey
        return monkey.yelled
    else
        yellA = yelled(monkey.waitfor[1], monkeydict)
        yellB = yelled(monkey.waitfor[2], monkeydict)

        if monkey.op == '+'
            return yellA + yellB
        elseif monkey.op == '*'
            return yellA * yellB
        elseif monkey.op == '-'
            return yellA - yellB
        elseif monkey.op == '/'
            return div(yellA, yellB)
        end
    end
    @debug "Failed at $name"
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    lines = split.(lines)
    lines = parseline.(lines)
    @debug lines

    monkeydict = Dict(name=>monkey for (name, monkey) in lines)
    @debug monkeydict
    
    @debug yelled("root", monkeydict)
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
# @btime main(Logging.Error)
# @btime main(Logging.Error)
# @profile multi_main(50)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end
