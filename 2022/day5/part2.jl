using DataStructures

function parseint(var)
    try
        parse(Int, var)
    catch
        -1
    end
end

function main()
    lines = readlines("part1.input")

    numStacks = div(length(lines[1])+1,4)

    # Parse the existing stacks
    stacks::Vector{Stack{AbstractChar}} = Vector{Stack{AbstractChar}}(undef, numStacks)
    for i in 1:numStacks
        stacks[i] = Stack{AbstractChar}()
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
                push!(stacks[i], only(segment[2:2]))
            end
        end
    end

    for line in lines[idx+2:end]
        # move <numStacks> from <startStack> to <endStack>
        words = split(line, ' ')
        _, moveBoxes, _, startStack, _, endStack = map(parseint, words)
        numBoxes = length(stacks[startStack])
        # pop into tmp stack
        tmpStack::Stack{AbstractChar} = Stack{AbstractChar}()
        for i in 1:moveBoxes
            box = pop!(stacks[startStack])
            push!(tmpStack, box)
        end
        # push into correct stack (to reverse order)
        for i in 1:moveBoxes
            push!(stacks[endStack], pop!(tmpStack))
        end
    end
    for stack in stacks
        @show first(stack)
    end
end

@time main()