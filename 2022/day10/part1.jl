
function main(verbose)
    lines = readlines("part1.input")
    # lines = split.(lines)
    X = []
    curX = 1
    strength = 0
    # for (instruction, amount) in lines
    for line in lines
        push!(X, curX)
        if length(X) % 40 == 20
            @show length(X), X[end]
            strength += length(X) * X[end]
        end
        if startswith(line, "addx")
            push!(X, curX)
            if length(X) % 40 == 20
                @show length(X), X[end]
                strength += length(X) * X[end]
            end
            amount = rsplit(line, ' ', limit=2)[2]
            curX += tryparse(Int, amount)
        end
    end
    @show X, strength
end

@time main(true)