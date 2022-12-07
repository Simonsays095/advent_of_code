
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
    println("Moving to $(dir)")

    if dir == "/"
        # Special case: move to top level directory
        for existing_dir in fileStructure.dirs
            if existing_dir.name == dir
                fileStructure.currentDir = existing_dir
                return 1
            end
        end
        newDirectory = Directory(dir)
        push!(fileStructure.dirs, newDirectory)
        fileStructure.currentDir = newDirectory
        return 1
    elseif dir == ".."
        fileStructure.currentDir = fileStructure.currentDir.parent
        return 1
    end

    for existing_dir in fileStructure.currentDir.dirs
        if existing_dir.name == dir
            fileStructure.currentDir = existing_dir
            return 1
        end
    end
    newDirectory = Directory("/", fileStructure.currentDir)
    push!(fileStructure.dirs, newDirectory)
    push!(fileStructure.currentDir.dirs, newDirectory)
    fileStructure.currentDir = newDirectory
    return 1
end

function ls(lines, fileStructure)
    parsedLastLine = false
    println("ls'ing $(fileStructure.currentDir.name)")
    line = split(popfirst!(lines), ' ')
    while line[1] != "\$"
        if line[1] == "dir"
            # println("Adding dir $(line[2])")
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
        elseif tryparse(Int, line[1]) != nothing
            newFile = File(line[2], tryparse(Int, line[1]), fileStructure.currentDir)
            push!(fileStructure.currentDir.files, newFile)
            push!(fileStructure.files, newFile)
        end
        if length(lines) == 0
            parsedLastLine = true
            break
        end
        line = split(popfirst!(lines), ' ')
    end
    if !parsedLastLine
        pushfirst!(lines, join(line, ' '))  # Nothing to see here...
    end
end

function parseCommand(args, lines, fileStructure)
    command = popfirst!(args)
    if command == "cd"
        cd(only(args), fileStructure)
    elseif command == "ls"
        ls(lines, fileStructure)
    end
    # println(fileStructure)
end

function computeSizes(fileStructure)
    sizes::Vector{Int} = []
    for dir in fileStructure.dirs
        push!(sizes, dirSize(dir))
    end
    return sizes
end

function dirSize(dir)
    size::Int = 0
    for subDir in dir.dirs
        size += dirSize(subDir)
    end
    for file in dir.files
        size += file.size
    end
    return size
end

function main()
    lines = readlines("part1.input")

    fs = FileStructure()
    while length(lines) > 0
        line = split(popfirst!(lines), ' ')
        @show line
        if line[1] == "\$"
            linesConsumed = parseCommand(line[begin+1:end], lines, fs)
        end
    end

    sizes = computeSizes(fs)
    @show sizes

    accum = 0
    for size in sizes
        if size <= 100000
            accum += size
        end
    end
    @show accum
end

@time main()