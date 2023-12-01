Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
  ╎146 @Base\client.jl:522; _start()
  ╎ 146 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
  ╎  146 @Base\Base.jl:419; include(mod::Module, _path::String)
  ╎   146 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
  ╎    146 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
 1╎     146 @Base\boot.jl:368; eval
  ╎    ╎ 1   C:\dev\advent_of_code\2022\day17\part2.jl:122; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  1   C:\dev\advent_of_code\2022\day17\part2.jl:23; copy
 1╎    ╎   1   @Base\array.jl:369; copy
  ╎    ╎ 3   C:\dev\advent_of_code\2022\day17\part2.jl:130; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  3   @Base\logging.jl:376; macro expansion
  ╎    ╎   3   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎    3   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎     3   @Base\env.jl:80; get
  ╎    ╎    ╎ 2   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  1   @Base\c.jl:249; cwstring(s::String)
  ╎    ╎    ╎   1   @Base\operators.jl:1242; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    1   @Base\strings\basic.jl:755; iterate
  ╎    ╎    ╎     1   @Base\strings\basic.jl:755; iterate
  ╎    ╎    ╎    ╎ 1   @Base\int.jl:487; <
 1╎    ╎    ╎    ╎  1   @Base\int.jl:480; <
  ╎    ╎    ╎  1   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎   1   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    1   @Base\array.jl:404; getindex
 1╎    ╎    ╎     1   @Base\boot.jl:459; Array
  ╎    ╎    ╎ 1   @Base\env.jl:13; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  1   @Base\int.jl:485; ==
  ╎    ╎    ╎   1   @Base\promotion.jl:427; ==
 1╎    ╎    ╎    1   @Base\promotion.jl:477; ==
  ╎    ╎ 2   C:\dev\advent_of_code\2022\day17\part2.jl:131; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  2   @Base\logging.jl:376; macro expansion
  ╎    ╎   2   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎    2   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎     2   @Base\env.jl:80; get
  ╎    ╎    ╎ 1   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  1   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎   1   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    1   @Base\array.jl:404; getindex
 1╎    ╎    ╎     1   @Base\boot.jl:459; Array
  ╎    ╎    ╎ 1   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
 1╎    ╎    ╎  1   @Base\env.jl:6; _getenvlen
  ╎    ╎ 46  C:\dev\advent_of_code\2022\day17\part2.jl:137; main(loglevel::Base.CoreLogging.LogLevel)
 1╎    ╎  1   C:\dev\advent_of_code\2022\day17\part2.jl:0; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
 1╎    ╎  1   C:\dev\advent_of_code\2022\day17\part2.jl:26; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
  ╎    ╎  1   C:\dev\advent_of_code\2022\day17\part2.jl:32; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
 1╎    ╎   1   @Base\array.jl:0; getindex
  ╎    ╎  2   C:\dev\advent_of_code\2022\day17\part2.jl:34; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
  ╎    ╎   2   @Base\logging.jl:376; macro expansion
  ╎    ╎    2   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎     2   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎    ╎ 2   @Base\env.jl:80; get
  ╎    ╎    ╎  2   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎   2   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎    1   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎     1   @Base\array.jl:404; getindex
 1╎    ╎    ╎    ╎ 1   @Base\boot.jl:459; Array
  ╎    ╎    ╎    1   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎     1   @Base\array.jl:1058; push!
 1╎    ╎    ╎    ╎ 1   @Base\array.jl:1011; _growend!
