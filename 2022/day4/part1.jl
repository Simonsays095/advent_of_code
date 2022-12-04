
function main()
    lines = readlines("part1.input")

    numSupersets::Int = 0
    for line in lines
        left, right = split(line, ',')
        left = split(left, '-')
        left = [parse(Int,left[1]), parse(Int,left[2])]
        right = split(right, '-')
        right = [parse(Int,right[1]), parse(Int,right[2])]
        if left[1] <= right[1] && left[2] >= right[2]
            numSupersets += 1
        elseif right[1] <= left[1] && right[2] >= left[2]
            numSupersets += 1
        end
    end
    @show numSupersets
end

@time main()