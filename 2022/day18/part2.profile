Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
   ╎468  @Base\client.jl:522; _start()
   ╎ 468  @Base\client.jl:303; exec_options(opts::Base.JLOptions)
   ╎  468  @Base\Base.jl:419; include(mod::Module, _path::String)
   ╎   468  @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
   ╎    468  @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
  2╎     468  @Base\boot.jl:368; eval
   ╎    ╎ 465  C:\dev\advent_of_code\2022\day18\part2.jl:155; multi_main(numRuns::Int64)
   ╎    ╎  43   C:\dev\advent_of_code\2022\day18\part2.jl:73; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   43   @Base\io.jl:583; readlines
   ╎    ╎    43   @Base\io.jl:584; #readlines#398
   ╎    ╎     43   @Base\io.jl:381; open
   ╎    ╎    ╎ 5    @Base\io.jl:382; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎  5    @Base\iostream.jl:275; open
  5╎    ╎    ╎   5    @Base\iostream.jl:293; open(fname::String; lock::Bool, read::Nothing, write::Nothing, create::Nothing, truncate::Nothing, append::Nothing)
   ╎    ╎    ╎ 35   @Base\io.jl:384; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎  35   @Base\io.jl:585; #399
   ╎    ╎    ╎   35   @Base\io.jl:588; readlines
   ╎    ╎    ╎    35   @Base\io.jl:588; #readlines#401
   ╎    ╎    ╎     35   @Base\array.jl:712; collect
  1╎    ╎    ╎    ╎ 1    @Base\array.jl:721; _collect(cont::UnitRange{Int64}, itr::Base.EachLine{IOStream}, #unused#::Base.HasEltype, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎ 3    @Base\array.jl:723; _collect(cont::UnitRange{Int64}, itr::Base.EachLine{IOStream}, #unused#::Base.HasEltype, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎  3    @Base\io.jl:1062; iterate
   ╎    ╎    ╎    ╎   3    @Base\io.jl:1062; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
   ╎    ╎    ╎    ╎    3    @Base\iostream.jl:43; eof(s::IOStream)
  3╎    ╎    ╎    ╎     3    @Base\iostream.jl:231; _eof_nolock
   ╎    ╎    ╎    ╎ 2    @Base\array.jl:724; _collect(cont::UnitRange{Int64}, itr::Base.EachLine{IOStream}, #unused#::Base.HasEltype, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎  2    @Base\array.jl:1058; push!
  2╎    ╎    ╎    ╎   2    @Base\array.jl:1011; _growend!
   ╎    ╎    ╎    ╎ 29   @Base\array.jl:725; _collect(cont::UnitRange{Int64}, itr::Base.EachLine{IOStream}, #unused#::Base.HasEltype, isz::Base.SizeUnknown)
  3╎    ╎    ╎    ╎  3    @Base\io.jl:1061; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
  1╎    ╎    ╎    ╎  7    @Base\io.jl:1062; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
  1╎    ╎    ╎    ╎   1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎    ╎   1    @Base\iostream.jl:42; eof(s::IOStream)
   ╎    ╎    ╎    ╎    1    @Base\lock.jl:103; lock
   ╎    ╎    ╎    ╎     1    @Base\lock.jl:78; trylock
  1╎    ╎    ╎    ╎    ╎ 1    @Base\lock.jl:0; _trylock(rl::ReentrantLock, ct::Task)
   ╎    ╎    ╎    ╎   1    @Base\iostream.jl:43; eof(s::IOStream)
  1╎    ╎    ╎    ╎    1    @Base\iostream.jl:231; _eof_nolock
   ╎    ╎    ╎    ╎   2    @Base\iostream.jl:44; eof(s::IOStream)
   ╎    ╎    ╎    ╎    2    @Base\lock.jl:133; unlock
  1╎    ╎    ╎    ╎     2    @Base\lock.jl:138; (::Base.var"#_unlock#588")(rl::ReentrantLock)
  1╎    ╎    ╎    ╎    ╎ 1    @Base\Base.jl:54; swapproperty!
  1╎    ╎    ╎    ╎   1    @Base\iostream.jl:232; eof(s::IOStream)
  4╎    ╎    ╎    ╎  19   @Base\io.jl:1063; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
   ╎    ╎    ╎    ╎   15   @Base\iostream.jl:447; readline##kw
   ╎    ╎    ╎    ╎    2    @Base\iostream.jl:42; readline(s::IOStream; keep::Bool)
   ╎    ╎    ╎    ╎     2    @Base\lock.jl:103; lock
   ╎    ╎    ╎    ╎    ╎ 2    @Base\lock.jl:78; trylock
  1╎    ╎    ╎    ╎    ╎  1    @Base\lock.jl:80; _trylock(rl::ReentrantLock, ct::Task)
   ╎    ╎    ╎    ╎    ╎  1    @Base\lock.jl:81; _trylock(rl::ReentrantLock, ct::Task)
  1╎    ╎    ╎    ╎    ╎   1    @Base\gcutils.jl:126; disable_finalizers
 11╎    ╎    ╎    ╎    11   @Base\iostream.jl:43; readline(s::IOStream; keep::Bool)
   ╎    ╎    ╎    ╎    1    @Base\iostream.jl:44; readline(s::IOStream; keep::Bool)
   ╎    ╎    ╎    ╎     1    @Base\lock.jl:133; unlock
   ╎    ╎    ╎    ╎    ╎ 1    @Base\lock.jl:138; (::Base.var"#_unlock#588")(rl::ReentrantLock)
  1╎    ╎    ╎    ╎    ╎  1    @Base\Base.jl:54; swapproperty!
  1╎    ╎    ╎    ╎    1    @Base\iostream.jl:447; readline(s::IOStream; keep::Bool)
   ╎    ╎    ╎ 3    @Base\io.jl:386; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
  3╎    ╎    ╎  3    @Base\iostream.jl:43; close(s::IOStream)
   ╎    ╎  199  C:\dev\advent_of_code\2022\day18\part2.jl:74; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   199  @Base\broadcast.jl:860; materialize
   ╎    ╎    199  @Base\broadcast.jl:885; copy
   ╎    ╎     199  @Base\broadcast.jl:913; copyto!
   ╎    ╎    ╎ 199  @Base\broadcast.jl:960; copyto!
  1╎    ╎    ╎  1    @Base\simdloop.jl:75; macro expansion
   ╎    ╎    ╎  198  @Base\simdloop.jl:77; macro expansion
   ╎    ╎    ╎   198  @Base\broadcast.jl:961; macro expansion
   ╎    ╎    ╎    198  @Base\broadcast.jl:597; getindex
   ╎    ╎    ╎     198  @Base\broadcast.jl:643; _broadcast_getindex
   ╎    ╎    ╎    ╎ 198  @Base\broadcast.jl:670; _broadcast_getindex_evalf
  2╎    ╎    ╎    ╎  198  C:\dev\advent_of_code\2022\day18\part2.jl:59; parseline
  1╎    ╎    ╎    ╎   1    C:\dev\advent_of_code\2022\day18\part2.jl:0; Cube(line::String)
  2╎    ╎    ╎    ╎   2    C:\dev\advent_of_code\2022\day18\part2.jl:29; Cube(line::String)
   ╎    ╎    ╎    ╎   13   C:\dev\advent_of_code\2022\day18\part2.jl:30; Cube(line::String)
   ╎    ╎    ╎    ╎    13   @Base\array.jl:126; vect
   ╎    ╎    ╎    ╎     13   @Base\array.jl:679; _array_for
   ╎    ╎    ╎    ╎    ╎ 13   @Base\array.jl:676; _array_for
   ╎    ╎    ╎    ╎    ╎  13   @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎    ╎    ╎   13   @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎    ╎    ╎    13   @Base\boot.jl:468; Array
 13╎    ╎    ╎    ╎    ╎     13   @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎   43   C:\dev\advent_of_code\2022\day18\part2.jl:31; Cube(line::String)
   ╎    ╎    ╎    ╎    43   @Base\strings\util.jl:592; split
   ╎    ╎    ╎    ╎     43   @Base\strings\util.jl:595; #split#438
   ╎    ╎    ╎    ╎    ╎ 43   @Base\array.jl:647; collect
  1╎    ╎    ╎    ╎    ╎  1    @Base\array.jl:651; _collect(#unused#::Type{SubString{String}}, itr::Base.SplitIterator{String, Base.Fix2{typeof(isequal), Char}}, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎    ╎  13   @Base\array.jl:652; _collect(#unused#::Type{SubString{String}}, itr::Base.SplitIterator{String, Base.Fix2{typeof(isequal), Char}}, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎    ╎   13   @Base\boot.jl:478; Array
 13╎    ╎    ╎    ╎    ╎    13   @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎    ╎  6    @Base\array.jl:653; _collect(#unused#::Type{SubString{String}}, itr::Base.SplitIterator{String, Base.Fix2{typeof(isequal), Char}}, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎    ╎   6    @Base\strings\util.jl:532; iterate
   ╎    ╎    ╎    ╎    ╎    2    @Base\strings\util.jl:533; iterate
  1╎    ╎    ╎    ╎    ╎     2    @Base\strings\search.jl:0; findnext(pred::Base.Fix2{typeof(isequal), Char}, s::String, i::Int64)
  1╎    ╎    ╎    ╎    ╎    ╎ 1    @Base\boot.jl:0; _search(a::String, b::UInt8, i::Int64)
   ╎    ╎    ╎    ╎    ╎    1    @Base\strings\util.jl:536; iterate
  1╎    ╎    ╎    ╎    ╎     1    @Base\int.jl:481; <=
   ╎    ╎    ╎    ╎    ╎    3    @Base\strings\util.jl:538; iterate
   ╎    ╎    ╎    ╎    ╎     3    @Base\strings\substring.jl:38; SubString
   ╎    ╎    ╎    ╎    ╎    ╎ 3    @Base\strings\substring.jl:34; SubString
  1╎    ╎    ╎    ╎    ╎    ╎  3    @Base\strings\string.jl:154; nextind
  1╎    ╎    ╎    ╎    ╎    ╎   1    @Base\strings\string.jl:157; _nextind_str(s::String, i::Int64)
  1╎    ╎    ╎    ╎    ╎    ╎   1    @Base\strings\string.jl:162; _nextind_str(s::String, i::Int64)
   ╎    ╎    ╎    ╎    ╎  12   @Base\array.jl:654; _collect(#unused#::Type{SubString{String}}, itr::Base.SplitIterator{String, Base.Fix2{typeof(isequal), Char}}, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎    ╎   12   @Base\array.jl:1058; push!
 12╎    ╎    ╎    ╎    ╎    12   @Base\array.jl:1011; _growend!
   ╎    ╎    ╎    ╎    ╎  11   @Base\array.jl:655; _collect(#unused#::Type{SubString{String}}, itr::Base.SplitIterator{String, Base.Fix2{typeof(isequal), Char}}, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎    ╎   6    @Base\strings\util.jl:533; iterate
  1╎    ╎    ╎    ╎    ╎    2    @Base\strings\search.jl:0; findnext(pred::Base.Fix2{typeof(isequal), Char}, s::String, i::Int64)
   ╎    ╎    ╎    ╎    ╎     1    @Base\strings\search.jl:41; _search(a::String, b::UInt8, i::Int64)
   ╎    ╎    ╎    ╎    ╎    ╎ 1    @Base\pointer.jl:155; ==
  1╎    ╎    ╎    ╎    ╎    ╎  1    @Base\promotion.jl:477; ==
  1╎    ╎    ╎    ╎    ╎    1    @Base\strings\search.jl:5; findnext(pred::Base.Fix2{typeof(isequal), Char}, s::String, i::Int64)
   ╎    ╎    ╎    ╎    ╎    3    @Base\strings\search.jl:11; findnext(pred::Base.Fix2{typeof(isequal), Char}, s::String, i::Int64)
  1╎    ╎    ╎    ╎    ╎     3    @Base\strings\string.jl:316; isvalid(s::String, i::Int64)
   ╎    ╎    ╎    ╎    ╎    ╎ 2    @Base\strings\string.jl:133; thisind
  1╎    ╎    ╎    ╎    ╎    ╎  1    @Base\strings\string.jl:0; _thisind_str
  1╎    ╎    ╎    ╎    ╎    ╎  1    @Base\strings\string.jl:142; _thisind_str
  1╎    ╎    ╎    ╎    ╎   1    @Base\strings\util.jl:534; iterate
   ╎    ╎    ╎    ╎    ╎   2    @Base\strings\util.jl:535; iterate
   ╎    ╎    ╎    ╎    ╎    2    @Base\strings\string.jl:154; nextind
   ╎    ╎    ╎    ╎    ╎     2    @Base\strings\string.jl:162; _nextind_str(s::String, i::Int64)
  2╎    ╎    ╎    ╎    ╎    ╎ 2    @Base\int.jl:482; <=
   ╎    ╎    ╎    ╎    ╎   1    @Base\strings\util.jl:538; iterate
   ╎    ╎    ╎    ╎    ╎    1    @Base\strings\basic.jl:494; prevind
  1╎    ╎    ╎    ╎    ╎     1    @Base\strings\basic.jl:497; prevind(s::String, i::Int64, n::Int64)
   ╎    ╎    ╎    ╎    ╎   1    @Base\strings\util.jl:546; iterate
   ╎    ╎    ╎    ╎    ╎    1    @Base\strings\substring.jl:39; SubString
   ╎    ╎    ╎    ╎    ╎     1    @Base\strings\basic.jl:181; lastindex(s::String)
   ╎    ╎    ╎    ╎    ╎    ╎ 1    @Base\strings\string.jl:133; thisind
  1╎    ╎    ╎    ╎    ╎    ╎  1    @Base\strings\string.jl:142; _thisind_str
   ╎    ╎    ╎    ╎   53   C:\dev\advent_of_code\2022\day18\part2.jl:32; Cube(line::String)
  4╎    ╎    ╎    ╎    4    @Base\array.jl:966; setindex!
   ╎    ╎    ╎    ╎    49   @Base\parse.jl:235; tryparse
  3╎    ╎    ╎    ╎     49   @Base\parse.jl:237; #tryparse#476
  3╎    ╎    ╎    ╎    ╎ 3    @Base\int.jl:0; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
  1╎    ╎    ╎    ╎    ╎ 1    @Base\parse.jl:0; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
  4╎    ╎    ╎    ╎    ╎ 4    @Base\parse.jl:106; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
   ╎    ╎    ╎    ╎    ╎ 19   @Base\parse.jl:107; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
  1╎    ╎    ╎    ╎    ╎  1    @Base\parse.jl:0; parseint_preamble(signed::Bool, base::Int64, s::SubString{String}, startpos::Int64, endpos::Int64)
  5╎    ╎    ╎    ╎    ╎  5    @Base\parse.jl:57; parseint_preamble(signed::Bool, base::Int64, s::SubString{String}, startpos::Int64, endpos::Int64)
  1╎    ╎    ╎    ╎    ╎  12   @Base\parse.jl:58; parseint_preamble(signed::Bool, base::Int64, s::SubString{String}, startpos::Int64, endpos::Int64)
  6╎    ╎    ╎    ╎    ╎   6    @Base\parse.jl:50; parseint_iterate(s::SubString{String}, startpos::Int64, endpos::Int64)
  1╎    ╎    ╎    ╎    ╎   2    @Base\parse.jl:51; parseint_iterate(s::SubString{String}, startpos::Int64, endpos::Int64)
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:83; <
   ╎    ╎    ╎    ╎    ╎   3    @Base\parse.jl:53; parseint_iterate(s::SubString{String}, startpos::Int64, endpos::Int64)
   ╎    ╎    ╎    ╎    ╎    3    @Base\strings\substring.jl:81; iterate
   ╎    ╎    ╎    ╎    ╎     3    @Base\strings\string.jl:200; iterate
   ╎    ╎    ╎    ╎    ╎    ╎ 3    @Base\strings\string.jl:32; between
  2╎    ╎    ╎    ╎    ╎    ╎  2    @Base\bool.jl:38; &
  1╎    ╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:482; <=
   ╎    ╎    ╎    ╎    ╎  1    @Base\parse.jl:60; parseint_preamble(signed::Bool, base::Int64, s::SubString{String}, startpos::Int64, endpos::Int64)
  1╎    ╎    ╎    ╎    ╎   1    @Base\strings\unicode.jl:495; isspace
  1╎    ╎    ╎    ╎    ╎ 1    @Base\parse.jl:116; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
   ╎    ╎    ╎    ╎    ╎ 11   @Base\parse.jl:120; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
  7╎    ╎    ╎    ╎    ╎  7    @Base\parse.jl:50; parseint_iterate(s::SubString{String}, startpos::Int64, endpos::Int64)
  2╎    ╎    ╎    ╎    ╎  3    @Base\parse.jl:51; parseint_iterate(s::SubString{String}, startpos::Int64, endpos::Int64)
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:83; <
   ╎    ╎    ╎    ╎    ╎  1    @Base\parse.jl:53; parseint_iterate(s::SubString{String}, startpos::Int64, endpos::Int64)
   ╎    ╎    ╎    ╎    ╎   1    @Base\strings\substring.jl:81; iterate
   ╎    ╎    ╎    ╎    ╎    1    @Base\strings\string.jl:200; iterate
   ╎    ╎    ╎    ╎    ╎     1    @Base\strings\string.jl:32; between
  1╎    ╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:482; <=
   ╎    ╎    ╎    ╎    ╎ 1    @Base\parse.jl:146; tryparse_internal(#unused#::Type{Int64}, s::SubString{String}, startpos::Int64, endpos::Int64, base_::Int64, raise::Bool)
  1╎    ╎    ╎    ╎    ╎  1    @Base\strings\substring.jl:79; iterate
  2╎    ╎    ╎    ╎    ╎ 6    @Base\strings\basic.jl:181; lastindex
  2╎    ╎    ╎    ╎    ╎  4    @Base\strings\substring.jl:104; thisind(s::SubString{String}, i::Int64)
  1╎    ╎    ╎    ╎    ╎   1    @Base\strings\string.jl:0; _thisind_str
  1╎    ╎    ╎    ╎    ╎   1    @Base\strings\string.jl:142; _thisind_str
   ╎    ╎    ╎    ╎   1    C:\dev\advent_of_code\2022\day18\part2.jl:33; Cube(line::String)
   ╎    ╎    ╎    ╎    1    @Base\iterators.jl:167; iterate
   ╎    ╎    ╎    ╎     1    @Base\array.jl:898; iterate
  1╎    ╎    ╎    ╎    ╎ 1    @Base\array.jl:215; length
  1╎    ╎    ╎    ╎   83   C:\dev\advent_of_code\2022\day18\part2.jl:34; Cube(line::String)
   ╎    ╎    ╎    ╎    68   @Base\tuple.jl:317; Tuple
 68╎    ╎    ╎    ╎     68   @Base\tuple.jl:352; _totuple
  2╎    ╎    ╎    ╎    14   C:\dev\advent_of_code\2022\day18\part2.jl:26; Cube
   ╎    ╎    ╎    ╎     12   @Base\array.jl:534; fill
   ╎    ╎    ╎    ╎    ╎ 12   @Base\array.jl:536; fill
   ╎    ╎    ╎    ╎    ╎  12   @Base\boot.jl:468; Array
 12╎    ╎    ╎    ╎    ╎   12   @Base\boot.jl:459; Array
   ╎    ╎  19   C:\dev\advent_of_code\2022\day18\part2.jl:76; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   19   @Base\dict.jl:129; Dict(kv::Base.Generator{Vector{Cube}, var"#2#5"})
   ╎    ╎    19   @Base\abstractdict.jl:582; dict_with_eltype
   ╎    ╎     19   @Base\abstractdict.jl:575; dict_with_eltype
   ╎    ╎    ╎ 3    @Base\dict.jl:102; Dict{Tuple{Int64, Int64, Int64}, Cube}(kv::Base.Generator{Vector{Cube}, var"#2#5"})
   ╎    ╎    ╎  3    @Base\dict.jl:244; sizehint!
   ╎    ╎    ╎   1    @Base\dict.jl:186; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, newsz::Int64)
   ╎    ╎    ╎    1    @Base\array.jl:1236; resize!
  1╎    ╎    ╎     1    @Base\array.jl:1011; _growend!
   ╎    ╎    ╎   2    @Base\dict.jl:187; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, newsz::Int64)
   ╎    ╎    ╎    2    @Base\array.jl:1236; resize!
  2╎    ╎    ╎     2    @Base\array.jl:1011; _growend!
   ╎    ╎    ╎ 16   @Base\dict.jl:104; Dict{Tuple{Int64, Int64, Int64}, Cube}(kv::Base.Generator{Vector{Cube}, var"#2#5"})
  2╎    ╎    ╎  2    @Base\dict.jl:381; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, v0::Cube, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎  9    @Base\dict.jl:383; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, v0::Cube, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎   6    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎    6    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎     5    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎ 5    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎     1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎   1    @Base\int.jl:86; -
   ╎    ╎    ╎    ╎  3    @Base\tuple.jl:434; hash
   ╎    ╎    ╎    ╎   3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎    3    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎     2    @Base\hashing.jl:36; hash_64_64
  2╎    ╎    ╎    ╎    ╎ 2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎     1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    ╎ 1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:87; +
  1╎    ╎    ╎     1    @Base\int.jl:87; +
  1╎    ╎    ╎   1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎   2    @Base\dict.jl:315; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, key::Tuple{Int64, Int64, Int64})
  2╎    ╎    ╎    2    @Base\int.jl:83; <
   ╎    ╎    ╎  5    @Base\dict.jl:390; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, v0::Cube, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎   1    @Base\dict.jl:355; _setindex!
  1╎    ╎    ╎    1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎   2    @Base\dict.jl:356; _setindex!
  2╎    ╎    ╎    2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎   1    @Base\dict.jl:357; _setindex!
  1╎    ╎    ╎    1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎   1    @Base\dict.jl:360; _setindex!
  1╎    ╎    ╎    1    @Base\int.jl:83; <
   ╎    ╎  16   C:\dev\advent_of_code\2022\day18\part2.jl:83; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   16   @Base\broadcast.jl:860; materialize
   ╎    ╎    16   @Base\broadcast.jl:885; copy
   ╎    ╎     16   @Base\broadcast.jl:211; similar
   ╎    ╎    ╎ 16   @Base\broadcast.jl:212; similar
   ╎    ╎    ╎  16   @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎   16   @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎    16   @Base\boot.jl:476; Array
   ╎    ╎    ╎     16   @Base\boot.jl:468; Array
 16╎    ╎    ╎    ╎ 16   @Base\boot.jl:459; Array
   ╎    ╎  7    C:\dev\advent_of_code\2022\day18\part2.jl:84; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   7    @Base\broadcast.jl:860; materialize
   ╎    ╎    7    @Base\broadcast.jl:885; copy
   ╎    ╎     1    @Base\broadcast.jl:913; copyto!
   ╎    ╎    ╎ 1    @Base\broadcast.jl:957; copyto!
   ╎    ╎    ╎  1    @Base\broadcast.jl:940; preprocess
   ╎    ╎    ╎   1    @Base\broadcast.jl:943; preprocess_args
   ╎    ╎    ╎    1    @Base\broadcast.jl:941; preprocess
   ╎    ╎    ╎     1    @Base\broadcast.jl:637; extrude
   ╎    ╎    ╎    ╎ 1    @Base\broadcast.jl:586; newindexer
   ╎    ╎    ╎    ╎  1    @Base\broadcast.jl:587; shapeindexer
   ╎    ╎    ╎    ╎   1    @Base\broadcast.jl:592; _newindexer
   ╎    ╎    ╎    ╎    1    @Base\operators.jl:282; !=
  1╎    ╎    ╎    ╎     1    @Base\promotion.jl:477; ==
   ╎    ╎     6    @Base\broadcast.jl:211; similar
   ╎    ╎    ╎ 6    @Base\broadcast.jl:212; similar
   ╎    ╎    ╎  6    @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎   6    @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎    6    @Base\boot.jl:476; Array
   ╎    ╎    ╎     6    @Base\boot.jl:468; Array
  6╎    ╎    ╎    ╎ 6    @Base\boot.jl:459; Array
   ╎    ╎  23   C:\dev\advent_of_code\2022\day18\part2.jl:97; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   23   @Base\set.jl:67; push!
  1╎    ╎    1    @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    20   @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  2╎    ╎     2    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     2    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎ 2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎  2    @Base\hashing.jl:20; hash
   ╎    ╎    ╎   2    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    ╎    2    @Base\tuple.jl:434; hash
   ╎    ╎    ╎     1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎     1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎     1    @Base\int.jl:495; >>
  1╎    ╎     1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     1    @Base\dict.jl:315; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎    ╎ 1    @Base\int.jl:83; <
  3╎    ╎     3    @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     11   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎ 1    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎  1    @Base\range.jl:879; iterate
  1╎    ╎    ╎ 1    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎ 1    @Base\dict.jl:201; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎  1    @Base\array.jl:924; getindex
  6╎    ╎    ╎ 7    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  1    @Base\dict.jl:169; hashindex(key::Tuple{Int64, Int64, Int64}, sz::Int64)
   ╎    ╎    ╎   1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    1    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    ╎     1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎    ╎ 1    @Base\dict.jl:210; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎  1    @Base\essentials.jl:492; setindex!
   ╎    ╎    2    @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     2    @Base\dict.jl:368; _setindex!
   ╎    ╎    ╎ 1    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎   1    @Base\array.jl:588; zeros
   ╎    ╎    ╎    1    @Base\boot.jl:468; Array
  1╎    ╎    ╎     1    @Base\boot.jl:459; Array
   ╎    ╎    ╎ 1    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎  1    @Base\dict.jl:169; hashindex(key::Tuple{Int64, Int64, Int64}, sz::Int64)
   ╎    ╎  9    C:\dev\advent_of_code\2022\day18\part2.jl:105; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   9    @Base\set.jl:67; push!
  2╎    ╎    2    @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    4    @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     2    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    ╎ 2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎  1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎   1    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    ╎    1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎     1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎    1    @Base\int.jl:366; xor
  1╎    ╎    ╎  1    @Base\int.jl:86; -
  1╎    ╎     1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎     1    @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    3    @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     3    @Base\dict.jl:356; _setindex!
  3╎    ╎    ╎ 3    @Base\essentials.jl:492; setindex!
   ╎    ╎  45   C:\dev\advent_of_code\2022\day18\part2.jl:113; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   45   @Base\set.jl:67; push!
  1╎    ╎    1    @Base\dict.jl:0; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    11   @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  1╎    ╎     1    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎     1    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎     1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  8╎    ╎     8    @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎    33   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎     2    @Base\dict.jl:356; _setindex!
  2╎    ╎    ╎ 2    @Base\essentials.jl:492; setindex!
   ╎    ╎     31   @Base\dict.jl:368; _setindex!
  1╎    ╎    ╎ 1    @Base\array.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎ 4    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  4╎    ╎    ╎  4    @Base\boot.jl:459; Array
   ╎    ╎    ╎ 2    @Base\dict.jl:201; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎  2    @Base\array.jl:924; getindex
 19╎    ╎    ╎ 21   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  2    @Base\dict.jl:169; hashindex(key::Tuple{Int64, Int64, Int64}, sz::Int64)
   ╎    ╎    ╎   2    @Base\hashing.jl:20; hash
  1╎    ╎    ╎    2    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    ╎     1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎    ╎ 1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎     1    @Base\int.jl:366; xor
   ╎    ╎    ╎ 2    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  2    @Base\operators.jl:282; !=
   ╎    ╎    ╎   2    @Base\int.jl:485; ==
   ╎    ╎    ╎    2    @Base\promotion.jl:427; ==
  2╎    ╎    ╎     2    @Base\promotion.jl:477; ==
   ╎    ╎    ╎ 1    @Base\dict.jl:210; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎  1    @Base\essentials.jl:492; setindex!
 28╎    ╎  102  C:\dev\advent_of_code\2022\day18\part2.jl:148; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   74   @Base\reducedim.jl:440; count(f::Function, A::Vector{Bool})
   ╎    ╎    74   @Base\reducedim.jl:440; #count#769
 24╎    ╎     74   @Base\reducedim.jl:442; _count(f::Function, A::Vector{Bool}, dims::Colon, init::Int64)
 48╎    ╎    ╎ 50   @Base\reduce.jl:1297; _simple_count(pred::Function, itr::Vector{Bool}, init::Int64)
  1╎    ╎    ╎  1    @Base\reduce.jl:1299; _simple_count_helper(g::Base.Generator{Vector{Bool}, var"#4#8"}, init::Int64)
   ╎    ╎    ╎  1    @Base\reduce.jl:1303; _simple_count_helper(g::Base.Generator{Vector{Bool}, var"#4#8"}, init::Int64)
   ╎    ╎    ╎   1    @Base\generator.jl:44; iterate
  1╎    ╎    ╎    1    @Base\array.jl:898; iterate
   ╎    ╎  2    C:\dev\advent_of_code\2022\day18\part2.jl:149; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   2    @Base\array.jl:898; iterate
  2╎    ╎    2    @Base\array.jl:924; getindex
   ╎1260 @Base\threadingconstructs.jl:30; (::Base.Threads.var"#1#2"{var"#65#threadsfor_fun#6"{var"#65#threadsfor_fun#3#7"{Set{Tuple{Int64, Int64, Int64}}, Set{Any}, Dict{Tuple{Int64, Int64, Int64}, Cube}, Base.OneTo{Int64}}}, Int64})()
   ╎ 1260 @Base\threadingconstructs.jl:51; #65#threadsfor_fun
  2╎  2    @Base\range.jl:0; (::var"#65#threadsfor_fun#6"{var"#65#threadsfor_fun#3#7"{Set{Tuple{Int64, Int64, Int64}}, Set{Any}, Dict{Tuple{Int64, Int64, Int64}, Cube}, Base.OneTo{Int64}}})(tid::Int64; onethread::Bool)
  1╎  1    @Base\threadingconstructs.jl:0; (::var"#65#threadsfor_fun#6"{var"#65#threadsfor_fun#3#7"{Set{Tuple{Int64, Int64, Int64}}, Set{Any}, Dict{Tuple{Int64, Int64, Int64}, Cube}, Base.OneTo{Int64}}})(tid::Int64; onethread::Bool)
   ╎  23   @Base\threadingconstructs.jl:82; (::var"#65#threadsfor_fun#6"{var"#65#threadsfor_fun#3#7"{Set{Tuple{Int64, Int64, Int64}}, Set{Any}, Dict{Tuple{Int64, Int64, Int64}, Cube}, Base.OneTo{Int64}}})(tid::Int64; onethread::Bool)
 19╎   19   @Base\range.jl:0; iterate
  4╎   4    @Base\range.jl:879; iterate
   ╎  1225 @Base\threadingconstructs.jl:84; (::var"#65#threadsfor_fun#6"{var"#65#threadsfor_fun#3#7"{Set{Tuple{Int64, Int64, Int64}}, Set{Any}, Dict{Tuple{Int64, Int64, Int64}, Cube}, Base.OneTo{Int64}}})(tid::Int64; onethread::Bool)
  9╎   9    C:\dev\advent_of_code\2022\day18\part2.jl:0; macro expansion
  1╎   5    C:\dev\advent_of_code\2022\day18\part2.jl:121; macro expansion
   ╎    4    @Base\operators.jl:382; >
  4╎     4    @Base\int.jl:83; <
   ╎   213  C:\dev\advent_of_code\2022\day18\part2.jl:122; macro expansion
  7╎    213  @Base\set.jl:73; pop!
  6╎     6    @Base\dict.jl:636; pop!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing})
   ╎     191  @Base\dict.jl:638; pop!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing})
   ╎    ╎ 187  @Base\dict.jl:696; skip_deleted_floor!
 28╎    ╎  28   @Base\dict.jl:689; skip_deleted
  1╎    ╎  159  @Base\dict.jl:692; skip_deleted
158╎    ╎   158  @Base\range.jl:883; iterate
  4╎    ╎ 4    @Base\dict.jl:697; skip_deleted_floor!
   ╎     8    @Base\dict.jl:639; pop!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing})
  8╎    ╎ 8    @Base\array.jl:924; getindex
  1╎     1    @Base\dict.jl:642; pop!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing})
  2╎   4    C:\dev\advent_of_code\2022\day18\part2.jl:126; macro expansion
  2╎    2    C:\dev\advent_of_code\2022\day18\part2.jl:38; facing
   ╎   475  C:\dev\advent_of_code\2022\day18\part2.jl:127; macro expansion
   ╎    475  @Base\set.jl:66; in
  8╎     475  @Base\dict.jl:569; haskey
 32╎    ╎ 32   @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
 46╎    ╎ 46   @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎ 1    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎ 49   @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎  49   @Base\dict.jl:169; hashindex
   ╎    ╎   42   @Base\hashing.jl:20; hash
  2╎    ╎    42   @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
  4╎    ╎     16   @Base\hashing.jl:75; hash
   ╎    ╎    ╎ 12   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎  6    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    2    @Base\int.jl:495; >>
  4╎    ╎    ╎   4    @Base\int.jl:366; xor
   ╎    ╎    ╎  2    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎     24   @Base\tuple.jl:434; hash
   ╎    ╎    ╎ 8    @Base\hashing.jl:75; hash
   ╎    ╎    ╎  8    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎   2    @Base\hashing.jl:34; hash_64_64
  2╎    ╎    ╎    2    @Base\int.jl:366; xor
   ╎    ╎    ╎   3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    3    @Base\operators.jl:591; +
  3╎    ╎    ╎     3    @Base\int.jl:87; +
   ╎    ╎    ╎   2    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎     1    @Base\int.jl:495; >>
  1╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎    ╎    ╎   1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎ 16   @Base\tuple.jl:434; hash
   ╎    ╎    ╎  16   @Base\hashing.jl:75; hash
   ╎    ╎    ╎   12   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎     1    @Base\int.jl:314; ~
   ╎    ╎    ╎    3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎     3    @Base\operators.jl:591; +
  3╎    ╎    ╎    ╎ 3    @Base\int.jl:87; +
   ╎    ╎    ╎    5    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎     2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:495; >>
  3╎    ╎    ╎     3    @Base\int.jl:366; xor
   ╎    ╎    ╎    3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎     3    @Base\int.jl:87; +
  4╎    ╎    ╎   4    @Base\int.jl:86; -
  7╎    ╎   7    @Base\int.jl:86; -
 35╎    ╎ 37   @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎  2    @Base\dict.jl:171; isslotempty
  2╎    ╎   2    @Base\array.jl:924; getindex