21╎    ╎  21  C:\dev\advent_of_code\2022\day17\part2.jl:40; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
  ╎    ╎  4   C:\dev\advent_of_code\2022\day17\part2.jl:41; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
  ╎    ╎   4   @Base\logging.jl:376; macro expansion
  ╎    ╎    4   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎     4   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎    ╎ 4   @Base\env.jl:80; get
  ╎    ╎    ╎  3   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎   3   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎    2   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
 2╎    ╎    ╎     2   @Base\array.jl:1267; sizehint!
 1╎    ╎    ╎    1   @Base\c.jl:354; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎  1   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
 1╎    ╎    ╎   1   @Base\env.jl:6; _getenvlen
  ╎    ╎  4   C:\dev\advent_of_code\2022\day17\part2.jl:45; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
 2╎    ╎   4   @Base\array.jl:898; iterate
  ╎    ╎    2   @Base\int.jl:487; <
 2╎    ╎     2   @Base\int.jl:480; <
  ╎    ╎  12  C:\dev\advent_of_code\2022\day17\part2.jl:50; trypush!(rock::RockFormation, others::Vector{Tuple{Int64, Int64}}, delta::Int64, walls::Vector{Int64})
  ╎    ╎   12  @Base\logging.jl:376; macro expansion
  ╎    ╎    12  @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
 1╎    ╎     1   @Base\logging.jl:539; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎     11  @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎    ╎ 11  @Base\env.jl:80; get
  ╎    ╎    ╎  7   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎   7   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎    1   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎     1   @Base\array.jl:404; getindex
 1╎    ╎    ╎    ╎ 1   @Base\boot.jl:459; Array
  ╎    ╎    ╎    3   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
 3╎    ╎    ╎     3   @Base\array.jl:1267; sizehint!
  ╎    ╎    ╎    3   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎     3   @Base\array.jl:1058; push!
 3╎    ╎    ╎    ╎ 3   @Base\array.jl:1011; _growend!
  ╎    ╎    ╎  4   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
 4╎    ╎    ╎   4   @Base\env.jl:6; _getenvlen
  ╎    ╎ 1   C:\dev\advent_of_code\2022\day17\part2.jl:139; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  1   @Base\operators.jl:834; mod1
  ╎    ╎   1   @Base\int.jl:280; mod
  ╎    ╎    1   @Base\div.jl:292; fld
  ╎    ╎     1   @Base\div.jl:327; div
 1╎    ╎    ╎ 1   @Base\bool.jl:38; &
  ╎    ╎ 6   C:\dev\advent_of_code\2022\day17\part2.jl:156; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  6   @Base\coreio.jl:4; println(xs::String)
  ╎    ╎   6   @Base\strings\io.jl:75; println(::Base.TTY, ::String, ::Vararg{String})
  ╎    ╎    6   @Base\strings\io.jl:46; print(::Base.TTY, ::String, ::String, ::Vararg{String})
  ╎    ╎     6   @Base\strings\io.jl:246; print
  ╎    ╎    ╎ 6   @Base\strings\io.jl:244; write
  ╎    ╎    ╎  6   @Base\stream.jl:1118; unsafe_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
  ╎    ╎    ╎   5   @Base\stream.jl:1035; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
 5╎    ╎    ╎    5   @Base\stream.jl:1078; uv_write_async(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
 1╎    ╎    ╎   1   @Base\stream.jl:1041; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
  ╎    ╎ 50  C:\dev\advent_of_code\2022\day17\part2.jl:161; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  1   C:\dev\advent_of_code\2022\day17\part2.jl:58; tryfall!(rock::RockFormation, otherblocks::Vector{Tuple{Int64, Int64}}, miny::Int64)
 1╎    ╎   1   @Base\int.jl:86; -
32╎    ╎  33  C:\dev\advent_of_code\2022\day17\part2.jl:71; tryfall!(rock::RockFormation, otherblocks::Vector{Tuple{Int64, Int64}}, miny::Int64)
  ╎    ╎  2   C:\dev\advent_of_code\2022\day17\part2.jl:79; tryfall!(rock::RockFormation, otherblocks::Vector{Tuple{Int64, Int64}}, miny::Int64)
  ╎    ╎   2   @Base\array.jl:898; iterate
 1╎    ╎    1   @Base\array.jl:924; getindex
  ╎    ╎    1   @Base\int.jl:487; <
 1╎    ╎     1   @Base\int.jl:480; <
  ╎    ╎  14  C:\dev\advent_of_code\2022\day17\part2.jl:80; tryfall!(rock::RockFormation, otherblocks::Vector{Tuple{Int64, Int64}}, miny::Int64)
  ╎    ╎   14  @Base\logging.jl:376; macro expansion
  ╎    ╎    14  @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎     14  @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎    ╎ 14  @Base\env.jl:80; get
 2╎    ╎    ╎  2   @Base\env.jl:10; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  8   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎   8   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎    1   @Base\array.jl:1058; push!
 1╎    ╎    ╎     1   @Base\array.jl:1011; _growend!
  ╎    ╎    ╎    3   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎     3   @Base\array.jl:404; getindex
 3╎    ╎    ╎    ╎ 3   @Base\boot.jl:459; Array
  ╎    ╎    ╎    1   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
 1╎    ╎    ╎     1   @Base\array.jl:1267; sizehint!
  ╎    ╎    ╎    3   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎     3   @Base\array.jl:1058; push!
 3╎    ╎    ╎    ╎ 3   @Base\array.jl:1011; _growend!
  ╎    ╎    ╎  4   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
 4╎    ╎    ╎   4   @Base\env.jl:6; _getenvlen
  ╎    ╎ 12  C:\dev\advent_of_code\2022\day17\part2.jl:163; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  12  @Base\logging.jl:376; macro expansion
  ╎    ╎   12  @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
 1╎    ╎    1   @Base\Base.jl:0; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎    11  @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎     11  @Base\env.jl:80; get
  ╎    ╎    ╎ 9   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  2   @Base\c.jl:249; cwstring(s::String)
  ╎    ╎    ╎   2   @Base\operators.jl:1242; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    2   @Base\strings\basic.jl:755; iterate
 1╎    ╎    ╎     2   @Base\strings\basic.jl:755; iterate
  ╎    ╎    ╎    ╎ 1   @Base\int.jl:487; <
 1╎    ╎    ╎    ╎  1   @Base\int.jl:480; <
  ╎    ╎    ╎  7   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎   1   @Base\array.jl:1058; push!
 1╎    ╎    ╎    1   @Base\array.jl:1011; _growend!
  ╎    ╎    ╎   2   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    2   @Base\array.jl:404; getindex
 2╎    ╎    ╎     2   @Base\boot.jl:459; Array
  ╎    ╎    ╎   2   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
 2╎    ╎    ╎    2   @Base\array.jl:1267; sizehint!
  ╎    ╎    ╎   1   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    1   @Base\array.jl:1058; push!
 1╎    ╎    ╎     1   @Base\array.jl:1011; _growend!
 1╎    ╎    ╎   1   @Base\c.jl:354; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎ 2   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
 2╎    ╎    ╎  2   @Base\env.jl:6; _getenvlen
  ╎    ╎ 1   C:\dev\advent_of_code\2022\day17\part2.jl:165; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  1   @Base\promotion.jl:488; max
 1╎    ╎   1   @Base\essentials.jl:489; ifelse
  ╎    ╎ 4   C:\dev\advent_of_code\2022\day17\part2.jl:168; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  4   @Base\logging.jl:376; macro expansion
 1╎    ╎   1   @Base\logging.jl:497; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎   3   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎    3   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎     3   @Base\env.jl:80; get
  ╎    ╎    ╎ 3   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  3   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎   1   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
 1╎    ╎    ╎    1   @Base\array.jl:1267; sizehint!
  ╎    ╎    ╎   2   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    2   @Base\array.jl:1058; push!
 2╎    ╎    ╎     2   @Base\array.jl:1011; _growend!
  ╎    ╎ 11  C:\dev\advent_of_code\2022\day17\part2.jl:170; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  3   @Base\array.jl:1058; push!(a::Vector{Tuple{Int64, Int64}}, item::Tuple{Int64, Int64})
 3╎    ╎   3   @Base\array.jl:1011; _growend!
  ╎    ╎  2   @Base\broadcast.jl:860; materialize
  ╎    ╎   2   @Base\broadcast.jl:885; copy
  ╎    ╎    2   @Base\broadcast.jl:211; similar
  ╎    ╎     2   @Base\broadcast.jl:212; similar
  ╎    ╎    ╎ 2   @Base\abstractarray.jl:840; similar
  ╎    ╎    ╎  2   @Base\abstractarray.jl:841; similar
  ╎    ╎    ╎   2   @Base\boot.jl:476; Array
  ╎    ╎    ╎    2   @Base\boot.jl:468; Array
 2╎    ╎    ╎     2   @Base\boot.jl:459; Array
  ╎    ╎  6   @Base\tuple.jl:317; Tuple
 6╎    ╎   6   @Base\tuple.jl:352; _totuple
 1╎    ╎ 1   C:\dev\advent_of_code\2022\day17\part2.jl:173; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎ 3   C:\dev\advent_of_code\2022\day17\part2.jl:174; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  3   @Base\logging.jl:376; macro expansion
  ╎    ╎   3   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  ╎    ╎    3   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
  ╎    ╎     3   @Base\env.jl:80; get
  ╎    ╎    ╎ 3   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  ╎    ╎    ╎  3   @Base\c.jl:250; cwstring(s::String)
  ╎    ╎    ╎   3   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  ╎    ╎    ╎    3   @Base\array.jl:404; getindex
 3╎    ╎    ╎     3   @Base\boot.jl:459; Array
  ╎    ╎ 4   C:\dev\advent_of_code\2022\day17\part2.jl:178; main(loglevel::Base.CoreLogging.LogLevel)
  ╎    ╎  3   @Base\array.jl:2584; filter!(f::var"#2#4", a::Vector{Tuple{Int64, Int64}})
 3╎    ╎   3   C:\dev\advent_of_code\2022\day17\part2.jl:178; (::var"#2#4")(block::Tuple{Int64, Int64})
  ╎    ╎  1   @Base\array.jl:2589; filter!(f::var"#2#4", a::Vector{Tuple{Int64, Int64}})
 1╎    ╎   1   @Base\array.jl:1267; sizehint!
Total snapshots: 148. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
