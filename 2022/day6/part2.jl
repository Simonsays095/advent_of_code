
function main()
    codes = only(readlines("part1.input"))

    for pos in 14:length(codes)
        signal = SubString(codes, pos-13, pos)
        if length(Set(signal)) == 14
            @show pos, signal
            break
        end
    end
end

@time main()