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

function polyproduct(polyA, polyB)
    degA = length(polyA)-1
    degB = length(polyB)-1
    # Increase the degree
    finaldeg = degA + degB
    finalpoly = zeros(Rational, finaldeg+1)
    for (i, x) in enumerate(polyA)
        for (j, y) in enumerate(polyB)
            finalpoly[i+j-1] += x*y
        end
    end
    # @debug "product: $polyA x $polyB = $finalpoly"
    if finaldeg > 1 exit() end
    return finalpoly
end

function polydivmod(dividend, divisor)
    degA = length(dividend)-1
    degB = length(divisor)-1
    finaldeg = degA - degB
    divpoly = zeros(Rational, finaldeg+1)
    divpoly[finaldeg+1] = dividend[end] // divisor[end]

    # modpoly = [A for A in dividend[begin:end-degB]]
    modpoly = copy(dividend)
    prod = polyproduct(divisor, divpoly)
    for (i, x) in enumerate(prod)
        modpoly[i] -= x
    end
    # modpoly .-= polyproduct(divisor, divpoly)
    # modpoly = modpoly[begin:end-degB-1]
    while length(modpoly) > 0 && modpoly[end] == 0
        pop!(modpoly)
    end
    return divpoly, modpoly
end

function combinepolynomials(polyA, polyB, op)
    # [x^0, x^1, x^2, ... ] representation
    if op == '+'
        # add each element
        if length(polyA) > length(polyB)
            finalpoly = copy(polyA)
            for (i, B) in enumerate(polyB)
                finalpoly[i] += B
            end
        else
            finalpoly = copy(polyB)
            for (i, A) in enumerate(polyA)
                finalpoly[i] += A
            end
        end
        return finalpoly
        # return [A + B for (A,B) in zip(polyA, polyB)]
    elseif op == '-'
        if length(polyA) > length(polyB)
            finalpoly = copy(polyA)
            for (i, B) in enumerate(polyB)
                finalpoly[i] -= B
            end
        else
            finalpoly = -1 * copy(polyB)
            for (i, A) in enumerate(polyA)
                finalpoly[i] += A
            end
        end
        return finalpoly
        # return [A - B for (A,B) in zip(polyA, polyB)]
    elseif op == '*'
        return polyproduct(polyA, polyB)
    elseif op == '/'
        degA = length(polyA)-1
        degB = length(polyB)-1
        finaldeg = degA - degB
        finalpoly = zeros(Rational, finaldeg+1)
        # @debug "dividing: $polyA / $polyB"
        # Decrease the degree, using polynomial long division
        modpoly = polyA
        # while length(modpoly) > 1
        count = 0
        while !all(iszero, modpoly)
            curpos = length(modpoly) - length(polyB) + 1
            divpoly, newmodpoly = polydivmod(modpoly, polyB)
            # @debug "div step $curpos: $modpoly / $polyB => $divpoly r $newmodpoly"
            finalpoly[curpos] = divpoly[end]
            # @debug "div step $curpos: $modpoly / $polyB => $finalpoly"
            modpoly = newmodpoly
            count += 1
            if count > 5 exit() end
        end
        # @debug "div: $polyA / $polyB = $finalpoly"
        return finalpoly
    end
end

function yelled(name, monkeydict)
    if name == "humn"
        # Special case for part2
        @debug "humn!!!!"
        return [0, 1]
    end
    monkey = monkeydict[name]
    if typeof(monkey) == YellMonkey
        # @debug "Yell $([monkey.yelled])"
        return [monkey.yelled] # X^0 always
    else
        yellA = yelled(monkey.waitfor[1], monkeydict)
        yellB = yelled(monkey.waitfor[2], monkeydict)

        if name == "root"
            # Special case for part 2, '=' op
            @debug "$name Combined $(monkey.waitfor[1]) and $(monkey.waitfor[2]): $yellA = $yellB = (yellA, yellB)"
            return (yellA, yellB)
        end

        finalpoly = combinepolynomials(yellA, yellB, monkey.op)
        @debug "$name Combined $(monkey.waitfor[1]) and $(monkey.waitfor[2]): $yellA $(monkey.op) $yellB = $(finalpoly)"
        return finalpoly
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
    
    (left, right) = yelled("root", monkeydict)

    # Assume (because I ran this before) that length(left) == 2 && length(right) == 1
    @debug left, right
    @debug floor(Int, (only(right) - left[1]) / left[2])
    @debug ceil(Int, (only(right) - left[1]) / left[2])
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
