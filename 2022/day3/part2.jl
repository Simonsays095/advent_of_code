using IterTools

function main()
    lines = readlines("part1.input")
    scoring = merge(
        Dict(n => Int(n)-Int('a')+1 for n in 'a':'z'),
        Dict(n => Int(n)-Int('A')+27 for n in 'A':'Z')
    )

    totalPriority::Int = 0
    for (l1, l2, l3) in IterTools.partition(lines, 3)
        common = only(intersect(l1, l2, l3))
        totalPriority += get(scoring, common, 0)
    end
    @show totalPriority
end

@time main()