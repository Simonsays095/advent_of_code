using Logging
using BenchmarkTools
using Profile

function parseasint(str)
    return tryparse(Int, str)
end

mutable struct Elf
    position::Tuple{Int, Int}
    queuedPosition::Tuple{Int, Int}

    Elf(pos) = new(pos, pos)
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    lines = readlines("part1.input")
    lines = reduce(vcat,permutedims.(collect.(lines)))
    # @debug lines, lines[[2,1]]
    # @debug typeof(lines)

    elves = Set()
    for iter in eachindex(lines)
        if lines[iter] == '#'
            idx = Tuple(CartesianIndices(lines)[iter])
            push!(elves, Elf(idx))
        end
    end
    # @debug elves
    elfpos = [elf.position for elf in elves]

    moveset = [
        ([(-1,-1),(-1,0),(-1,1),(0,-1),(0,1),(1,-1),(1,0),(1,1)], (0,0)),
        ([(-1,1),(-1,0),(-1,-1)], (-1,0)),
        ([(1,-1),(1,0),(1,1)], (1,0)),
        ([(-1,-1),(0,-1),(1,-1)], (0,-1)),
        ([(1,1),(0,1),(-1,1)], (0,1))
    ]

    num_rounds = -1
    # while num_rounds > 0
    #     num_rounds -= 1
    elfmoved = true
    while elfmoved
        num_rounds += 1
        @info "Current round: $num_rounds"
        elfmoved = false
        # Queue up moves
        # @debug "Move priority: $moveset"
        for elf in elves
            elf.queuedPosition = elf.position # No movement
            for (empties, delta) in moveset
                allempty = true
                for emptypos in empties
                    newpos = elf.position .+ emptypos
                    if newpos in elfpos
                        # @debug "found neighbor elf at $newpos"
                        allempty = false
                        break
                    end
                end
                if !allempty
                    continue
                end
                # Can make this move - queue it up!
                elf.queuedPosition = elf.position .+ delta
                break
            end
            # @debug "elf at $(elf.position) queued to move to $(elf.queuedPosition)"
        end

        # Determine moves that are invalid
        invalidmoves = Set()
        validmoves = Set()
        for elf in elves
            if elf.queuedPosition in invalidmoves
                continue
            end
            if elf.queuedPosition in validmoves
                delete!(validmoves, elf.queuedPosition)
                push!(invalidmoves, elf.queuedPosition)
            else
                push!(validmoves, elf.queuedPosition)
            end
        end

        # Move if not invalid
        for elf in elves
            if !(elf.queuedPosition in invalidmoves)
                if elf.queuedPosition != elf.position
                    elfmoved = true
                end
                elf.position = elf.queuedPosition
            end
        end
        elfpos = [elf.position for elf in elves]

        # Rotate moveset
        # @debug moveset
        push!(moveset, popat!(moveset, 2))
        # @debug moveset
        
        # @debug "Elves with $num_rounds rounds remaining:"
        # xbounds = extrema([elf.position[2] for elf in elves])
        # ybounds = extrema([elf.position[1] for elf in elves])
        # @show xbounds, ybounds
        # elfmap = fill('.', ybounds[2]-ybounds[1]+1, xbounds[2]-xbounds[1]+1)
        # for elf in elves
        #     elfmap[CartesianIndex(elf.position .- (ybounds[1]-1, xbounds[1]-1))] = '#'
        #     # @debug elf.position
        # end
        # for row in eachrow(elfmap)
        #     println(join(row))
        # end
        # @debug elves
    end

    # Compute region
    xbounds = extrema([elf.position[2] for elf in elves])
    ybounds = extrema([elf.position[1] for elf in elves])
    @info "region size: $((xbounds[2]-xbounds[1]+1)*(ybounds[2]-ybounds[1]+1))"
    @info "score: $((xbounds[2]-xbounds[1]+1)*(ybounds[2]-ybounds[1]+1) - length(elves))"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Info)
# @btime main(Logging.Error)
# @btime main(Logging.Error)
# @profile multi_main(50)
# open("part2.profile", "w") do s
#     Profile.print(IOContext(s, :displaysize => (24, 500)))
# end
