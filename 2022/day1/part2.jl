elves = readlines("partA.input")

mostCals = zeros(3)
println(mostCals)
elfCals::Int = 0
for line in elves
    global elfCals, mostCals
    if line == ""
        println("new elf")
        for i in 1:3
            if elfCals > mostCals[i]
                tmp = mostCals[i]
                mostCals[i] = elfCals
                elfCals = tmp
            end
        end
        elfCals = 0
    else
        elfCals += parse(Int, line)
    end
    println("Current cals: $elfCals")
end

println("last elf")
for i in 1:3
    global elfCals
    if elfCals > mostCals[i]
        tmp = mostCals[i]
        mostCals[i] = elfCals
        elfCals = tmp
    end
end

println("Most cals: $mostCals")
println("combined: $(sum(mostCals))")