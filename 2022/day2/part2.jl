using BenchmarkTools # btime

# main() function to avoid global variable headaches, just like python
# plus, now I can time it!
@enum Status win draw lose
const global winDict = Dict("A" => "B", "B" => "C", "C" => "A")
const global loseDict = Dict(value => key for (key, value) in winDict)
const global scoreDict = Dict("A" => 1, "B" => 2, "C" => 3)
const global roundEndScore = Dict(win => 6, draw => 3, lose => 0)
const global parseResult = Dict("X" => lose, "Y" => draw, "Z" => win)

function GetMyHand(theirHand::AbstractString, result::Status)
    if result == win
        winDict[theirHand]
    elseif result == lose
        loseDict[theirHand]
    else
        theirHand
    end
end

function GetRoundResult(myHand::AbstractString, theirHand::AbstractString)
    if myHand == winDict[theirHand]
        win
    elseif myHand == loseDict[theirHand]
        lose
    else
        draw
    end
end

function main()
    rounds = readlines("part1.input")
    totalScore::Int = 0
    for round in rounds
        theirHand, result = split(round, " ")
        parsedResult = parseResult[result]
        myHand = GetMyHand(theirHand, parsedResult)
        status = GetRoundResult(myHand, theirHand)
        println(round, " ", status)
    
        # Tally up score
        score::Int = scoreDict[myHand]
        println("hand score: $score")
        score += roundEndScore[status]
        println(" -> $score")
        totalScore += score
    end
    println("Total score: $totalScore")
end

BenchmarkTools.DEFAULT_PARAMETERS.samples = 1
main()