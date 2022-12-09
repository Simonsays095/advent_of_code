
deltaParse = Dict(
    "U" => [0,1],
    "R" => [1,0],
    "D" => [0,-1],
    "L" => [-1,0]
)

function touching(delta)
    return -2 < delta[1] < 2 && -2 < delta[2] < 2
end

function MoveTail(delta)
    @show (sign).(delta)
    return (sign).(delta)
end

function main(verbose)
    lines = readlines("part1.input")

    visited = Set()
    head=[0,0]
    tail=[0,0]
    for line in lines
        dir, amount = split(line, " ")
        amount = tryparse(Int, amount)
        @show dir, deltaParse[dir], amount
        for i in Base.OneTo(amount)
            head .+= deltaParse[dir]
            delta = head .- tail

            if !touching(delta)
                tail .+= MoveTail(head .- tail)
            end
            @show head, tail
            push!(visited, copy(tail))
        end
    end
    @show length(visited)
    @show visited
end

@time main(true)
@time main(false)