using Logging
using BenchmarkTools
using Profile

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

@enum Status Blocking Landed Settling Settled
function Fall(map, pos, state)
    # Check moving straight down
    if state != Landed
        # Check down
        return Drop(map, pos)
    end
    if map[pos[1]+1, pos[2]-1] == 0
        # Check down+left
        map[pos[1], pos[2]] = 0
        pos[1] += 1
        pos[2] -= 1
        map[pos[1], pos[2]] = 1
        return Settling
    end
    if map[pos[1]+1, pos[2]+1] == 0
        # Check down+right
        map[pos[1], pos[2]] = 0
        pos[1] += 1
        pos[2] += 1
        map[pos[1], pos[2]] = 1
        return Settling
    end
    
    # Something down, down+left, and down+right
    return Settled
end

function Drop(map, pos)
    # dropamount = findfirst(isone, map[pos[1]+1:end,pos[2]])-1
    dropamount = 0
    while map[pos[1]+1+dropamount,pos[2]] == 0
        dropamount += 1
    end
    # dropamount = findfirst(isone, map[pos[1],pos[2]+1:end])-1
    map[pos[1], pos[2]] = 0
    pos[1] += dropamount
    map[pos[1], pos[2]] = 1
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

    # Add the floor to the bounds:
    # y-max +=2
    # x-min = 500-height
    # x-max = 500+height
    boundsY[2] += 2
    boundsX[1] = 500 - (boundsY[2] - boundsY[1])
    boundsX[2] = 500 + (boundsY[2] - boundsY[1])
    @debug boundsX, boundsY

    # Fill with rocks
    map = fill(0, boundsY[2]-boundsY[1]+1, boundsX[2]-boundsX[1]+1)
    # map = fill(0, boundsX[2]-boundsX[1]+1, boundsY[2]-boundsY[1]+1)
    for line in lines
        for (p1, p2) in zip(line[1:end-1], line[2:end])
            width = p2[1] - p1[1]
            height = p2[2] - p1[2]
            offset = [p1[2]-boundsY[1]+1, p1[1]-boundsX[1]+1]
            # offset = [p1[1]-boundsX[1]+1, p1[2]-boundsY[1]+1]
            if width < 0
                width *= -1
                offset[2] = p2[1]-boundsX[1]+1
                # offset[1] = p2[1]-boundsX[1]+1
            end
            if height < 0
                height *= -1
                offset[1] = p2[2]-boundsY[1]+1
                # offset[2] = p2[2]-boundsY[1]+1
            end
            @debug offset, width, height
            @debug p1, p2
            map[offset[1]:offset[1]+height,offset[2]:offset[2]+width] .= 1
            # map[offset[1]:offset[1]+width,offset[2]:offset[2]+height] .= 1
        end
    end

    # Add floor
    # map[:, end] .= 1
    map[end, :] .= 1
    # for line in eachrow(map)
    #     line = join([ x == 0 ? "." : "#" for x in line], "")
    #     @show line
    # end

    # Add sand!
    # sandSpawn = [501, 1] .- [boundsX[1], boundsY[1]]
    sandSpawn = [1, 501] .- [boundsY[1], boundsX[1]]
    numSand = 0
    state = Settling
    while state != Blocking
        # Spawn sand
        curPos = copy(sandSpawn)
        map[curPos[1], curPos[2]] = 1
        state = Settling

        # Let it settle
        while state != Settled
            # @debug curPos
            state = Fall(map, curPos, state)
        end
        if curPos == sandSpawn
            state = Blocking
        end
        numSand += 1
    end
    @info numSand
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
@time main(Logging.Error)
@btime main(Logging.Error)
@time multi_main(300)
@profile multi_main(300)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end