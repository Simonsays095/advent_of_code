Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
   ╎2160 @Base\client.jl:522; _start()
   ╎ 2160 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
   ╎  2160 @Base\Base.jl:419; include(mod::Module, _path::String)
   ╎   2160 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
   ╎    2160 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
  1╎     2160 @Base\boot.jl:368; eval
   ╎    ╎ 2158 C:\dev\advent_of_code\2022\day20\part2.jl:52; multi_main(numRuns::Int64)
   ╎    ╎  9    C:\dev\advent_of_code\2022\day20\part2.jl:20; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   9    @Base\io.jl:583; readlines
   ╎    ╎    9    @Base\io.jl:584; #readlines#398
   ╎    ╎     9    @Base\io.jl:381; open
   ╎    ╎    ╎ 1    @Base\io.jl:382; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎  1    @Base\iostream.jl:275; open
  1╎    ╎    ╎   1    @Base\iostream.jl:293; open(fname::String; lock::Bool, read::Nothing, write::Nothing, create::Nothing, truncate::Nothing, append::Nothing)
   ╎    ╎    ╎ 7    @Base\io.jl:384; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎  7    @Base\io.jl:585; #399
   ╎    ╎    ╎   7    @Base\io.jl:588; readlines
   ╎    ╎    ╎    7    @Base\io.jl:588; #readlines#401
   ╎    ╎    ╎     7    @Base\array.jl:712; collect
   ╎    ╎    ╎    ╎ 7    @Base\array.jl:725; _collect(cont::UnitRange{Int64}, itr::Base.EachLine{IOStream}, #unused#::Base.HasEltype, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎  2    @Base\io.jl:1062; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
   ╎    ╎    ╎    ╎   1    @Base\iostream.jl:42; eof(s::IOStream)
   ╎    ╎    ╎    ╎    1    @Base\lock.jl:103; lock
  1╎    ╎    ╎    ╎     1    @Base\lock.jl:78; trylock
  1╎    ╎    ╎    ╎   1    @Base\iostream.jl:232; eof(s::IOStream)
   ╎    ╎    ╎    ╎  5    @Base\io.jl:1063; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
   ╎    ╎    ╎    ╎   5    @Base\iostream.jl:447; readline##kw
   ╎    ╎    ╎    ╎    3    @Base\iostream.jl:42; readline(s::IOStream; keep::Bool)
   ╎    ╎    ╎    ╎     3    @Base\lock.jl:103; lock
   ╎    ╎    ╎    ╎    ╎ 3    @Base\lock.jl:78; trylock
  1╎    ╎    ╎    ╎    ╎  1    @Base\lock.jl:80; _trylock(rl::ReentrantLock, ct::Task)
   ╎    ╎    ╎    ╎    ╎  1    @Base\lock.jl:81; _trylock(rl::ReentrantLock, ct::Task)
  1╎    ╎    ╎    ╎    ╎   1    @Base\gcutils.jl:126; disable_finalizers
  1╎    ╎    ╎    ╎    ╎  1    @Base\lock.jl:82; _trylock(rl::ReentrantLock, ct::Task)
  2╎    ╎    ╎    ╎    2    @Base\iostream.jl:43; readline(s::IOStream; keep::Bool)
   ╎    ╎    ╎ 1    @Base\io.jl:386; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
  1╎    ╎    ╎  1    @Base\iostream.jl:43; close(s::IOStream)
   ╎    ╎  4    C:\dev\advent_of_code\2022\day20\part2.jl:21; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   4    @Base\broadcast.jl:860; materialize
   ╎    ╎    4    @Base\broadcast.jl:885; copy
   ╎    ╎     4    @Base\broadcast.jl:913; copyto!
   ╎    ╎    ╎ 4    @Base\broadcast.jl:960; copyto!
   ╎    ╎    ╎  4    @Base\simdloop.jl:77; macro expansion
   ╎    ╎    ╎   4    @Base\broadcast.jl:961; macro expansion
   ╎    ╎    ╎    4    @Base\broadcast.jl:597; getindex
   ╎    ╎    ╎     1    @Base\broadcast.jl:642; _broadcast_getindex
   ╎    ╎    ╎    ╎ 1    @Base\broadcast.jl:667; _getindex
   ╎    ╎    ╎    ╎  1    @Base\broadcast.jl:636; _broadcast_getindex
  1╎    ╎    ╎    ╎   1    @Base\array.jl:924; getindex
   ╎    ╎    ╎     3    @Base\broadcast.jl:643; _broadcast_getindex
   ╎    ╎    ╎    ╎ 3    @Base\broadcast.jl:670; _broadcast_getindex_evalf
  1╎    ╎    ╎    ╎  1    C:\dev\advent_of_code\2022\day20\part2.jl:5; parseline(line::String)
   ╎    ╎    ╎    ╎  2    C:\dev\advent_of_code\2022\day20\part2.jl:6; parseline(line::String)
   ╎    ╎    ╎    ╎   2    @Base\parse.jl:235; tryparse
   ╎    ╎    ╎    ╎    2    @Base\parse.jl:237; #tryparse#476
   ╎    ╎    ╎    ╎     2    @Base\parse.jl:107; tryparse_internal(#unused#::Type{Int64}, s::String, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
  1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:0; parseint_preamble(signed::Bool, base::Int64, s::String, startpos::Int64, endpos::Int64)
   ╎    ╎    ╎    ╎    ╎ 1    @Base\parse.jl:73; parseint_preamble(signed::Bool, base::Int64, s::String, startpos::Int64, endpos::Int64)
  1╎    ╎    ╎    ╎    ╎  1    @Base\strings\unicode.jl:495; isspace
   ╎    ╎  1076 C:\dev\advent_of_code\2022\day20\part2.jl:31; main(loglevel::Base.CoreLogging.LogLevel)
  3╎    ╎   1076 @Base\array.jl:2074; findfirst
   ╎    ╎    1    @Base\array.jl:2020; findnext
   ╎    ╎     1    @Base\abstractarray.jl:133; keys
   ╎    ╎    ╎ 1    @Base\indices.jl:457; LinearIndices
   ╎    ╎    ╎  1    @Base\abstractarray.jl:95; axes
  1╎    ╎    ╎   1    @Base\array.jl:151; size
548╎    ╎    812  @Base\array.jl:2023; findnext
263╎    ╎     263  @Base\array.jl:924; getindex
   ╎    ╎     1    @Base\operators.jl:1113; Fix2
   ╎    ╎    ╎ 1    @Base\operators.jl:140; isequal
  1╎    ╎    ╎  1    @Base\promotion.jl:477; ==
260╎    ╎    260  @Base\array.jl:2024; findnext
   ╎    ╎  262  C:\dev\advent_of_code\2022\day20\part2.jl:32; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   7    @Base\logging.jl:373; macro expansion
   ╎    ╎    5    @Base\operators.jl:429; >=
   ╎    ╎     5    @Base\operators.jl:405; <=
  5╎    ╎    ╎ 5    @Base\bool.jl:39; |
   ╎    ╎   254  @Base\logging.jl:376; macro expansion
 13╎    ╎    13   @Base\logging.jl:497; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
   ╎    ╎    6    @Base\logging.jl:498; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
   ╎    ╎     2    @Base\logging.jl:492; current_logstate
  2╎    ╎    ╎ 2    @Base\task.jl:181; getproperty
  4╎    ╎     4    @Base\logging.jl:493; current_logstate
   ╎    ╎    235  @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
  1╎    ╎     1    @Base\Base.jl:0; env_override_minlevel(group::Symbol, _module::Module)
  4╎    ╎     4    @Base\logging.jl:539; env_override_minlevel(group::Symbol, _module::Module)
   ╎    ╎     229  @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
   ╎    ╎    ╎ 229  @Base\env.jl:80; get
  2╎    ╎    ╎  2    @Base\env.jl:10; access_env(onError::Returns{String}, str::String)
  1╎    ╎    ╎  161  @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
  2╎    ╎    ╎   2    @Base\c.jl:247; cwstring(s::String)
  1╎    ╎    ╎   11   @Base\c.jl:249; cwstring(s::String)
   ╎    ╎    ╎    6    @Base\operators.jl:1242; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎     6    @Base\strings\basic.jl:755; iterate
   ╎    ╎    ╎    ╎ 6    @Base\strings\basic.jl:755; iterate
   ╎    ╎    ╎    ╎  6    @Base\int.jl:487; <
  6╎    ╎    ╎    ╎   6    @Base\int.jl:480; <
  4╎    ╎    ╎    4    @Base\operators.jl:1246; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
  1╎    ╎    ╎   147  @Base\c.jl:250; cwstring(s::String)
   ╎    ╎    ╎    6    @Base\array.jl:1058; push!
  6╎    ╎    ╎     6    @Base\array.jl:1011; _growend!
  1╎    ╎    ╎    1    @Base\c.jl:309; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎    48   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎     48   @Base\array.jl:404; getindex
 48╎    ╎    ╎    ╎ 48   @Base\boot.jl:459; Array
   ╎    ╎    ╎    1    @Base\c.jl:312; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎     1    @Base\strings\basic.jl:749; length
  1╎    ╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎    26   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
 26╎    ╎    ╎     26   @Base\array.jl:1267; sizehint!
  4╎    ╎    ╎    4    @Base\c.jl:317; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎    55   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎     55   @Base\array.jl:1058; push!
 55╎    ╎    ╎    ╎ 55   @Base\array.jl:1011; _growend!
  1╎    ╎    ╎    2    @Base\c.jl:354; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  1╎    ╎    ╎     1    @Base\int.jl:83; <
   ╎    ╎    ╎    3    @Base\c.jl:355; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  3╎    ╎    ╎     3    @Base\strings\basic.jl:753; getindex
   ╎    ╎    ╎  66   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
 66╎    ╎    ╎   66   @Base\env.jl:6; _getenvlen
  1╎    ╎     1    @Base\logging.jl:541; env_override_minlevel(group::Symbol, _module::Module)
  1╎    ╎   1    @Base\logging.jl:391; macro expansion
   ╎    ╎  407  C:\dev\advent_of_code\2022\day20\part2.jl:35; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   2    @Base\array.jl:924; getindex
  1╎    ╎   1    C:\dev\advent_of_code\2022\day20\part2.jl:9; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎   9    C:\dev\advent_of_code\2022\day20\part2.jl:10; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎    9    @Base\operators.jl:834; mod1
   ╎    ╎     9    @Base\int.jl:280; mod
   ╎    ╎    ╎ 9    @Base\div.jl:292; fld
   ╎    ╎    ╎  6    @Base\div.jl:326; div
   ╎    ╎    ╎   6    @Base\div.jl:281; div
  6╎    ╎    ╎    6    @Base\int.jl:288; div
   ╎    ╎    ╎  3    @Base\div.jl:327; div
   ╎    ╎    ╎   1    @Base\int.jl:991; -
  1╎    ╎    ╎    1    @Base\int.jl:86; -
   ╎    ╎    ╎   2    @Base\operators.jl:282; !=
  2╎    ╎    ╎    2    @Base\promotion.jl:477; ==
   ╎    ╎   183  C:\dev\advent_of_code\2022\day20\part2.jl:12; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎    183  @Base\array.jl:1355; popat!
183╎    ╎     183  @Base\array.jl:1022; _deleteat!
   ╎    ╎   212  C:\dev\advent_of_code\2022\day20\part2.jl:13; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎    212  @Base\array.jl:1460; insert!
212╎    ╎     212  @Base\array.jl:1013; _growat!
  2╎    ╎  400  C:\dev\advent_of_code\2022\day20\part2.jl:36; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   2    C:\dev\advent_of_code\2022\day20\part2.jl:9; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎   7    C:\dev\advent_of_code\2022\day20\part2.jl:10; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎    7    @Base\operators.jl:834; mod1
   ╎    ╎     6    @Base\int.jl:280; mod
   ╎    ╎    ╎ 6    @Base\div.jl:292; fld
   ╎    ╎    ╎  5    @Base\div.jl:326; div
   ╎    ╎    ╎   5    @Base\div.jl:281; div
  5╎    ╎    ╎    5    @Base\int.jl:288; div
   ╎    ╎    ╎  1    @Base\div.jl:327; div
   ╎    ╎    ╎   1    @Base\operators.jl:282; !=
  1╎    ╎    ╎    1    @Base\promotion.jl:477; ==
  1╎    ╎     1    @Base\promotion.jl:477; ==
   ╎    ╎   210  C:\dev\advent_of_code\2022\day20\part2.jl:12; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎    210  @Base\array.jl:1355; popat!
210╎    ╎     210  @Base\array.jl:1022; _deleteat!
   ╎    ╎   179  C:\dev\advent_of_code\2022\day20\part2.jl:13; mix!(numsarr::Vector{Int64}, pos::Int64, num::Int64)
   ╎    ╎    179  @Base\array.jl:1460; insert!
179╎    ╎     179  @Base\array.jl:1013; _growat!
Total snapshots: 2166. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
