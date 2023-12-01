using Logging
using BenchmarkTools
using Profile

struct RockFormation
    blocks::Vector{Tuple{Int,Int}}
    origin::Vector{Int}
    height::Int

    RockFormation(coords) = new(coords, [0,0])
    RockFormation(coords, origin, height) = new(coords, origin, height)
end

function RockFormation(coords, origin)
    height = 0
    for block in coords
        height = max(block[2], height)
    end
    return RockFormation(coords, origin, height+1)
end

function Base.copy(rf::RockFormation)
    return RockFormation(copy(rf.blocks), rf.origin)
end

function trypush!(rock, others, delta, walls)
    canmove = true
    tryorigin = rock.origin[1] + delta
    for block in rock.blocks
        # check for wall collision
        tryx = block[1] + tryorigin
        y = block[2] + rock.origin[2]
        if tryx < walls[1] || tryx > walls[2]
            @debug "wall hit"
            canmove = false
            break
        end
        # check for block collision
        for other in others
            if tryx == other[1] && y == other[2]
                @debug "block hit"
                canmove = false
                break
            end
        end
        if !canmove
            break
        end
    end
    @debug "jet canmove $delta: $canmove"

    if canmove
        rock.origin[1] = tryorigin
    end
end

function tryfall!(rock, otherblocks, miny)
    tryorigin = rock.origin[2]-1
    # Check for collision with floor
    if tryorigin < miny
        return false
    end

    # Check for collision with other blocks
    canmove = true
    for block in rock.blocks
        tryy = block[2] + tryorigin
        x = block[1] + rock.origin[1]
        for other in otherblocks
            # @debug "try [$x, $tryy] vs other $(other)"
            if tryy == other[2] && x == other[1]
                canmove = false
                break
            end
        end
        if !canmove
            break
        end
    end
    @debug "fall canmove: $canmove"

    if canmove
        rock.origin[2] = tryorigin
    end
    return canmove
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    jets = read("part1.input", String)
    @debug jets
    jetsize = length(jets)

    # Translate <> to +/-1
    jets = [x == '>' ? 1 : -1 for x in jets]
    @debug jets
    
    # Encode possible rock formations
    formations = Vector{RockFormation}(undef, 5)
    formations[1] = RockFormation([(0,0), (1,0), (2,0), (3,0)])
    formations[2] = RockFormation([(1,0), (0,1), (1,1), (2,1), (1,2)])
    formations[3] = RockFormation([(0,0), (1,0), (2,0), (2,1), (2,2)])
    formations[4] = RockFormation([(0,0), (0,1), (0,2), (0,3)])
    formations[5] = RockFormation([(0,0), (0,1), (1,0), (1,1)])

    SCREEN_SIZE = [0,6]
    # MAX_ROCKS = 500000
    MAX_ROCKS = 1000000000000

    rockNum = 0
    jetidx = 1
    blocks::Vector{Tuple{Int,Int}} = []
    # Simulate rocks falling
    highest_block = 0
    numloops = 3
    maxfall = 0
    lastnum = 0
    lastheight = 0
    while rockNum < MAX_ROCKS
        # @info length(blocks), maxfall
        # @info "top"
        # Pick a new rock
        rock = copy(formations[mod(rockNum, 5)+1])
        rockNum += 1

        # Place it (origin in bottom-left):
        # - left block 2 from left wall
        # - bottom block 3 from topmost existing block
        rock.origin[1] = 2
        rock.origin[2] = highest_block + 3
        @debug "start: $rock"
        @debug "blocks: $blocks"

        islanded = false
        fallingfor = 0
        while !islanded
            # Gas jet
            trypush!(rock, blocks, jets[jetidx], SCREEN_SIZE)
            # @debug rock
            jetidx = mod1(jetidx+1, jetsize)
            # if jetidx == 1 @show rockNum end
            if mod(rockNum, 5) == 1 && jetidx == 1
                highest = max(highest_block, rock.origin[2] + rock.height)
                @warn "Looped: $rockNum / $jetidx: $highest"
                @info length(blocks), maxfall
                lastnum = rockNum
                lastheight = highest
                numloops -= 1
                # @warn blocks

                # Print out last 10 rows
                printarray = fill('.', SCREEN_SIZE[2]+1, 10)
                for block in rock.blocks
                    printarray[block[1]+1+rock.origin[1], highest - block[2] - rock.origin[2] + 1 ] = '@'
                end
                for block in blocks
                    if highest - block[2] < 10
                        printarray[block[1]+1, highest - block[2] + 1 ] = '#'
                    end
                end
                for row in eachrow(printarray)
                    @info join(row, "")
                end
            end

            # fall
            islanded = !tryfall!(rock, blocks, 0)
            if numloops == 0 break end
            @debug rock
            fallingfor += 1
            maxfall = max(maxfall, fallingfor)
            # if fallingfor > 7 @show fallingfor, maxfall, rock.origin end
        end
        @debug "end: $rock"
        for block in rock.blocks
            push!(blocks, Tuple(block .+ rock.origin))
        end
        # union!(blocks, [Tuple(block .+ rock.origin) for block in rock.blocks])
        highest_block = max(highest_block, rock.origin[2] + rock.height)
        @debug highest_block
        if numloops == 1 && 1500 < rockNum-lastnum < 1600 @info rockNum-lastnum, highest_block-lastheight end
        
        if mod(rockNum, 50) == 0
            # Cull blocks
            filter!(block->highest_block - block[2] < 54, blocks)
        end
        if numloops == 0 break end
    end
    @info highest_block
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Info)
@time main(Logging.Error)
# @btime main(Logging.Error)
# @profile main(Logging.Error)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end

# Looping data:
# rocks: 17266 -> 18991 (1725)
# height: 26613 -> 29272 (2659)
# --> 1,000,000,000,000 - 18991 = 999,999,981,009 rocks left
# --> 999999981009 / 1725 = 579,710,133 (plus frac) cycles
# --> 579,710,133 * 2659 = 1,541,449,243,647 height gained in that time
# ----> at rock 18991 + 579,710,133 * 1725 = 999,999,998,416
# ----> have height 29272 + 579,710,133 * 2659 = 1,541,449,272,919

# Just need to figure out the additional height after another 1584 rocks
# (rockNum - lastnum, highest_block - lastheight) = (1584, 2446)
# Final height: 1,541,449,272,919 + 2444 = 1,514,285,714,288

# too low  1,541,449,275,363
# too high 1,541,449,312,612