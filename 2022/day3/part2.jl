
function main()
    lines = readlines("part1.input")

    totalPriority::Int = 0
    idx::Int = 0
    bags::Vector{AbstractString} = ["" for _ in 1:3]
    for line in lines
        idx += 1
        bags[mod1(idx,3)] = line
        if (mod1(idx,3) == 3)
            common = intersect(bags[1], bags[2], bags[3])[1]
            @show common
            if (isuppercase(common))
                priority = Int(common) - Int('A') + 27
            else
                priority = Int(common) - Int('a') + 1
            end
            totalPriority += priority
        end
    end
    @show totalPriority
end

@time main()