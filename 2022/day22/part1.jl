using Logging
using BenchmarkTools
using Profile

@enum Facing Right=1 Down=2 Left=3 Up=4

function TurnLeft(facingdir)
    if facingdir == Right
        return Up
    else
        return Facing(Int(facingdir)-1)
    end
end

function TurnRight(facingdir)
    if facingdir == Up
        return Right
    else
        return Facing(Int(facingdir)+1)
    end
end

function Opposite(facingdir)
    if Int(facingdir) > 2
        return Facing(Int(facingdir)-2)
    else
        return Facing(Int(facingdir)+2)
    end
end

struct TorusTile
    pos::Tuple{Int,Int}
    neighbors::Vector{Union{Nothing,TorusTile}}
    isopen::Bool

    TorusTile(pos, isopen) = new(pos, Vector{Union{Nothing,TorusTile}}(nothing, 4), isopen)
end

function Base.show(io::IO, tt::TorusTile)
    neighborstring = join([isnothing(n) ? "--" : n.pos for n in tt.neighbors], ',')
    print(io, "[$(tt.pos), $(tt.isopen): $(neighborstring)]")
end

function neighborpos(curpos, facing)
    if facing == Up
        return curpos .+ (-1,0)
    elseif facing == Down
        return curpos .+ (1,0)
    elseif facing == Left
        return curpos .+ (0,-1)
    elseif facing == Right
        return curpos .+ (0,1)
    end
end

function wraparound(pos, map, dir)
    (posy,posx) = pos
    # If moving Up/Down, wraparound only in y-axis
    if dir == Up || dir == Down
        if posy == 0
            posy = length(map)
        elseif posy == length(map)+1
            posy = 1
        end
    else
        # @debug curpos, facing, (nby, nbx), length(map[nby])
        # If moving Left/Right, wraparound only in x-axis
        if posx == 0
            posx = length(map[posy])
        elseif posx == length(map[posy])+1
            posx = 1
        end
    end
    return (posy, posx)
end

function getneighbor(curpos, facing, map)
    (nby, nbx) = wraparound(neighborpos(curpos, facing), map, facing)
    if curpos == (8,1)
        @debug "$curpos $facing -> $((nby,nbx))"
    end
    # @debug curpos, facing, (nby,nbx)
    # Wrap around if needed
    while nbx > length(map[nby]) || map[nby][nbx] == ' '
        # Shrinkwrap in past spaces
        (nby,nbx) = wraparound(neighborpos((nby,nbx), facing), map, facing)
        if curpos == (8,1)
            @debug "$curpos $facing -> $((nby,nbx))"
        end
    end
    return (nby,nbx)
end

function parseasint(str)
    return tryparse(Int, str)
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    path = lines[end]
    lines = lines[begin:end-2]
    @debug lines

    tiles = Dict()
    for (rownum, line) in enumerate(lines)
        # @debug line
        for (colnum, val) in enumerate(line)
            if val == ' '
                continue
            end

            # Create this tile if it doesn't exist
            if !haskey(tiles, (rownum,colnum))
                tiles[(rownum,colnum)] = TorusTile((rownum, colnum), lines[rownum][colnum] == '.')
            end
            tile = tiles[(rownum,colnum)]

            for dir in instances(Facing)
                diridx = Int(dir)
                if isnothing(tile.neighbors[diridx])
                    # Create a neighbor tile
                    neighborpos = getneighbor((rownum, colnum), dir, lines)
                    # @debug "neighbor of $((rownum, colnum)) ($dir): $neighborpos"
                    if !haskey(tiles, neighborpos)
                        tiles[neighborpos] = TorusTile(neighborpos, lines[neighborpos[1]][neighborpos[2]] == '.')
                    end
                    neighbor = tiles[neighborpos]
                    tile.neighbors[Int(dir)] = neighbor
                    neighbor.neighbors[Int(Opposite(dir))] = tile
                end
            end
        end
    end
    @debug tiles[(12,9)]
    @debug tiles[(9,16)]
    @debug tiles[(8,1)]
    @debug tiles[(1,12)]

    # Map is parsed - position at start and move along path!
    turns = collect(only.(eachsplit(path,isnumeric, keepempty=false)))
    distances = parseasint.(collect(eachsplit(path,r"[L|R]", keepempty=false)))
    @debug turns, distances
    pos = (1, findfirst(!isequal(' '), lines[1]))
    @debug pos
    facing = Right
    # Assuming the path looks like (move->turn)*->move
    for (distance, turn) in zip(distances, turns)
        for _ in Base.OneTo(distance)
            forwardtile = tiles[pos].neighbors[Int(facing)]
            if !forwardtile.isopen
                break
            end
            pos = forwardtile.pos
        end
        @debug "Move forward for $distance: $pos"
        if turn == 'L'
            newfacing = TurnLeft(facing)
            @debug "Turn left to face $newfacing"
        else
            newfacing = TurnRight(facing)
            @debug "Turn right to face $newfacing"
        end
        facing = newfacing
    end
    for _ in Base.OneTo(last(distances))
        forwardtile = tiles[pos].neighbors[Int(facing)]
        if !forwardtile.isopen
            break
        end
        pos = forwardtile.pos
    end
    @debug "Finally, move forward for $(last(distances)): $pos"

    @debug "Final score: $(1000*pos[1] + 4*pos[2] + Int(facing)-1)"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
# @btime main(Logging.Error)
# @btime main(Logging.Error)
# @profile multi_main(50)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end
