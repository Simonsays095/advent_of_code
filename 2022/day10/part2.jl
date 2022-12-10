using BenchmarkTools

function main(verbose)
    lines = readlines("part1.input")
    # lines = split.(lines)
    X = [1]
    curX = 1
    strength = 0
    CRT_pos = 0
    screen = fill('.', 6, 40)
    # for (instruction, amount) in lines
    for line in lines
        # Start of cycle: Draw pixel and advance pointer
        if abs((CRT_pos%40) - X[end]) < 2
            screen[div(CRT_pos, 40)+1, mod(CRT_pos, 40)+1] = '#'
        end
        CRT_pos += 1

        # During cycle: Do instruction
        if startswith(line, "addx")
            # End current cycle
            push!(X, curX)

            # Start next cycle
            if abs((CRT_pos%40) - X[end]) < 2
                screen[div(CRT_pos, 40)+1, mod(CRT_pos, 40)+1] = '#'
            end
            CRT_pos += 1

            # Do instruction (2nd half)
            amount = rsplit(line, ' ', limit=2)[2]
            curX += tryparse(Int, amount)
        end
        
        # End cycle
        push!(X, curX)
    end
    if verbose
        for row in eachrow(screen)
            println(row)
        end
    end
end

@time main(true)
@time main(false)
@btime main(false)