using Logging
using BenchmarkTools

function ParseLine(str::AbstractString)
    function ParseAsInt(str::AbstractString)
        return tryparse(Int, str)
    end
    function SplitOnComma(str)
        return ParseAsInt.(split(str, ','))
    end
    str = split(str, " -> ")
    return SplitOnComma.(str)
end

@enum Status Forever Landed Settling
function Fall(map, pos)
    # Edge case: in final y-level of map
    if pos[2] == size(map, 2)
        return Forever
    end
    # Check moving straight down
    if map[pos[1], pos[2]+1] == 0
        # Check down
        map[pos[1], pos[2]+1] = 1
        map[pos[1], pos[2]] = 0
        pos[2] += 1
        return Settling
    end
    
    # Edge case: in left x-level of map
    if pos[1] == 1
        return Forever
    end
    if map[pos[1]-1, pos[2]+1] == 0
        # Check down+left
        map[pos[1]-1, pos[2]+1] = 1
        map[pos[1], pos[2]] = 0
        pos .+= [-1, 1]
        return Settling
    end
    
    # Edge case: in right x-level of map
    if pos[1] == size(map, 1)
        return Forever
    end
    if map[pos[1]+1, pos[2]+1] == 0
        # Check down+right
        map[pos[1]+1, pos[2]+1] = 1
        map[pos[1], pos[2]] = 0
        pos .+= [1, 1]
        return Settling
    end
    
    # Something down, down+left, and down+right
    return Landed
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    lines = ParseLine.(lines)
    @debug lines


    # Parse the bounds
    boundsX = [typemax(Int), typemin(Int)]
    boundsY = [0, typemin(Int)]
    for line in lines
        for point in line
            boundsX[1] = min(boundsX[1], point[1])
            boundsX[2] = max(boundsX[2], point[1])
            # boundsY[1] = min(boundsY[1], point[2])
            boundsY[2] = max(boundsY[2], point[2])
        end
    end
    @debug boundsX, boundsY

    # Fill with rocks
    map = fill(0, boundsX[2]-boundsX[1]+1, boundsY[2]-boundsY[1]+1)
    for line in lines
        for (p1, p2) in zip(line[1:end-1], line[2:end])
            width = p2[1] - p1[1]
            height = p2[2] - p1[2]
            offset = [p1[1]-boundsX[1]+1, p1[2]-boundsY[1]+1]
            if width < 0
                width *= -1
                offset[1] = p2[1]-boundsX[1]+1
            end
            if height < 0
                height *= -1
                offset[2] = p2[2]-boundsY[1]+1
            end
            @debug offset, width, height
            @debug p1, p2
            map[offset[1]:offset[1]+width,offset[2]:offset[2]+height] .= 1
        end
    end
    for line in eachrow(map)
        @debug line
    end

    # Add sand!
    sandSpawn = [501, 1] .- [boundsX[1], boundsY[1]]
    numSand = 0
    state = Settling
    while state != Forever
        # Spawn sand
        curPos = copy(sandSpawn)
        map[curPos[1], curPos[2]] = 1
        state = Settling
        @debug map

        # Let it settle
        while state == Settling
            state = Fall(map, curPos)
            @debug "step", state, curPos, sandSpawn
            for line in eachrow(map)
                @debug line
            end
        end
        numSand += 1
    end
    @info numSand-1
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Info)
@time main(Logging.Error)
# @btime main(Logging.Error)