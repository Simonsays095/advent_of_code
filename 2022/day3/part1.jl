
function main()
    lines = readlines("part1.input")

    totalPriority::Int = 0
    for line in lines
        numItems = length(line)
        leftSide = line[1:div(numItems,2)]
        rightSide = line[div(numItems,2)+1:end]
        @show numItems, leftSide, rightSide
        common = intersect(leftSide, rightSide)[1]
        if (isuppercase(common))
            priority = Int(common) - Int('A') + 27
        else
            priority = Int(common) - Int('a') + 1
        end
        @show common, priority
        totalPriority += priority
    end
    @show totalPriority
end

@time main()