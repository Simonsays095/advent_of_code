using BenchmarkTools

function main(verbose = true)
    codes = only(readlines("part1.input"))

    for pos in 14:length(codes)
        signal = SubString(codes, pos-13, pos)
        if length(Set(signal)) == 14
            if verbose
                @show pos, signal
            end
            break
        end
    end
end

# This time, build the list element-by-element, and reset it after each duplicate
function main2(verbose = true)
    codes = only(readlines("part1.input"))
    signal_length = 14

    signal_list::Vector{AbstractChar} = Vector()
    for (pos, code) in enumerate(codes)
        if code in signal_list
            # Reset the vector and continue
            while popfirst!(signal_list) != code
                # Keep popping
            end
            push!(signal_list, code)
        else
            # Add the signal and check for the length of the set
            push!(signal_list, code)
            if length(signal_list) == signal_length
                if verbose
                    @show pos, signal_list
                end
                break
            end
        end
    end
end

@time main()
@time main2()
@btime main(false)
@btime main2(false)