using BenchmarkTools
using Profile

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
    # return [sign(delta[1]), sign(delta[2])]
    return (sign).(delta)
end

function main(verbose)
    lines = readlines("part1.input")
    lines = split.(lines)

    visited = Set()
    NUM_KNOTS = 10
    knots = zeros(Int, NUM_KNOTS, 2)
    for (dir, amount) in lines
        amount = tryparse(Int, amount)
        for _ in Base.OneTo(amount)
            knots[1, 1] += deltaParse[dir][1]
            knots[1, 2] += deltaParse[dir][2]
            delta = Array{Int, 1}(undef, 2)
            for i = 2:NUM_KNOTS
                delta[1] = knots[i-1, 1] - knots[i, 1]
                delta[2] = knots[i-1, 2] - knots[i, 2]
    
                if touching(delta)
                    break
                else
                    move = MoveTail(delta)
                    knots[i, 1] += move[1]
                    knots[i, 2] += move[2]
                end
            end
            push!(visited, copy(knots[end, :]))
        end
    end
    if verbose
        @show length(visited)
    end
end

function multi_main(nums)
    for _ in Base.OneTo(nums)
        main(false)
    end
end
@time main(true)
@time main(false)
@btime main(false)
@time multi_main(5000)
@profile multi_main(5000)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end