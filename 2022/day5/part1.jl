
struct BoxStack
    boxes::Vector{AbstractChar}

    BoxStack() = new(AbstractChar[])
end

function main()
    lines = readlines("part1.input")

    numStacks = div(length(lines[1])+1,4)
    @show numStacks

    # Parse the existing stacks
    stacks::Vector{BoxStack} = Vector{BoxStack}(undef, numStacks)
    for i in 1:numStacks
        stacks[i] = BoxStack()
    end
    idx::Int = 0
    for line in lines
        idx += 1
        # Check for end of config
        if strip(line)[1] == '1'
            break
        end

        for i in 1:numStacks
            segment = SubString(line, 4(i-1)+1, min(length(line),4i))
            if segment != "    " && segment != "   "
                pushfirst!(stacks[i].boxes, only(segment[2:2]))
                @show i, stacks[i].boxes, segment
            end
        end
    end
    @show stacks

    for line in lines[idx+2:end]
        # move <numStacks> from <startStack> to <endStack>
        words = split(line, ' ')
        moveBoxes = parse(Int, words[2])
        startStack = parse(Int, words[4])
        endStack = parse(Int, words[6])
        @show moveBoxes, startStack, endStack
        for i in 1:moveBoxes
            box = pop!(stacks[startStack].boxes)
            push!(stacks[endStack].boxes, box)
        end
    end
    @show stacks
    for stack in stacks
        @show stack.boxes[end]
    end
end

@time main()