
mutable struct Monkey
    id::Int
    items::Vector{Int}
    operation::Function
    opamount::Union{Int, Nothing}
    divisibility::Int
    trueThrow::Int
    falseThrow::Int
    activity::Int
end

function Monkey(args::Vector{<:AbstractString})
    @show args
    
    # Monkey num
    line = popfirst!(args)
    id = split(line)[2][begin:end-1]
    id = tryparse(Int, id)

    # Starting items: list...
    line = popfirst!(args)
    items = split(line)[3:end]
    @show items
    items = [tryparse(Int, replace(x, ',' => "")) for x in items]

    # Operation: new = old (+|*) num
    line = popfirst!(args)
    opargs = split(line)[5:6]
    operation = only(opargs[1]) == '*' ? (*) : (+)
    opamount = tryparse(Int, opargs[2])

    # Test: divisible by num
    line = popfirst!(args)
    divisibility = split(line)[end]
    divisibility = tryparse(Int, divisibility)

    # If true: throw to monkey num
    line = popfirst!(args)
    trueThrow = split(line)[end]
    trueThrow = tryparse(Int, trueThrow)

    # If false: throw to monkey num
    line = only(args)
    falseThrow = split(line)[end]
    falseThrow = tryparse(Int, falseThrow)

    @show id, items, operation, opamount, divisibility, trueThrow, falseThrow
    return Monkey(id, items, operation, opamount, divisibility, trueThrow, falseThrow, 0)
end

function Base.show(io::IO, monkey::Monkey)
    print("Monkey[$(monkey.id), $(monkey.activity): $(join([x for x in monkey.items], ','))]")
end

function Relief(worry)
    return div(worry, 3)
end

function Inspect(monkey, item)
    amount = isnothing(monkey.opamount) ? item : monkey.opamount
    return monkey.operation(item, amount)
end

function Check(monkey, item)
    test = mod(item, monkey.divisibility) == 0
    throwMonkey = test ? monkey.trueThrow : monkey.falseThrow
    return throwMonkey
end

function main(verbose)
    lines = read("part1.input", String)
    lines = split(lines, "\r\n\r\n")
    
    # Parse monkeys
    monkeys::Vector{Monkey} = []
    for monkey in lines
        args = split(monkey, "\r\n")
        push!(monkeys, Monkey(args))
    end

    roundLimit = 20
    for round in Base.OneTo(roundLimit)
        println("round $round:")
        # Inspect the items
        for monkey in monkeys
            println(monkey)
        end
        for monkey in monkeys
            while length(monkey.items) > 0
                item = pop!(monkey.items)
                item = Inspect(monkey, item)
                item = Relief(item)
                throwMonkey = Check(monkey, item)
                push!(monkeys[throwMonkey+1].items, item)
                monkey.activity += 1
            end
        end
    end
    for monkey in monkeys
        println(monkey)
    end

    acts = sort([monkey.activity for monkey in monkeys], rev=true)[begin:2]
    monkeybiz = acts[1] * acts[2]
    @show monkeybiz
end

@time main(true)
# @time main(false)