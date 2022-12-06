
function main()
    codes = only(readlines("part1.input"))

    for pos in 4:length(codes)
        signal = SubString(codes, pos-3, pos)
        if length(Set(signal)) == 4
            @show pos, signal
            break
        end
    end
end

@time main()