264╎    ╎ 301  @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
 36╎    ╎  36   @Base\array.jl:924; getindex
   ╎    ╎  1    @Base\tuple.jl:384; isequal(t1::Tuple{Int64, Int64, Int64}, t2::Tuple{Int64, Int64, Int64})
   ╎    ╎   1    @Base\tuple.jl:387; _isequal
   ╎    ╎    1    @Base\operators.jl:140; isequal
  1╎    ╎     1    @Base\promotion.jl:477; ==
  1╎    ╎ 1    @Base\dict.jl:297; ht_keyindex(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎   80   C:\dev\advent_of_code\2022\day18\part2.jl:132; macro expansion
   ╎    80   @Base\dict.jl:569; haskey
 13╎     13   @Base\dict.jl:0; ht_keyindex
   ╎     32   @Base\dict.jl:284; ht_keyindex
   ╎    ╎ 32   @Base\dict.jl:169; hashindex
  4╎    ╎  29   @Base\hashing.jl:20; hash
   ╎    ╎   25   @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    11   @Base\hashing.jl:75; hash
   ╎    ╎     11   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎ 2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎  2    @Base\int.jl:314; ~
   ╎    ╎    ╎ 1    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎  1    @Base\int.jl:501; >>
  1╎    ╎    ╎   1    @Base\int.jl:495; >>
   ╎    ╎    ╎ 1    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎  1    @Base\int.jl:501; >>
  1╎    ╎    ╎   1    @Base\int.jl:495; >>
   ╎    ╎    ╎ 7    @Base\hashing.jl:39; hash_64_64
  7╎    ╎    ╎  7    @Base\int.jl:87; +
   ╎    ╎    14   @Base\tuple.jl:434; hash
   ╎    ╎     3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎ 3    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎  1    @Base\hashing.jl:34; hash_64_64
  1╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎     11   @Base\tuple.jl:434; hash
   ╎    ╎    ╎ 11   @Base\hashing.jl:75; hash
   ╎    ╎    ╎  9    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎   1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    1    @Base\operators.jl:591; +
  1╎    ╎    ╎     1    @Base\int.jl:87; +
   ╎    ╎    ╎   1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎     1    @Base\int.jl:495; >>
   ╎    ╎    ╎   3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    3    @Base\operators.jl:591; +
  3╎    ╎    ╎     3    @Base\int.jl:87; +
   ╎    ╎    ╎   1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎    ╎    ╎   3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    3    @Base\int.jl:87; +
   ╎    ╎    ╎  1    @Base\int.jl:991; *
  1╎    ╎    ╎   1    @Base\int.jl:88; *
  1╎    ╎    ╎  1    @Base\int.jl:86; -
  3╎    ╎  3    @Base\int.jl:86; -
  3╎     3    @Base\dict.jl:288; ht_keyindex
  4╎     32   @Base\dict.jl:291; ht_keyindex
 26╎    ╎ 26   @Base\array.jl:924; getindex
   ╎    ╎ 2    @Base\tuple.jl:384; isequal
  2╎    ╎  2    @Base\tuple.jl:387; _isequal
 14╎   29   C:\dev\advent_of_code\2022\day18\part2.jl:134; macro expansion
  5╎    5    @Base\dict.jl:496; getindex(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, key::Tuple{Int64, Int64, Int64})
   ╎    4    @Base\dict.jl:497; getindex(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, key::Tuple{Int64, Int64, Int64})
   ╎     3    @Base\dict.jl:284; ht_keyindex
   ╎    ╎ 3    @Base\dict.jl:169; hashindex
   ╎    ╎  3    @Base\hashing.jl:20; hash
   ╎    ╎   3    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    1    @Base\hashing.jl:75; hash
   ╎    ╎     1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎ 1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎  1    @Base\int.jl:87; +
   ╎    ╎    2    @Base\tuple.jl:434; hash
   ╎    ╎     1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎ 1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎     1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎   1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎     1    @Base\dict.jl:291; ht_keyindex
  1╎    ╎ 1    @Base\array.jl:924; getindex
   ╎    6    @Base\dict.jl:498; getindex(h::Dict{Tuple{Int64, Int64, Int64}, Cube}, key::Tuple{Int64, Int64, Int64})
  6╎     6    @Base\array.jl:924; getindex
   ╎   119  C:\dev\advent_of_code\2022\day18\part2.jl:137; macro expansion
  1╎    119  @Base\set.jl:67; push!
  1╎     1    @Base\dict.jl:381; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  2╎     100  @Base\dict.jl:383; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  5╎    ╎ 5    @Base\dict.jl:0; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎ 1    @Base\dict.jl:308; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎ 24   @Base\dict.jl:309; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎  24   @Base\dict.jl:169; hashindex
  3╎    ╎   20   @Base\hashing.jl:20; hash
  1╎    ╎    17   @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
  1╎    ╎     7    @Base\hashing.jl:75; hash
   ╎    ╎    ╎ 6    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎    ╎  1    @Base\hashing.jl:34; hash_64_64
  1╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎  4    @Base\hashing.jl:39; hash_64_64
  4╎    ╎    ╎   4    @Base\int.jl:87; +
   ╎    ╎     9    @Base\tuple.jl:434; hash
   ╎    ╎    ╎ 3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎  3    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎   1    @Base\hashing.jl:34; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎    ╎    ╎   1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    1    @Base\operators.jl:591; +
  1╎    ╎    ╎     1    @Base\int.jl:87; +
   ╎    ╎    ╎   1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎ 6    @Base\tuple.jl:434; hash
   ╎    ╎    ╎  6    @Base\hashing.jl:75; hash
   ╎    ╎    ╎   5    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    3    @Base\hashing.jl:38; hash_64_64
  3╎    ╎    ╎     3    @Base\int.jl:366; xor
   ╎    ╎    ╎    2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎     2    @Base\int.jl:87; +
   ╎    ╎    ╎   1    @Base\int.jl:991; *
  1╎    ╎    ╎    1    @Base\int.jl:88; *
  2╎    ╎   2    @Base\int.jl:87; +
  2╎    ╎   2    @Base\int.jl:86; -
   ╎    ╎ 1    @Base\dict.jl:311; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎  1    @Base\Base.jl:38; getproperty
 11╎    ╎ 11   @Base\dict.jl:314; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎ 4    @Base\dict.jl:315; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
  3╎    ╎  3    @Base\int.jl:83; <
  3╎    ╎ 3    @Base\dict.jl:322; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
 10╎    ╎ 33   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
 21╎    ╎  21   @Base\array.jl:924; getindex
   ╎    ╎  2    @Base\tuple.jl:384; isequal
  2╎    ╎   2    @Base\tuple.jl:387; _isequal
   ╎    ╎ 16   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎  1    @Base\dict.jl:0; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, newsz::Int64)
   ╎    ╎  1    @Base\dict.jl:192; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, newsz::Int64)
   ╎    ╎   1    @Base\array.jl:584; zeros
   ╎    ╎    1    @Base\array.jl:589; zeros
  1╎    ╎     1    @Base\array.jl:429; fill!
   ╎    ╎  2    @Base\dict.jl:193; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, newsz::Int64)
  2╎    ╎   2    @Base\boot.jl:459; Array
   ╎    ╎  1    @Base\dict.jl:203; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, newsz::Int64)
   ╎    ╎   1    @Base\dict.jl:169; hashindex
   ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎     1    @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎    ╎ 1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎  1    @Base\tuple.jl:434; hash
   ╎    ╎    ╎   1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎     1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:366; xor
   ╎    ╎  11   @Base\dict.jl:210; rehash!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, newsz::Int64)
 11╎    ╎   11   @Base\array.jl:966; setindex!
   ╎     1    @Base\dict.jl:387; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  1╎    ╎ 1    @Base\array.jl:966; setindex!
   ╎     15   @Base\dict.jl:390; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎ 3    @Base\dict.jl:355; _setindex!
  3╎    ╎  3    @Base\array.jl:966; setindex!
   ╎    ╎ 10   @Base\dict.jl:356; _setindex!
 10╎    ╎  10   @Base\array.jl:966; setindex!
   ╎    ╎ 1    @Base\dict.jl:366; _setindex!
  1╎    ╎  1    @Base\int.jl:88; *
  1╎    ╎ 1    @Base\int.jl:85; -
  1╎     1    @Base\dict.jl:393; setindex!(h::Dict{Tuple{Int64, Int64, Int64}, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎   287  C:\dev\advent_of_code\2022\day18\part2.jl:139; macro expansion
  1╎    287  @Base\set.jl:67; push!
 10╎     10   @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  3╎     229  @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
  6╎    ╎ 6    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  8╎    ╎ 8    @Base\dict.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
 13╎    ╎ 13   @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎ 2    @Base\dict.jl:306; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  2╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎ 21   @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎  21   @Base\dict.jl:169; hashindex
   ╎    ╎   19   @Base\hashing.jl:20; hash
  3╎    ╎    19   @Base\tuple.jl:434; hash(t::Tuple{Int64, Int64, Int64}, h::UInt64)
   ╎    ╎     7    @Base\hashing.jl:75; hash
   ╎    ╎    ╎ 7    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎  1    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎     9    @Base\tuple.jl:434; hash
   ╎    ╎    ╎ 3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎  3    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎   1    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎     1    @Base\int.jl:495; >>
   ╎    ╎    ╎   1    @Base\hashing.jl:36; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎    ╎    ╎   1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎    ╎    ╎ 6    @Base\tuple.jl:434; hash
   ╎    ╎    ╎  6    @Base\hashing.jl:75; hash
   ╎    ╎    ╎   3    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎     1    @Base\int.jl:87; +
   ╎    ╎    ╎    1    @Base\hashing.jl:36; hash_64_64
  1╎    ╎    ╎     1    @Base\int.jl:366; xor
   ╎    ╎    ╎    1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎     1    @Base\int.jl:366; xor
   ╎    ╎    ╎   2    @Base\int.jl:991; *
  2╎    ╎    ╎    2    @Base\int.jl:88; *
  1╎    ╎    ╎   1    @Base\int.jl:86; -
  2╎    ╎   2    @Base\int.jl:86; -
 21╎    ╎ 25   @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
   ╎    ╎  4    @Base\dict.jl:171; isslotempty
  4╎    ╎   4    @Base\array.jl:924; getindex
   ╎    ╎ 6    @Base\dict.jl:315; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  6╎    ╎  6    @Base\int.jl:83; <
141╎    ╎ 144  @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  2╎    ╎  2    @Base\array.jl:924; getindex
   ╎    ╎  1    @Base\tuple.jl:384; isequal(t1::Tuple{Int64, Int64, Int64}, t2::Tuple{Int64, Int64, Int64})
  1╎    ╎   1    @Base\tuple.jl:387; _isequal
   ╎    ╎ 1    @Base\dict.jl:332; ht_keyindex2!(h::Dict{Any, Nothing}, key::Tuple{Int64, Int64, Int64})
  1╎    ╎  1    @Base\int.jl:87; +
   ╎     33   @Base\dict.jl:387; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
 33╎    ╎ 33   @Base\essentials.jl:492; setindex!
   ╎     12   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎    ╎ 1    @Base\dict.jl:355; _setindex!
  1╎    ╎  1    @Base\array.jl:966; setindex!
   ╎    ╎ 9    @Base\dict.jl:356; _setindex!
  9╎    ╎  9    @Base\essentials.jl:492; setindex!
  1╎    ╎ 1    @Base\dict.jl:360; _setindex!
   ╎    ╎ 1    @Base\dict.jl:366; _setindex!
  1╎    ╎  1    @Base\int.jl:88; *
  2╎     2    @Base\dict.jl:393; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Tuple{Int64, Int64, Int64})
   ╎   4    C:\dev\advent_of_code\2022\day18\part2.jl:140; macro expansion
  4╎    4    @Base\tuple.jl:68; iterate
  9╎  9    C:\dev\advent_of_code\2022\day18\part2.jl:0; (::var"#65#threadsfor_fun#6"{var"#65#threadsfor_fun#3#7"{Set{Tuple{Int64, Int64, Int64}}, Set{Any}, Dict{Tuple{Int64, Int64, Int64}, Cube}, Base.OneTo{Int64}}})(tid::Int64; onethread::Bool)
Total snapshots: 1770. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
