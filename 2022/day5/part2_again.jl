using BenchmarkTools

function parseint(var)
    try
        parse(Int, var)
    catch
        -1
    end
end

mutable struct Box
    val::AbstractChar
    down::Union{Nothing, Box}

    Box(x) = new(x, nothing)
end

mutable struct BoxStack
    bottom::Union{Nothing, Box}
    top::Union{Nothing, Box}

    BoxStack() = new(nothing, nothing)
end

function Base.show(io::IO, stack::BoxStack)
    if isnothing(stack.top)
        return "Empty stack"
    end
    box::Box = stack.top
    res::String = string(box.val)
    while !isnothing(box.down)
        box = box.down
        res = string(box.val, res)
    end
    print(io, res)
end

function push!(stack::BoxStack, box::Box)
    if isnothing(stack.bottom)
        stack.bottom = box
    end
    box.down = stack.top
    stack.top = box
end

function concat!(stack::BoxStack, other::BoxStack)
    if !isnothing(stack.top)
        other.bottom.down = stack.top
    end
    if isnothing(stack.bottom)
        stack.bottom = other.bottom
    end
    stack.top = other.top
end

function splitfrom!(stack::BoxStack, numBoxes::Int)
    newStack::BoxStack = BoxStack()
    box::Box = stack.top
    # This is the only O(N) operation left
    for i in Base.OneTo(numBoxes-1)
        box = box.down
    end
    newTop::Box = stack.top
    stack.top = box.down
    push!(newStack, box)
    newStack.top = newTop

    newStack
end

function main()
    lines = readlines("part1.input")

    numStacks = div(length(lines[1])+1,4)

    # Parse the existing stacks
    stacks::Vector{BoxStack} = Vector{BoxStack}(undef, numStacks)
    for i in 1:numStacks
        stacks[i] = BoxStack()
    end

    # Find the bottom of the config lines
    idx::Int = 0
    for line in lines
        idx += 1
        if strip(line)[1] == '1'
            break
        end
    end
    
    # Construct the stacks from the bottom up
    for line in reverse(lines[begin:idx-1])    
        for i in 1:numStacks
            segment = SubString(line, 4(i-1)+1, min(length(line),4i))
            if segment != "    " && segment != "   "
                push!(stacks[i], Box(only(segment[2:2])))
            end
        end
    end
    for stack in stacks
        @show stack
    end

    for line in lines[idx+2:end]
        words = split(line, ' ')[begin+1:2:end]
        moveBoxes, startStack, endStack = map(parseint, words)
        topHalf = splitfrom!(stacks[startStack], moveBoxes)
        concat!(stacks[endStack], topHalf)
    end
    for stack in stacks
        print(stack.top.val)
    end
end

@btime main()