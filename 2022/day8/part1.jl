
@enum Direction Above=1 Right=2 Down=3 Left=4
@enum Visible visibleFromAbove=1 visibleFromRight=2 visibleFromBelow=4 visibleFromLeft=8

mutable struct Tree
    height::Int
    visibility::Int

    Tree(h) = new(h, 15)
end

function main(verbose)
    lines = readlines("part1.input")

    height = length(lines)
    width = length(first(lines))
    @show height, width

    trees::Array{Tree} = Array{Tree}(undef, height, width)
    for (i, row) in enumerate(lines)
        row = split(row, "")
        for (j, val) in enumerate(row)
            trees[i,j] = Tree(tryparse(Int, val))
        end
    end

    # Check for visibility of each tree
    for i in range(1,height)
        for j in range(1,width)
            tree = trees[i,j]
            # Visible from left?
            for other_j in range(j-1,1,step=-1)
                if trees[i, other_j].height >= tree.height
                    tree.visibility -= Int(visibleFromLeft)
                    break
                end
            end
            # Visible from right?
            for other_j in range(j+1,width)
                if i == 4 && j == 4
                    @show other_j, trees[i, other_j].height
                end
                if trees[i, other_j].height >= tree.height
                    tree.visibility -= Int(visibleFromRight)
                    break
                end
            end
            # Visible from above?
            for other_i in range(i-1,1,step=-1)
                if trees[other_i, j].height >= tree.height
                    tree.visibility -= Int(visibleFromAbove)
                    break
                end
            end
            # Visible from below?
            for other_i in range(i+1,height)
                if trees[other_i, j].height >= tree.height
                    tree.visibility -= Int(visibleFromBelow)
                    break
                end
            end
        end
    end
    @show [[trees[i,j].visibility for j in range(1,width)] for i in range(1,height)]
    @show [[trees[i,j].height for j in range(1,width)] for i in range(1,height)]

    visible = sum((x) -> x.visibility > 0 ? 1 : 0, trees)
    @show visible
end

@time main(true)
@time main(false)