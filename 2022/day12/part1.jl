using BenchmarkTools

function Neighbors(cell, mapHeight, mapWidth)
    neighbors::Vector{Vector{Int}} = []
    # down
    if cell[1] < mapHeight
        push!(neighbors, cell .+ [1, 0])
    end
    # up
    if cell[1] > 1
        push!(neighbors, cell .+ [-1, 0])
    end
    # right
    if cell[2] < mapWidth
        push!(neighbors, cell .+ [0, 1])
    end
    # left
    if cell[2] > 1
        push!(neighbors, cell .+ [0, -1])
    end
    return neighbors
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
    for (rowIdx, line) in enumerate(lines)
        for (colIdx, height) in enumerate(line)
            if height == 'S'
                S = [rowIdx, colIdx]
                heightMap[rowIdx, colIdx] = convert(Int, 'a') - convert(Int, 'a')
                continue
            elseif height == 'E'
                E = [rowIdx, colIdx]
                heightMap[rowIdx, colIdx] = convert(Int, 'z') - convert(Int, 'a')
                continue
            else
                heightMap[rowIdx, colIdx] = convert(Int, height) - convert(Int, 'a')
            end
        end
    end
    if verbose
        @show heightMap
    end

    # Seed all paths
    length_N_paths = Set([[S]])
    existing_destinations = Set([S])

    # Find longer paths that aren't repeats
    finished = false
    final_path = []
    while !finished
        next_paths = Set()
        for path in length_N_paths
            curPos = path[end]
            currentHeight = heightMap[curPos[1], curPos[2]]
            for neighbor in Neighbors(curPos, mapHeight, mapWidth)
                neighborHeight = heightMap[neighbor[1], neighbor[2]]
                if !(neighbor in existing_destinations) && neighborHeight <= currentHeight + 1
                    if neighbor == E
                        finished = true
                        final_path = push!(path, neighbor)
                        break
                    end
                    push!(next_paths, push!(copy(path), neighbor))
                    push!(existing_destinations, neighbor)
                end
            end
            if finished
                break
            end
        end
        length_N_paths = copy(next_paths)
        empty!(next_paths)
    end
    if verbose
        @show final_path
        @show length(final_path)
    end
end

@time main(true)
@time main(false)
@btime main(false)