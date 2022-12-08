using BenchmarkTools

function LeftScore(heightMap, i, j)
    return HorizontalScore(heightMap, i, j, j-1, 1, -1)
end

function RightScore(heightMap, i, j)
    return HorizontalScore(heightMap, i, j, j+1, size(heightMap)[2])
end

function HorizontalScore(heightMap, i, j, start, stop, step=1)
    score = 0
    for other_j in range(start, stop, step=step)
        score += 1
        if heightMap[i, other_j] >= heightMap[i,j]
            break
        end
    end
    return score
end

function UpScore(heightMap, i, j)
    return VerticalScore(heightMap, i, j, i-1, 1, -1)
end

function DownScore(heightMap, i, j)
    return VerticalScore(heightMap, i, j, i+1, size(heightMap)[1])
end

function VerticalScore(heightMap, i, j, start, stop, step=1)
    score = 0
    for other_i in range(start, stop, step=step)
        score += 1
        if heightMap[other_i, j] >= heightMap[i,j]
            break
        end
    end
    return score
end

function main(verbose)
    lines = readlines("part1.input")

    height = length(lines)
    width = length(first(lines))
    if verbose
        @show height, width
    end
    heightMap::Array{Int} = Array{Int}(undef, height, width)
    for (i, row) in enumerate(lines)
        row = split(row, "")
        for (j, val) in enumerate(row)
            heightMap[i,j] = tryparse(Int, val)
        end
    end

    # Check for visibility of each tree
    maxScore = 0
    for i in range(1,height)
        for j in range(1,width)
            score = 1
            treeHeight = heightMap[i,j]
            score *= LeftScore(heightMap, i, j)
            score *= RightScore(heightMap, i, j)
            score *= UpScore(heightMap, i, j)
            score *= DownScore(heightMap, i, j)
            maxScore = max(maxScore, score)
        end
    end
    if verbose
        @show maxScore
    end
end

@time main(true)
@time main(false)
@btime main(false)