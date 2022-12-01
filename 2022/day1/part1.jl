elves = readlines("partA.input")

mostCals = 0
elfCals = 0
for line in elves
    global elfCals, mostCals
    if line == ""
        println("new elf")
        mostCals = max(elfCals, mostCals)
        elfCals = 0
    else
        elfCals += parse(Int, line)
    end
    println("Current cals: $elfCals")
end

println("Most cals: $mostCals")