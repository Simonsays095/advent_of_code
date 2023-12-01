using Logging
using BenchmarkTools
using Profile

@enum Resource Ore=1 Clay=2 Obsidian=3 Geode=4
struct Robot
    costs::Dict{Resource, Int}
    produces::Resource
end

function parseline(line)
    bpid = tryparse(Int, replace(line[2], r":"=>""))
    orecost = tryparse(Int, line[7])
    claycost = tryparse(Int, line[13])
    obsorecost = tryparse(Int, line[19])
    obsclaycost = tryparse(Int, line[22])
    geodeorecost = tryparse(Int, line[28])
    geodeobscost = tryparse(Int, line[31])

    orebot = Robot(Dict(Ore=>orecost), Ore)
    claybot = Robot(Dict(Ore=>claycost), Clay)
    obsbot = Robot(Dict(Ore=>obsorecost, Clay=>obsclaycost), Obsidian)
    geodebot = Robot(Dict(Ore=>geodeorecost, Obsidian=>geodeobscost), Geode)

    # order: Resources enum
    return bpid, [orebot, claybot, obsbot, geodebot]
end

function makebot(bots, resources, makeresid, botbps)
    newbots = copy(bots)
    newres = copy(resources)
    # Spend the resource costs
    for (spendres, cost) in botbps[makeresid].costs
        spendresid = Int(spendres)
        newres[spendresid] -= cost
    end

    # Increase bot count
    newbots[makeresid] += 1
    return newbots, newres
end

function collectresources(bots, resources)
    newres = copy(resources)
    for idx in Base.OneTo(length(newres))
        newres[idx] += bots[idx]
    end
    return newres
end

