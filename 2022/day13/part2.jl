using Logging
using BenchmarkTools
using Profile

abstract type SignalElement end

mutable struct NumberElement <: SignalElement
    value::Int

    NumberElement(str::AbstractString) = new(tryparse(Int, str))
    NumberElement(val::Int) = new(val)
end

mutable struct ListElement <: SignalElement
    elements::Vector{SignalElement}

    ListElement() = new([])
    ListElement(val::SignalElement) = new([val])
end

function push!(le::ListElement, se::SignalElement)
    Base.push!(le.elements, se)
end

Base.length(le::ListElement) = Base.length(le.elements)
Base.iterate(le::ListElement) = Base.iterate(le, 1)
function Base.iterate(le::ListElement, pos::Int)
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

function ParseList(list::AbstractString)
    list = list[begin+1:end-1] # Chop off []
    parsed = ListElement()
    while length(list) > 0
        # Check for a nested list
        if startswith(list, '[')
            listend = GetSplitLocation(list)
            first = list[begin:listend]
            inner_list = ParseList(first)
            push!(parsed, inner_list)
            list = list[listend+2:end] # Chop off ],
        else
            comma = findnext(',', list, 1)
            if isnothing(comma)
                push!(parsed, NumberElement(list))
                list = ""
            else
                nextElem = list[begin:comma-1]
                push!(parsed, NumberElement(nextElem))
                list = list[comma+1:end]
            end
        end
    end
    return parsed
end

function Compare(left::ListElement, right::ListElement)
    for (leftElem, rightElem) in zip(left, right)
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
    input = replace(input, "\r\n\r\n" => " ")
    input = replace(input, "\r\n" => " ")
    input = split(input, " ")
    # input = ParseList.(input)
    input = [ ParseList(x) for x in input]

    div1 = ListElement(ListElement(NumberElement(2)))
    div2 = ListElement(ListElement(NumberElement(6)))
    input = [input; div1; div2]

    sort!(input, lt=Compare)
    @debug first(input)
    @debug input

    @debug findfirst(elem->isnothing(Compare(elem, div1)), input) * findfirst(elem->isnothing(Compare(elem, div2)), input)
end

function multi_main(numRuns)
    for _ in Base.OneTo(numRuns)
        main(Logging.Error)
    end
end

@time main(Logging.Debug)
@time main(Logging.Error)
@btime main(Logging.Error)
@time multi_main(4000)
@profile multi_main(4000)
open("part2.profile", "w") do s
    Profile.print(IOContext(s, :displaysize => (24, 500)))
end