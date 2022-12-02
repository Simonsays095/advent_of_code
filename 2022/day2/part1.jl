using BenchmarkTools # btime

# main() function to avoid global variable headaches, just like python
# plus, now I can time it!
const global winDict = Dict("A" => "Y", "B" => "Z", "C" => "X")
const global loseDict = Dict("A" => "Z", "B" => "X", "C" => "Y")
const global scoreDict = Dict("X" => 1, "Y" => 2, "Z" => 3)

@enum Status win draw lose
function RoundEndScore(status::Status)
    score::Int = 0
    if status == win
        score = 6
    elseif status == draw
        score = 3
    end
    score
end

function GetRoundResult(myHand::AbstractString, theirHand::AbstractString)
    result::Status = draw
    if myHand == winDict[theirHand]
        result = win
    elseif myHand == loseDict[theirHand]
        result = lose
    end
    result
end

function main()
    rounds = readlines("part1.input")
    totalScore::Int = 0
    for round in rounds
        theirHand, myHand = split(round, " ")
        status = GetRoundResult(myHand, theirHand)
        println(round, " ", status)
    
        # Tally up score
        score::Int = scoreDict[myHand]
        println("hand score: $score")
        score += RoundEndScore(status)
        println(" -> $score")
        totalScore += score
    end
    println("Total score: $totalScore")
end

BenchmarkTools.DEFAULT_PARAMETERS.samples = 1
main()