function calcscore(id, geodes)
    return id * geodes
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    blueprints = readlines("part1.input")
    blueprints = split.(blueprints)
    @debug blueprints
    blueprints = parseline.(blueprints)
    @debug blueprints
    sort!(blueprints, by= x->x[2][1].costs[Ore])
    blueprints = [blueprints[1]]
    blueprints[1] = (1, first(blueprints)[2])
    @debug blueprints
    numbps = length(blueprints)
    numresources = length(instances(Resource))

    # Simulate each bp, keeping track of the best one
    MAX_TIME = 24
    best_score = 0
    score_sum = 0
    num_checked = 0
    # num_skipped = 0
    heuristics = [0, 0]


    # Compute maximum ore at any given time
    # orecost = [ bp[2][1].costs[Ore] for bp in blueprints]
    # @debug orecost
    maxresources = zeros(numbps, numresources, MAX_TIME+1)
    # For each blueprint
    for (bpid, bots) in blueprints
        @debug "Blueprint $bpid"
        # Compute the maximum of each resource across time
        # for resource in instances(Resource)
        for resource in [Ore]
            @debug " -- resource: $resource"
            # For this resource, get the costs
            resid = Int(resource)
            costs = bots[resid].costs

            # Simulate + accumulate through time
            resources = 0
            numbots = resource == Ore ? 1 : 0
            states = [(MAX_TIME, resources, numbots)]
            while length(states) > 0
                state = pop!(states)
                (timeremaining, resources, numbots) = state

                if timeremaining >= 18
                    @debug MAX_TIME - timeremaining, state
                end

                if timeremaining == 0
                    continue
                end
                # Accumulate into array
                # if timeremaining < MAX_TIME
                    # maxore[bpid, timeremaining+1] = max(maxore[bpid, timeremaining+1], ore)
                    # maxresources[bpid, resid, timeremaining] = max(maxresources[bpid, resid, timeremaining], resources)
                # end

                # Only question: buy a bot or not?
                canbuy = true
                for (spendres, cost) in costs
                    spendresid = Int(spendres)
                    if spendres == resource
                        # This bot costs the resource it produces to create - keep track of current state
                        if cost > resources
                            canbuy = false
                            break
                        end
                    else
                        # This bot is normal
                        # Cost is increased by the cost of the bots up to this point (except for the first one)
                        if cost * numbots > maxresources[bpid, spendresid, timeremaining+1]
                            canbuy = false
                            break
                        end
                    end
                end
                if canbuy
                # if ore > cost[Ore]
                    thisrescost = sum([res == resource ? cost : 0 for (res, cost) in costs])
                    push!(states, (timeremaining-1, resources-thisrescost+numbots, numbots+1))
                    # push!(states, (timeremaining-1, ore-cost[Ore]+orebots, orebots+1))
                    maxresources[bpid, resid, timeremaining] = max(maxresources[bpid, resid, timeremaining], resources-thisrescost+numbots)
                end
                # push!(states, (timeremaining-1, ore+orebots, orebots))
                push!(states, (timeremaining-1, resources+numbots, numbots))
                maxresources[bpid, resid, timeremaining] = max(maxresources[bpid, resid, timeremaining], resources+numbots)
            end
            @debug maxresources[bpid, resid, :]
        end
    end
    # for bp in Base.OneTo(numbps)
    #     @debug "Blueprint $bp"
    #     for resource in eachrow(maxresources[bp,:,:])
    #     end
    # end
    # @debug orecost
    exit()

    for (bpid, botbps) in blueprints
        @info "Blueprint $bpid: $botbps"
        curtime = MAX_TIME
        resources = [0, 0, 0, 0] # order: Resources enum
        bots = [1, 0, 0, 0] # order: Resources enum
        bpscore = 0

        # Cache the most you can spend per resource per turn
        maxspend = zeros(numresources)
        for bot in botbps
            for (res, cost) in bot.costs
                resid = Int(res)
                maxspend[resid] = max(maxspend[resid], cost)
            end
        end
        maxspend[Int(Geode)] = typemax(Int) # ALWAYS make geode bots
        @info maxspend

        state = [(curtime, resources, bots)]
        idx = 0
        while length(state) > 0
            (curtime, resources, bots) = pop!(state)
            idx += 1
            if mod(idx, 1000000) == 0
                @warn "checkpoint: score $bpscore, numstates $(length(state)), checked $num_checked / saved dts $heuristics"
                @warn (curtime, resources, bots)
            end
            # @debug "start state: $((MAX_TIME - curtime + 1, resources, bots))"
            if curtime == 0
                # Finish it out!
                @info "Finished checking: $((MAX_TIME - curtime + 1, resources, bots))"
                score = calcscore(bpid, resources[end])
                if score > bpscore
                    @warn "score: $bpscore -> $score... $(length(state)), $num_checked / $heuristics"
                    @info (curtime, resources, bots)
                    bpscore = score
                end
                num_checked += 1
                continue
            end
            if curtime < 0
                @error (MAX_TIME - curtime + 1, resources, bots)
                exit()
            end

            # Heuristic: If you made a geode bot every minute until the end, could you beat the high score?
            # ore increases by bots[ore] now, and possibly more by the end
            # res[1](1) = res[1](0) + bots[1](0)
            # res[2](1) = res[2](0) + bots[2](0) + (res[3](0) > cost[3] ? -cost[3] : 0)
            # bots[1](1) = bots[1](0) + (res[2](0) > cost[2] ? 1 : 0)
            # bots[2](1) = bots[2](0) + (res[3](0) > cost[3] ? 1 : 0)

            # If we assume we can always make a geode bot (res[2](t) > cost[2]):
            # bots[1](1) = bots[1](0) + 1
            # bots[1](2) = bots[1](0) + 2 ... 
            # res[1](t) = res[1](0) + t * bots[1](0) + t(t+1)/2

            # If we assume we can always make the bot needed for a geode bot (res[3](t) > cost[3]):
            # res[1](1) = res[1](0) + bots[1](0)
            # res[2](1) = res[2](0) + bots[2](0) - cost[3]
            # bots[1](1) = bots[1](0) + (res[2](0) > cost[2] ? 1 : 0)
            # bots[2](1) = bots[2](0) + 1
            
            # res[1](2) = res[1](0) + 2*bots[1](0) + (res[2](0) > cost[2] ? 1 : 0)
            # res[2](2) = res[2](0) + 2*bots[2](0) - 2*cost[3] + 1
            # bots[1](2) = bots[1](0) + (res[2](0) > cost[2] ? 1 : 0) + (res[2](1) > cost[2] ? 1 : 0)
            # bots[2](2) = bots[2](0) + 2
            geodeid = Int(Geode)
            maxgeodes = resources[geodeid] + curtime*bots[geodeid] + curtime*(curtime-1)/2
            maxscore = calcscore(bpid, maxgeodes)
            if maxscore <= bpscore
                # num_skipped += curtime
                heuristics[1] += curtime
                continue
            end

            # Check what your options are:
            # 1) Make 1 of any of the bots
            # (Usually later resources are better to make if possible, push those later)
            # for resource in Iterators.Reverse(instances(Resource))
            madeabot = false
            for resource in instances(Resource)
                resid = Int(resource)
                # Check if making another bot of this resource would even help
                if bots[resid] > maxspend[resid]
                    # @info "Skipping a $resource case due to lack of demand: $(bots[resid]) / $(maxspend[resid])"
                    # num_skipped += curtime
                    heuristics[2] += curtime
                    continue
                end
                # Check if we can make a bot that makes this resource
                canmake = true
                for (spendres, cost) in botbps[resid].costs
                    spendresid = Int(spendres)
                    if resources[spendresid] < cost
                        # Can't make this bot!
                        canmake = false
                        break
                    end
                end
                
                if canmake
                    newbots, newres = makebot(bots, resources, resid, botbps)
                    newres = collectresources(bots, newres)
                    push!(state, (curtime-1, newres, newbots))
                    madeabot = true
                end
            end

            # 2) Wait for resources to build up
            # (Usually not a good choice, push to front to deprioritize if we made a bot)
            newres = collectresources(bots, resources)
            if madeabot
                pushfirst!(state, (curtime-1, newres, bots))
            else
                push!(state, (curtime-1, newres, bots))
            end
        end
        score_sum += bpscore

        # Get max bpscore
        if bpscore > best_score
            @warn "score increase: $best_score -> $bpscore)"
            best_score = bpscore
        end
        @warn "BP: $bpid -> $bpscore"
    end
    @info "best: $best_score"
    @info "sum: $score_sum"
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@profile @time main(Logging.Debug)
# @time main(Logging.Error)
# @btime main(Logging.Error)
# @profile main(Logging.Error)
open("part1.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end

# 