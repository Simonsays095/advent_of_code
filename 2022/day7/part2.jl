using BenchmarkTools

abstract type AbstractFile end

mutable struct Directory
    name::String
    files::Vector{<:AbstractFile}
    dirs::Vector{Directory}
    parent::Union{Directory, Nothing}

    Directory(name) = new(name, AbstractFile[], Directory[], nothing)
    Directory(name, parent) = new(name, AbstractFile[], Directory[], parent)
end

function Base.show(io::IO, dir::Directory)
    print("\"$(dir.name)\": dirs ")
    for subDir in dir.dirs
        print(subDir)
    end
    if length(dir.dirs) == 0
        print("[]")
    end
    print(", files ")
    for file in dir.files
        print(file, ", ")
    end
    if length(dir.files) == 0
        print("[]")
    end
    if !isnothing(dir.parent)
        print(", parent ", dir.parent.name)
    end
end

mutable struct File <: AbstractFile
    name::String
    size::Int
    directory::Directory
end

function Base.show(io::IO, file::File)
    print("\"$(file.name)\": $(file.size)")
end

mutable struct FileStructure
    files::Vector{<:AbstractFile}
    dirs::Vector{Directory}
    currentDir::Union{Nothing, Directory}

    FileStructure() = new(AbstractFile[], Directory[], nothing)
end

function cd(dir, fileStructure)
    if dir == "/"
        # Special case: move to top level directory
        for existing_dir in fileStructure.dirs
            if existing_dir.name == dir
                fileStructure.currentDir = existing_dir
                return
            end
        end
        newDirectory = Directory(dir)
        push!(fileStructure.dirs, newDirectory)
        fileStructure.currentDir = newDirectory
        return
    elseif dir == ".."
        fileStructure.currentDir = fileStructure.currentDir.parent
        return
    end

    for existing_dir in fileStructure.currentDir.dirs
        if existing_dir.name == dir
            fileStructure.currentDir = existing_dir
            return
        end
    end
    newDirectory = Directory("/", fileStructure.currentDir)
    push!(fileStructure.dirs, newDirectory)
    push!(fileStructure.currentDir.dirs, newDirectory)
    fileStructure.currentDir = newDirectory
    return
end

function ls(lines, fileStructure)
    while length(lines) > 0 && first(first(lines)) != '\$'
        line = split(popfirst!(lines), ' ')
        if line[1] == "dir"
            dirExists = false
            for dir in fileStructure.currentDir.dirs
                if dir.name == line[2]
                    dirExists = true
                    break
                end
            end
            if !dirExists
                newDir = Directory(line[2], fileStructure.currentDir)
                push!(fileStructure.dirs, newDir)
                push!(fileStructure.currentDir.dirs, newDir)
            end
        elseif tryparse(Int, line[1]) !== nothing
            newFile = File(line[2], tryparse(Int, line[1]), fileStructure.currentDir)
            push!(fileStructure.currentDir.files, newFile)
            push!(fileStructure.files, newFile)
        end
    end
end

function parseCommand(args, lines, fileStructure)
    command = popfirst!(args)
    if command == "cd"
        cd(only(args), fileStructure)
    elseif command == "ls"
        ls(lines, fileStructure)
    end
end

function computeSizes(fileStructure, currentDir::Union{Directory, Nothing} = nothing)
    if isnothing(currentDir)
        thisDir = fileStructure.currentDir
        topDir = getDir(fileStructure, "/")
        fileStructure.currentDir = topDir
        sizes = computeSizes(fileStructure, topDir)
        fileStructure.currentDir = thisDir
    else
        sizes::Vector{Int} = []
        thisDirSize = 0
        for dir in currentDir.dirs
            subDirSizes = computeSizes(fileStructure, dir)
            sizes = vcat(sizes, subDirSizes)
            thisDirSize += subDirSizes[end]
        end
        for file in currentDir.files
            thisDirSize += file.size 
        end
        push!(sizes, thisDirSize)
    end
    return sizes
end

function getDir(fileStructure, name)
    for dir in fileStructure.dirs
        if dir.name == name
            return dir
        end
    end
    return nothing
end

function main(verbose)
    lines = readlines("part1.input")

    fs = FileStructure()
    while length(lines) > 0
        line = split(popfirst!(lines), ' ')
        if line[1] == "\$"
            parseCommand(line[begin+1:end], lines, fs)
        end
    end

    sizes = sort(computeSizes(fs), rev=true)
    if verbose
        @show sizes, length(sizes)
    end

    usedSpace = sizes[begin]
    freeSpace = 70000000 - usedSpace
    targetSpace = 30000000 - freeSpace

    idx = 1
    while sizes[idx] > targetSpace
        idx += 1
    end
    if verbose
        @show sizes[idx-1]
    end
end

@time main(true)
@time main(false)
@btime main(false)