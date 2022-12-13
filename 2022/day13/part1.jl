using Logging
using BenchmarkTools

abstract type SignalElement end

mutable struct NumberElement <: SignalElement
    value::Int

    NumberElement(str::AbstractString) = new(tryparse(Int, str))
end

mutable struct ListElement <: SignalElement
    elements::Vector{Union{ListElement, NumberElement}}
    # elements::Vector{<:SignalElement}

    ListElement() = new([])
    ListElement(val::NumberElement) = new([val])
end

function push!(le::ListElement, se::SignalElement)
    Base.push!(le.elements, se)
end

Base.length(le::ListElement) = Base.length(le.elements)
Base.iterate(le::ListElement) = Base.iterate(le, 1)
function Base.iterate(le::ListElement, pos::Int)
    # @show length(le.elements), pos
    if pos <= length(le.elements)
        return le.elements[pos], pos+1
    else
        return nothing
    end
end


function GetSplitLocation(str)
    bracketLevel = 0
    pos = 0
    for char in str
        if char == '['
            bracketLevel += 1
        elseif char == ']'
            bracketLevel -= 1
            # Check if this is the correct end bracket
            if bracketLevel == 0
                return pos+1
            end
        end
        pos += 1
    end
    return nothing
end

function ParseList(list)
    list = list[begin+1:end-1] # Chop off []
    parsed = ListElement()
    while length(list) > 0
        # Check for a nested list
        if startswith(list, '[')
            listend = GetSplitLocation(list)
            push!(parsed, ParseList(list[begin:listend]))
            list = list[listend+2:end] # Chop off ],
        else
            separated = split(list, ',', limit=2)
            nextElem = separated[1]
            # nextElem, list = split(list, ',', limit=2)
            push!(parsed, NumberElement(nextElem))
            if length(separated) == 1
                list = ""
            else
                list = separated[2]
            end
        end
    end
    return parsed
end

function Compare(left::ListElement, right::ListElement)
    @debug "comparing $left and $right"
    for (leftElem, rightElem) in zip(left, right)
        @debug "left: $leftElem, right: $rightElem"
        if typeof(leftElem) == NumberElement && typeof(rightElem) == NumberElement
            # Integer rule
            if leftElem.value < rightElem.value
                return true
            elseif leftElem.value > rightElem.value
                return false
            end # Continue
        elseif typeof(leftElem) == ListElement && typeof(rightElem) == ListElement
            # Lists rule
            check = Compare(leftElem, rightElem)
            if !isnothing(check)
                return check
            end
        else
            # Broadcast rule
            if typeof(leftElem) == NumberElement
                leftElem = ListElement(leftElem)
            else
                rightElem = ListElement(rightElem)
            end
            check = Compare(leftElem, rightElem)
            if !isnothing(check)
                return check
            end
        end
    end

    # List length rule
    if length(left) < length(right)
        return true
    elseif length(right) < length(left)
        return false
    end

    # Continue rule
    return nothing
end

function main(loglevel)
    logger = ConsoleLogger(stdout, loglevel)
    global_logger(logger)
    input = read("part1.input", String)
    @debug input
    input = replace(input, "\r\n" => " ")
    input = split(input, "  ")
    input = split.(input)
    @debug input

    indexSum = 0
    for (idx, pair) in enumerate(input)
        @debug "starting: $pair"
        left = ParseList(pair[1])
        right = ParseList(pair[2])
        @debug "starting: $left $right"
        if Compare(left, right)
            indexSum += idx
        end
    end
    @show indexSum
    
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
@time main(Logging.Error)
# @btime multi_main(2000)