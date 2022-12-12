using BenchmarkTools
using Profile
using DataStructures

struct NeighborIterator
    pos::Int
    mapHeight::Int
    mapWidth::Int

    NeighborIterator(p, h, w) = new(p, h, w)
end

Base.iterate(ni::NeighborIterator) = Base.iterate(ni, 0)
function Base.iterate(ni::NeighborIterator, dir)
    if dir < 1 && ni.pos < (ni.mapHeight - 1) * ni.mapWidth
        # down
        return ni.pos + ni.mapWidth, 1
    elseif dir < 2 && ni.pos > ni.mapWidth
        # up
        return ni.pos - ni.mapWidth, 2
    elseif dir < 3 && mod1(ni.pos, ni.mapWidth) < ni.mapWidth - 1
        # right
        return ni.pos + 1, 3
    elseif dir < 4 && mod1(ni.pos, ni.mapWidth) > 1
        # left
        return ni.pos - 1, 4
    end
    return nothing
end

function main(verbose)
    lines = readlines("part1.input")
    mapHeight = size(lines, 1)
    mapWidth = length(first(lines))
    if verbose
        @show mapHeight, mapWidth
    end

    # Find start/end positions, and convert char to int
    heightMap = Matrix{Int}(undef, mapHeight, mapWidth)
    S = nothing
    E = nothing
    for idx in eachindex(heightMap)
        height = lines[div(idx-1, mapWidth)+1][mod1(idx, mapWidth)]
        if height == 'S'
            S = idx
            heightMap[idx] = 0
            continue
        elseif height == 'E'
            E = idx
            heightMap[idx] = 25
            continue
        else
            heightMap[idx] = convert(Int, height) - convert(Int, 'a')
        end
    end
    if verbose
        @show heightMap
    end

    startingPos = []
    for idx in eachindex(heightMap)
        if heightMap[idx] == 0
            push!(startingPos, idx)
        end
    end
    
    # Seed all paths
    paths = Queue{Tuple{Int,Int}}()
    for pos in startingPos
        enqueue!(paths, (pos, 1))
    end
    visited = fill(false, mapHeight, mapWidth)

    # Find longer paths that aren't repeats
    finished = false
    final_path = []
    while !finished
        curPos, pathLength = dequeue!(paths)
        currentHeight = heightMap[curPos]
        for neighbor in NeighborIterator(curPos, mapHeight, mapWidth)
            neighborHeight = heightMap[neighbor]
            if !(visited[neighbor]) && neighborHeight <= currentHeight + 1
                if neighbor == E
                    finished = true
                    final_path = (neighbor, pathLength+1)
                    break
                end
                enqueue!(paths, (neighbor, pathLength+1))
                visited[neighbor] = true
            end
        end
        if finished
            break
        end
    end
    if verbose
        @show final_path
        @show length(final_path)
    end
end

function multi_main(num)
    for _ in Base.OneTo(num)
        main(false)
    end
end

@time main(true)
@time main(false)
@btime main(false)
@time multi_main(60000)
@profile multi_main(60000)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end