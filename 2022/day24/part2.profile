Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
   ╎6252 @Base\client.jl:522; _start()
   ╎ 6252 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
   ╎  6252 @Base\Base.jl:419; include(mod::Module, _path::String)
   ╎   6252 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
   ╎    6252 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
  2╎     6252 @Base\boot.jl:368; eval
   ╎    ╎ 6249 C:\dev\advent_of_code\2022\day24\part2.jl:234; multi_main(numRuns::Int64)
   ╎    ╎  1    C:\dev\advent_of_code\2022\day24\part2.jl:189; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    @Base\io.jl:583; readlines
   ╎    ╎    1    @Base\io.jl:584; #readlines#398
   ╎    ╎     1    @Base\io.jl:381; open
   ╎    ╎    ╎ 1    @Base\io.jl:384; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎  1    @Base\io.jl:585; #399
   ╎    ╎    ╎   1    @Base\io.jl:588; readlines
   ╎    ╎    ╎    1    @Base\io.jl:588; #readlines#401
   ╎    ╎    ╎     1    @Base\array.jl:712; collect
   ╎    ╎    ╎    ╎ 1    @Base\array.jl:723; _collect(cont::UnitRange{Int64}, itr::Base.EachLine{IOStream}, #unused#::Base.HasEltype, isz::Base.SizeUnknown)
   ╎    ╎    ╎    ╎  1    @Base\io.jl:1062; iterate
   ╎    ╎    ╎    ╎   1    @Base\io.jl:1062; iterate(itr::Base.EachLine{IOStream}, state::Nothing)
   ╎    ╎    ╎    ╎    1    @Base\iostream.jl:43; eof(s::IOStream)
  1╎    ╎    ╎    ╎     1    @Base\iostream.jl:231; _eof_nolock
   ╎    ╎  1    C:\dev\advent_of_code\2022\day24\part2.jl:197; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:78; parsestate
  1╎    ╎    1    C:\dev\advent_of_code\2022\day24\part2.jl:61; BlizzardState(pos::CartesianIndex{2}, dir::Char)
   ╎    ╎  1    C:\dev\advent_of_code\2022\day24\part2.jl:201; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    @Base\set.jl:67; push!
   ╎    ╎    1    @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::BlizzardState)
   ╎    ╎     1    @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::BlizzardState)
   ╎    ╎    ╎ 1    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎  1    @Base\boot.jl:459; Array
   ╎    ╎  1    C:\dev\advent_of_code\2022\day24\part2.jl:213; main(loglevel::Base.CoreLogging.LogLevel)
  1╎    ╎   1    @Base\Base.jl:38; getproperty(x::OpenState, f::Symbol)
   ╎    ╎  1951 C:\dev\advent_of_code\2022\day24\part2.jl:223; main(loglevel::Base.CoreLogging.LogLevel)
  5╎    ╎   5    @Base\array.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎   1    @Base\iterators.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎   1    @Base\multidimensional.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  7╎    ╎   7    C:\dev\advent_of_code\2022\day24\part2.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   4    C:\dev\advent_of_code\2022\day24\part2.jl:92; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    4    @Base\set.jl:88; iterate
   ╎    ╎     4    @Base\dict.jl:713; iterate
  4╎    ╎    ╎ 4    @Base\dict.jl:713; iterate
 38╎    ╎   59   C:\dev\advent_of_code\2022\day24\part2.jl:97; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    21   C:\dev\advent_of_code\2022\day24\part2.jl:65; moveonestep
  6╎    ╎     6    @Base\Base.jl:38; getproperty
  2╎    ╎     2    C:\dev\advent_of_code\2022\day24\part2.jl:8; Forward
   ╎    ╎     4    C:\dev\advent_of_code\2022\day24\part2.jl:9; Forward
   ╎    ╎    ╎ 4    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  4    @Base\tuple.jl:247; map
  4╎    ╎    ╎   4    @Base\int.jl:87; +
   ╎    ╎     2    C:\dev\advent_of_code\2022\day24\part2.jl:11; Forward
   ╎    ╎    ╎ 2    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  2    @Base\tuple.jl:247; map
  2╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎     3    C:\dev\advent_of_code\2022\day24\part2.jl:13; Forward
   ╎    ╎    ╎ 3    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  3    @Base\tuple.jl:247; map
  3╎    ╎    ╎   3    @Base\int.jl:87; +
   ╎    ╎     4    C:\dev\advent_of_code\2022\day24\part2.jl:15; Forward
   ╎    ╎    ╎ 4    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  4    @Base\tuple.jl:247; map
  4╎    ╎    ╎   4    @Base\int.jl:87; +
  1╎    ╎   56   C:\dev\advent_of_code\2022\day24\part2.jl:98; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    55   @Base\set.jl:66; in
  2╎    ╎     55   @Base\dict.jl:569; haskey
  5╎    ╎    ╎ 5    @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 12   @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  4╎    ╎    ╎  4    @Base\array.jl:215; length
  7╎    ╎    ╎  7    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 2    @Base\dict.jl:283; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 12   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  12   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   12   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    12   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     12   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 9    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:33; hash_64_64
  3╎    ╎    ╎    ╎   3    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:38; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎   3    @Base\int.jl:87; +
  3╎    ╎    ╎    ╎ 3    @Base\int.jl:86; -
   ╎    ╎    ╎ 3    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:171; isslotempty
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 11   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 10╎    ╎    ╎  10   @Base\array.jl:924; getindex
   ╎    ╎    ╎  1    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   1    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    1    @Base\tuple.jl:398; ==
  1╎    ╎    ╎     1    @Base\tuple.jl:403; _eq
  8╎    ╎    ╎ 8    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  4╎    ╎   9    C:\dev\advent_of_code\2022\day24\part2.jl:99; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  4╎    ╎    4    @Base\Base.jl:38; getproperty(x::BlizzardState, f::Symbol)
  1╎    ╎    1    C:\dev\advent_of_code\2022\day24\part2.jl:0; wraparound(pos::CartesianIndex{2}, dir::FacingDir, height::Int64, width::Int64)
114╎    ╎   294  C:\dev\advent_of_code\2022\day24\part2.jl:103; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
180╎    ╎    180  @Base\Base.jl:39; setproperty!(x::BlizzardState, f::Symbol, v::CartesianIndex{2})
   ╎    ╎   54   C:\dev\advent_of_code\2022\day24\part2.jl:104; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    54   @Base\set.jl:88; iterate
   ╎    ╎     3    @Base\dict.jl:713; iterate
  3╎    ╎    ╎ 3    @Base\promotion.jl:477; ==
   ╎    ╎     30   @Base\dict.jl:714; iterate
   ╎    ╎    ╎ 8    @Base\dict.jl:687; skip_deleted
  8╎    ╎    ╎  8    @Base\array.jl:215; length
   ╎    ╎    ╎ 5    @Base\dict.jl:688; skip_deleted
   ╎    ╎    ╎  5    @Base\range.jl:5; Colon
   ╎    ╎    ╎   5    @Base\range.jl:393; UnitRange
  1╎    ╎    ╎    5    @Base\range.jl:400; unitrange_last
   ╎    ╎    ╎     4    @Base\operators.jl:429; >=
  4╎    ╎    ╎    ╎ 4    @Base\int.jl:481; <=
  1╎    ╎    ╎ 10   @Base\dict.jl:689; skip_deleted
   ╎    ╎    ╎  9    @Base\dict.jl:172; isslotfilled
  9╎    ╎    ╎   9    @Base\promotion.jl:477; ==
   ╎    ╎    ╎ 7    @Base\dict.jl:692; skip_deleted
  7╎    ╎    ╎  7    @Base\range.jl:883; iterate
  2╎    ╎     3    @Base\dict.jl:715; iterate
  1╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎     1    @Base\dict.jl:716; iterate
  1╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
   ╎    ╎     17   @Base\dict.jl:717; iterate
 17╎    ╎    ╎ 17   @Base\array.jl:924; getindex
   ╎    ╎   272  C:\dev\advent_of_code\2022\day24\part2.jl:105; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    272  @Base\set.jl:31; Set
   ╎    ╎     272  @Base\set.jl:37; _Set
   ╎    ╎    ╎ 272  @Base\array.jl:864; grow_to!(dest::Set{Any}, itr::Base.Generator{Set{Any}, var"#1#3"})
  4╎    ╎    ╎  4    @Base\array.jl:885; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎  141  @Base\array.jl:886; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
  1╎    ╎    ╎   141  @Base\set.jl:67; push!
  1╎    ╎    ╎    1    @Base\dict.jl:381; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  3╎    ╎    ╎    105  @Base\dict.jl:383; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  3╎    ╎    ╎     3    @Base\dict.jl:0; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎     5    @Base\dict.jl:305; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     6    @Base\dict.jl:308; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  6╎    ╎    ╎    ╎ 6    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     27   @Base\dict.jl:309; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎    ╎ 27   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎  20   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎   20   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎    20   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎     14   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:33; hash_64_64
   ╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:503; <<
  2╎    ╎    ╎    ╎    ╎   2    @Base\int.jl:496; <<
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    ╎  1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎    ╎ 6    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:501; >>
  3╎    ╎    ╎    ╎    ╎   3    @Base\int.jl:495; >>
  3╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎     6    @Base\int.jl:991; *
  6╎    ╎    ╎    ╎    ╎ 6    @Base\int.jl:88; *
  1╎    ╎    ╎    ╎  1    @Base\int.jl:340; &
  5╎    ╎    ╎    ╎  5    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎  1    @Base\int.jl:86; -
 11╎    ╎    ╎     11   @Base\dict.jl:314; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     5    @Base\dict.jl:315; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎    ╎ 5    @Base\int.jl:83; <
  4╎    ╎    ╎     22   @Base\dict.jl:327; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 14╎    ╎    ╎    ╎ 14   @Base\array.jl:924; getindex
   ╎    ╎    ╎    ╎ 4    @Base\operators.jl:140; isequal
   ╎    ╎    ╎    ╎  4    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    ╎   4    @Base\tuple.jl:398; ==
  4╎    ╎    ╎    ╎    4    @Base\tuple.jl:403; _eq
  1╎    ╎    ╎     1    @Base\dict.jl:336; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     22   @Base\dict.jl:349; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎    ╎ 1    @Base\dict.jl:0; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎ 4    @Base\dict.jl:193; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  4╎    ╎    ╎    ╎  4    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:200; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  1╎    ╎    ╎    ╎  1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎    ╎ 5    @Base\dict.jl:203; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  5    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎   3    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎    3    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎     3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎    ╎ 3    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎   1    @Base\int.jl:340; &
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 3    @Base\dict.jl:204; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  2╎    ╎    ╎    ╎  2    @Base\array.jl:924; getindex
   ╎    ╎    ╎    ╎ 5    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  5╎    ╎    ╎    ╎  5    @Base\array.jl:966; setindex!
   ╎    ╎    ╎    ╎ 3    @Base\dict.jl:219; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  3    @Base\range.jl:883; iterate
  3╎    ╎    ╎    ╎   3    @Base\promotion.jl:477; ==
   ╎    ╎    ╎    3    @Base\dict.jl:385; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎     3    @Base\operators.jl:382; >
  3╎    ╎    ╎    ╎ 3    @Base\int.jl:83; <
   ╎    ╎    ╎    3    @Base\dict.jl:387; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  3╎    ╎    ╎     3    @Base\array.jl:966; setindex!
  1╎    ╎    ╎    1    @Base\dict.jl:388; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎    26   @Base\dict.jl:390; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎     2    @Base\dict.jl:355; _setindex!
  2╎    ╎    ╎    ╎ 2    @Base\array.jl:966; setindex!
   ╎    ╎    ╎     2    @Base\dict.jl:356; _setindex!
  2╎    ╎    ╎    ╎ 2    @Base\array.jl:966; setindex!
   ╎    ╎    ╎     8    @Base\dict.jl:358; _setindex!
  8╎    ╎    ╎    ╎ 8    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     13   @Base\dict.jl:368; _setindex!
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:192; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎    ╎   1    @Base\array.jl:588; zeros
   ╎    ╎    ╎    ╎    1    @Base\boot.jl:468; Array
  1╎    ╎    ╎    ╎     1    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:193; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  2╎    ╎    ╎    ╎  2    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:194; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  1╎    ╎    ╎    ╎  1    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:203; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎   2    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎    2    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎     2    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎  2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
  1╎    ╎    ╎    ╎ 2    @Base\dict.jl:204; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\operators.jl:282; !=
   ╎    ╎    ╎    ╎   1    @Base\int.jl:485; ==
   ╎    ╎    ╎    ╎    1    @Base\promotion.jl:427; ==
  1╎    ╎    ╎    ╎     1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:205; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  1╎    ╎    ╎    ╎  1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎ 4    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  4╎    ╎    ╎    ╎  4    @Base\array.jl:966; setindex!
  1╎    ╎    ╎     1    @Base\int.jl:85; -
  1╎    ╎    ╎    1    @Base\dict.jl:393; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎  127  @Base\array.jl:891; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎   18   @Base\generator.jl:44; iterate
   ╎    ╎    ╎    18   @Base\set.jl:88; iterate
   ╎    ╎    ╎     7    @Base\dict.jl:714; iterate
  6╎    ╎    ╎    ╎ 6    @Base\dict.jl:689; skip_deleted
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:692; skip_deleted
   ╎    ╎    ╎    ╎  1    @Base\range.jl:883; iterate
  1╎    ╎    ╎    ╎   1    @Base\promotion.jl:477; ==
  3╎    ╎    ╎     4    @Base\dict.jl:715; iterate
  1╎    ╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎     7    @Base\dict.jl:717; iterate
  7╎    ╎    ╎    ╎ 7    @Base\array.jl:924; getindex
105╎    ╎    ╎   109  @Base\generator.jl:47; iterate
  4╎    ╎    ╎    4    none:0; (::var"#1#3")(bliz::BlizzardState)
  2╎    ╎   2    C:\dev\advent_of_code\2022\day24\part2.jl:110; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   71   C:\dev\advent_of_code\2022\day24\part2.jl:111; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    71   @Base\set.jl:66; in
  2╎    ╎     71   @Base\dict.jl:569; haskey
  7╎    ╎    ╎ 7    @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎ 1    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 7    @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  5╎    ╎    ╎  5    @Base\array.jl:215; length
  1╎    ╎    ╎  1    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 2    @Base\dict.jl:283; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 22   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  22   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   21   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    21   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     21   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 18   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   3    @Base\operators.jl:591; +
  3╎    ╎    ╎    ╎    3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  8    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   3    @Base\int.jl:501; >>
  3╎    ╎    ╎    ╎    3    @Base\int.jl:495; >>
  5╎    ╎    ╎    ╎   5    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎   3    @Base\int.jl:87; +
  3╎    ╎    ╎    ╎ 3    @Base\int.jl:86; -
  1╎    ╎    ╎   1    @Base\int.jl:86; -
   ╎    ╎    ╎ 1    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
  2╎    ╎    ╎ 20   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 16╎    ╎    ╎  16   @Base\array.jl:924; getindex
   ╎    ╎    ╎  2    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   2    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    2    @Base\tuple.jl:398; ==
  2╎    ╎    ╎     2    @Base\tuple.jl:403; _eq
  9╎    ╎    ╎ 9    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
111╎    ╎   196  C:\dev\advent_of_code\2022\day24\part2.jl:114; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  3╎    ╎    85   @Base\set.jl:66; in(x::CartesianIndex{2}, s::Set{CartesianIndex{2}})
   ╎    ╎     82   @Base\dict.jl:569; haskey
 12╎    ╎    ╎ 12   @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 7    @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎  5    @Base\array.jl:215; length
  2╎    ╎    ╎  2    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 15   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  15   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   15   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    15   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     15   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 14   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   3    @Base\operators.jl:591; +
  3╎    ╎    ╎    ╎    3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  6    @Base\hashing.jl:39; hash_64_64
  6╎    ╎    ╎    ╎   6    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  2╎    ╎    ╎ 4    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  2    @Base\dict.jl:171; isslotempty
  2╎    ╎    ╎   2    @Base\array.jl:924; getindex
  5╎    ╎    ╎ 32   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 20╎    ╎    ╎  20   @Base\array.jl:924; getindex
   ╎    ╎    ╎  7    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   7    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    7    @Base\tuple.jl:398; ==
  7╎    ╎    ╎     7    @Base\tuple.jl:403; _eq
 12╎    ╎    ╎ 12   @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎   150  C:\dev\advent_of_code\2022\day24\part2.jl:118; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  3╎    ╎    150  @Base\set.jl:67; push!
  3╎    ╎     3    @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  3╎    ╎     113  @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  4╎    ╎    ╎ 4    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  8╎    ╎    ╎ 8    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:306; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 8    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  8    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   7    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    7    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     7    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 4    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  3╎    ╎    ╎    ╎ 3    @Base\int.jl:86; -
  1╎    ╎    ╎   1    @Base\int.jl:87; +
  5╎    ╎    ╎ 6    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 2    @Base\dict.jl:315; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\int.jl:83; <
 25╎    ╎    ╎ 27   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 1    @Base\dict.jl:342; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:39; setproperty!
   ╎    ╎    ╎ 53   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  9    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  9╎    ╎    ╎   9    @Base\boot.jl:459; Array
  2╎    ╎    ╎  4    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\array.jl:924; getindex
   ╎    ╎    ╎  3    @Base\dict.jl:201; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
 28╎    ╎    ╎  33   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   5    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    3    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     3    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎     1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  2    @Base\int.jl:991; *
  2╎    ╎    ╎    ╎   2    @Base\int.jl:88; *
  1╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎  2    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\operators.jl:282; !=
   ╎    ╎    ╎    2    @Base\int.jl:485; ==
   ╎    ╎    ╎     2    @Base\promotion.jl:427; ==
  2╎    ╎    ╎    ╎ 2    @Base\promotion.jl:477; ==
   ╎    ╎    ╎  1    @Base\dict.jl:209; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎  1    @Base\dict.jl:210; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\essentials.jl:492; setindex!
   ╎    ╎     30   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎ 7    @Base\dict.jl:356; _setindex!
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
  5╎    ╎    ╎  5    @Base\essentials.jl:492; setindex!
   ╎    ╎    ╎ 1    @Base\dict.jl:358; _setindex!
  1╎    ╎    ╎  1    @Base\Base.jl:39; setproperty!
   ╎    ╎    ╎ 1    @Base\dict.jl:366; _setindex!
  1╎    ╎    ╎  1    @Base\int.jl:88; *
   ╎    ╎    ╎ 21   @Base\dict.jl:368; _setindex!
  1╎    ╎    ╎  1    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  1    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   1    @Base\array.jl:584; zeros
   ╎    ╎    ╎    1    @Base\array.jl:588; zeros
   ╎    ╎    ╎     1    @Base\boot.jl:468; Array
  1╎    ╎    ╎    ╎ 1    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\boot.jl:459; Array
   ╎    ╎    ╎  3    @Base\dict.jl:194; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  3╎    ╎    ╎   3    @Base\boot.jl:459; Array
   ╎    ╎    ╎  2    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\range.jl:879; iterate
 10╎    ╎    ╎  11   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   1    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     1    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎   1    @Base\int.jl:88; *
   ╎    ╎    ╎  2    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\operators.jl:282; !=
   ╎    ╎    ╎    2    @Base\int.jl:485; ==
   ╎    ╎    ╎     2    @Base\promotion.jl:427; ==
  2╎    ╎    ╎    ╎ 2    @Base\promotion.jl:477; ==
  1╎    ╎     1    @Base\dict.jl:393; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:120; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    1    @Base\iterators.jl:257; iterate
   ╎    ╎   23   C:\dev\advent_of_code\2022\day24\part2.jl:128; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    23   @Base\set.jl:66; in
   ╎    ╎     23   @Base\dict.jl:569; haskey
  2╎    ╎    ╎ 2    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 9    @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  9    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   9    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    9    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     9    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 7    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:86; -
  1╎    ╎    ╎ 1    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  6╎    ╎    ╎ 7    @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\array.jl:924; getindex
   ╎    ╎   4    C:\dev\advent_of_code\2022\day24\part2.jl:129; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\array.jl:1064; push!
  1╎    ╎     1    @Base\array.jl:1011; _growend!
  3╎    ╎    3    @Base\array.jl:1065; push!
  1╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:134; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  6╎    ╎   6    C:\dev\advent_of_code\2022\day24\part2.jl:136; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   89   C:\dev\advent_of_code\2022\day24\part2.jl:142; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    89   @Base\set.jl:66; in
  1╎    ╎     89   @Base\dict.jl:569; haskey
 10╎    ╎    ╎ 10   @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 10╎    ╎    ╎ 10   @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 3    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎  3    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 14   @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  14   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   14   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    14   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     14   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 11   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎   1    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   3    @Base\operators.jl:591; +
  3╎    ╎    ╎    ╎    3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  5    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  4╎    ╎    ╎    ╎   4    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎ 2    @Base\int.jl:991; *
  2╎    ╎    ╎    ╎  2    @Base\int.jl:88; *
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  6╎    ╎    ╎ 6    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 35╎    ╎    ╎ 45   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  6╎    ╎    ╎  6    @Base\array.jl:924; getindex
   ╎    ╎    ╎  4    @Base\operators.jl:140; isequal(x::CartesianIndex{2}, y::CartesianIndex{2})
   ╎    ╎    ╎   4    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    4    @Base\tuple.jl:398; ==
   ╎    ╎    ╎     2    @Base\tuple.jl:402; _eq
  2╎    ╎    ╎    ╎ 2    @Base\promotion.jl:477; ==
  2╎    ╎    ╎     2    @Base\tuple.jl:403; _eq
 60╎    ╎   70   C:\dev\advent_of_code\2022\day24\part2.jl:143; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    10   @Base\array.jl:1064; push!
 10╎    ╎     10   @Base\array.jl:1011; _growend!
  1╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:146; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:150; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:151; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\iterators.jl:167; iterate
   ╎    ╎     1    @Base\array.jl:898; iterate
   ╎    ╎    ╎ 1    @Base\int.jl:487; <
  1╎    ╎    ╎  1    @Base\int.jl:480; <
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:156; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\set.jl:12; Set
   ╎    ╎     1    @Base\set.jl:9; Set
   ╎    ╎    ╎ 1    @Base\dict.jl:90; Dict{Any, Nothing}()
  1╎    ╎    ╎  1    @Base\boot.jl:459; Array
306╎    ╎   371  C:\dev\advent_of_code\2022\day24\part2.jl:158; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
 65╎    ╎    65   @Base\tuple.jl:29; getindex(t::Tuple, i::Int64)
 39╎    ╎   100  C:\dev\advent_of_code\2022\day24\part2.jl:159; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    61   @Base\set.jl:66; in(x::CartesianIndex{2}, s::Set{Any})
   ╎    ╎     60   @Base\dict.jl:569; haskey
  3╎    ╎    ╎ 3    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎ 4    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 4    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎  4    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 10   @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  10   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   10   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    10   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     10   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 9    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  8    @Base\hashing.jl:33; hash_64_64
  8╎    ╎    ╎    ╎   8    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎ 1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎  1    @Base\int.jl:88; *
  2╎    ╎    ╎ 2    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 31╎    ╎    ╎ 36   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎  5    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 1    @Base\dict.jl:296; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\int.jl:87; +
   ╎    ╎   8    C:\dev\advent_of_code\2022\day24\part2.jl:160; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    8    @Base\array.jl:1064; push!
  8╎    ╎     8    @Base\array.jl:1011; _growend!
 18╎    ╎   72   C:\dev\advent_of_code\2022\day24\part2.jl:161; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  2╎    ╎    54   @Base\set.jl:67; push!(s::Set{Any}, x::CartesianIndex{2})
  3╎    ╎     3    @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  1╎    ╎     34   @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   2    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    2    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     2    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  1╎    ╎    ╎ 1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  9╎    ╎    ╎ 10   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\operators.jl:140; isequal(x::CartesianIndex{2}, y::CartesianIndex{2})
   ╎    ╎    ╎ 16   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  2    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:879; iterate
  9╎    ╎    ╎  9    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  2    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\operators.jl:282; !=
   ╎    ╎    ╎    2    @Base\int.jl:485; ==
   ╎    ╎    ╎     2    @Base\promotion.jl:427; ==
  2╎    ╎    ╎    ╎ 2    @Base\promotion.jl:477; ==
   ╎    ╎    ╎  1    @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:883; iterate
   ╎    ╎     15   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  1╎    ╎    ╎ 1    @Base\dict.jl:366; _setindex!
   ╎    ╎    ╎ 14   @Base\dict.jl:368; _setindex!
   ╎    ╎    ╎  2    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\array.jl:584; zeros
   ╎    ╎    ╎    2    @Base\array.jl:588; zeros
   ╎    ╎    ╎     2    @Base\boot.jl:468; Array
  2╎    ╎    ╎    ╎ 2    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:879; iterate
   ╎    ╎    ╎  1    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
  8╎    ╎    ╎  9    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎  1    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   1    @Base\operators.jl:282; !=
   ╎    ╎    ╎    1    @Base\int.jl:485; ==
   ╎    ╎    ╎     1    @Base\promotion.jl:427; ==
  1╎    ╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎   3    C:\dev\advent_of_code\2022\day24\part2.jl:163; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    3    @Base\array.jl:898; iterate
  3╎    ╎     3    @Base\array.jl:924; getindex
   ╎    ╎   2    C:\dev\advent_of_code\2022\day24\part2.jl:164; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    2    @Base\logging.jl:376; macro expansion
   ╎    ╎     2    @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
   ╎    ╎    ╎ 2    @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
   ╎    ╎    ╎  2    @Base\env.jl:80; get
   ╎    ╎    ╎   1    @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
   ╎    ╎    ╎    1    @Base\c.jl:249; cwstring(s::String)
  1╎    ╎    ╎     1    @Base\operators.jl:1246; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
   ╎    ╎    ╎   1    @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
  1╎    ╎    ╎    1    @Base\env.jl:6; _getenvlen
   ╎    ╎   15   C:\dev\advent_of_code\2022\day24\part2.jl:167; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    15   @Base\array.jl:1057; push!(a::Vector{Vector{Tuple{Int64, CartesianIndex{2}}}}, item::Vector{Any})
   ╎    ╎     15   @Base\array.jl:617; convert
   ╎    ╎    ╎ 15   @Base\array.jl:626; Array
   ╎    ╎    ╎  12   @Base\abstractarray.jl:1127; copyto_axcheck!
   ╎    ╎    ╎   12   @Base\array.jl:343; copyto!
   ╎    ╎    ╎    12   @Base\array.jl:317; copyto!
   ╎    ╎    ╎     12   @Base\array.jl:331; _copyto_impl!
   ╎    ╎    ╎    ╎ 12   @Base\array.jl:307; unsafe_copyto!
 11╎    ╎    ╎    ╎  12   @Base\array.jl:253; _unsafe_copyto!(dest::Vector{Tuple{Int64, CartesianIndex{2}}}, doffs::Int64, src::Vector{Any}, soffs::Int64, n::Int64)
  1╎    ╎    ╎    ╎   1    @Base\array.jl:966; setindex!(A::Vector{Tuple{Int64, CartesianIndex{2}}}, x::Tuple{Int64, CartesianIndex{2}}, i1::Int64)
   ╎    ╎    ╎  3    @Base\boot.jl:468; Array
  3╎    ╎    ╎   3    @Base\boot.jl:459; Array
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:175; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    1    @Base\array.jl:924; getindex
   ╎    ╎  2077 C:\dev\advent_of_code\2022\day24\part2.jl:225; main(loglevel::Base.CoreLogging.LogLevel)
  3╎    ╎   3    @Base\array.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  8╎    ╎   8    C:\dev\advent_of_code\2022\day24\part2.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:89; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\logging.jl:376; macro expansion
   ╎    ╎     1    @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
   ╎    ╎    ╎ 1    @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
   ╎    ╎    ╎  1    @Base\env.jl:80; get
   ╎    ╎    ╎   1    @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
   ╎    ╎    ╎    1    @Base\c.jl:250; cwstring(s::String)
  1╎    ╎    ╎     1    @Base\c.jl:354; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:92; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\set.jl:88; iterate
   ╎    ╎     1    @Base\dict.jl:713; iterate
  1╎    ╎    ╎ 1    @Base\dict.jl:713; iterate
 53╎    ╎   73   C:\dev\advent_of_code\2022\day24\part2.jl:97; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    20   C:\dev\advent_of_code\2022\day24\part2.jl:65; moveonestep
  5╎    ╎     5    @Base\Base.jl:38; getproperty
  2╎    ╎     2    C:\dev\advent_of_code\2022\day24\part2.jl:8; Forward
   ╎    ╎     2    C:\dev\advent_of_code\2022\day24\part2.jl:9; Forward
   ╎    ╎    ╎ 2    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  2    @Base\tuple.jl:247; map
  2╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎     4    C:\dev\advent_of_code\2022\day24\part2.jl:11; Forward
   ╎    ╎    ╎ 4    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  4    @Base\tuple.jl:247; map
  4╎    ╎    ╎   4    @Base\int.jl:87; +
   ╎    ╎     3    C:\dev\advent_of_code\2022\day24\part2.jl:13; Forward
   ╎    ╎    ╎ 3    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  3    @Base\tuple.jl:247; map
  3╎    ╎    ╎   3    @Base\int.jl:87; +
   ╎    ╎     4    C:\dev\advent_of_code\2022\day24\part2.jl:15; Forward
   ╎    ╎    ╎ 4    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  4    @Base\tuple.jl:247; map
  4╎    ╎    ╎   4    @Base\int.jl:87; +
  1╎    ╎   71   C:\dev\advent_of_code\2022\day24\part2.jl:98; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    70   @Base\set.jl:66; in
  3╎    ╎     70   @Base\dict.jl:569; haskey
  6╎    ╎    ╎ 6    @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎ 3    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 9    @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  4╎    ╎    ╎  4    @Base\array.jl:215; length
  4╎    ╎    ╎  4    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 1    @Base\dict.jl:283; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 16   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  16   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   16   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    16   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     16   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 15   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   3    @Base\operators.jl:591; +
  3╎    ╎    ╎    ╎    3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  2╎    ╎    ╎ 5    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:171; isslotempty
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 21   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 20╎    ╎    ╎  20   @Base\array.jl:924; getindex
   ╎    ╎    ╎  1    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   1    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    1    @Base\tuple.jl:398; ==
  1╎    ╎    ╎     1    @Base\tuple.jl:403; _eq
  6╎    ╎    ╎ 6    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  5╎    ╎   8    C:\dev\advent_of_code\2022\day24\part2.jl:99; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  3╎    ╎    3    @Base\Base.jl:38; getproperty(x::BlizzardState, f::Symbol)
137╎    ╎   342  C:\dev\advent_of_code\2022\day24\part2.jl:103; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
205╎    ╎    205  @Base\Base.jl:39; setproperty!(x::BlizzardState, f::Symbol, v::CartesianIndex{2})
   ╎    ╎   34   C:\dev\advent_of_code\2022\day24\part2.jl:104; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    34   @Base\set.jl:88; iterate
   ╎    ╎     1    @Base\dict.jl:713; iterate
  1╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎     20   @Base\dict.jl:714; iterate
   ╎    ╎    ╎ 1    @Base\dict.jl:687; skip_deleted
  1╎    ╎    ╎  1    @Base\array.jl:215; length
   ╎    ╎    ╎ 2    @Base\dict.jl:688; skip_deleted
   ╎    ╎    ╎  2    @Base\range.jl:5; Colon
   ╎    ╎    ╎   2    @Base\range.jl:393; UnitRange
   ╎    ╎    ╎    2    @Base\range.jl:400; unitrange_last
   ╎    ╎    ╎     2    @Base\operators.jl:429; >=
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:481; <=
  1╎    ╎    ╎ 8    @Base\dict.jl:689; skip_deleted
   ╎    ╎    ╎  7    @Base\dict.jl:172; isslotfilled
  7╎    ╎    ╎   7    @Base\promotion.jl:477; ==
   ╎    ╎    ╎ 9    @Base\dict.jl:692; skip_deleted
  9╎    ╎    ╎  9    @Base\range.jl:883; iterate
  4╎    ╎     5    @Base\dict.jl:715; iterate
  1╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎     2    @Base\dict.jl:716; iterate
  2╎    ╎    ╎ 2    @Base\Base.jl:38; getproperty
   ╎    ╎     6    @Base\dict.jl:717; iterate
  6╎    ╎    ╎ 6    @Base\array.jl:924; getindex
   ╎    ╎   282  C:\dev\advent_of_code\2022\day24\part2.jl:105; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    282  @Base\set.jl:31; Set
   ╎    ╎     282  @Base\set.jl:37; _Set
  1╎    ╎    ╎ 1    @Base\array.jl:862; grow_to!(dest::Set{Any}, itr::Base.Generator{Set{Any}, var"#1#3"})
   ╎    ╎    ╎ 281  @Base\array.jl:864; grow_to!(dest::Set{Any}, itr::Base.Generator{Set{Any}, var"#1#3"})
  1╎    ╎    ╎  1    @Base\array.jl:883; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
  2╎    ╎    ╎  2    @Base\array.jl:885; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎  142  @Base\array.jl:886; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎   142  @Base\set.jl:67; push!
  2╎    ╎    ╎    2    @Base\dict.jl:381; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  1╎    ╎    ╎    118  @Base\dict.jl:383; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  6╎    ╎    ╎     6    @Base\dict.jl:0; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  6╎    ╎    ╎     6    @Base\dict.jl:305; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     4    @Base\dict.jl:308; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎    ╎ 4    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     31   @Base\dict.jl:309; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎    ╎ 31   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎  23   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎   23   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎    23   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎     19   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎ 4    @Base\hashing.jl:33; hash_64_64
   ╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:503; <<
  2╎    ╎    ╎    ╎    ╎   2    @Base\int.jl:496; <<
  2╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:34; hash_64_64
  2╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:36; hash_64_64
  2╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    ╎  1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎    ╎ 7    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:501; >>
  3╎    ╎    ╎    ╎    ╎   3    @Base\int.jl:495; >>
  4╎    ╎    ╎    ╎    ╎  4    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎     4    @Base\int.jl:991; *
  4╎    ╎    ╎    ╎    ╎ 4    @Base\int.jl:88; *
  4╎    ╎    ╎    ╎  4    @Base\int.jl:340; &
  3╎    ╎    ╎    ╎  3    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎  1    @Base\int.jl:86; -
 25╎    ╎    ╎     25   @Base\dict.jl:314; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     4    @Base\dict.jl:315; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎    ╎ 4    @Base\int.jl:83; <
  3╎    ╎    ╎     24   @Base\dict.jl:327; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 18╎    ╎    ╎    ╎ 18   @Base\array.jl:924; getindex
   ╎    ╎    ╎    ╎ 3    @Base\operators.jl:140; isequal
   ╎    ╎    ╎    ╎  3    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    ╎   3    @Base\tuple.jl:398; ==
  3╎    ╎    ╎    ╎    3    @Base\tuple.jl:403; _eq
   ╎    ╎    ╎     1    @Base\dict.jl:333; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎    ╎ 1    @Base\operators.jl:382; >
  1╎    ╎    ╎    ╎  1    @Base\int.jl:83; <
   ╎    ╎    ╎     16   @Base\dict.jl:349; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎    ╎ 1    @Base\dict.jl:0; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:192; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎    ╎   1    @Base\array.jl:588; zeros
   ╎    ╎    ╎    ╎    1    @Base\boot.jl:468; Array
  1╎    ╎    ╎    ╎     1    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 5    @Base\dict.jl:193; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  5╎    ╎    ╎    ╎  5    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 3    @Base\dict.jl:203; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  3    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎   3    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎    3    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎     3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  1╎    ╎    ╎    ╎ 1    @Base\dict.jl:204; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎ 5    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  5╎    ╎    ╎    ╎  5    @Base\array.jl:966; setindex!
   ╎    ╎    ╎    1    @Base\dict.jl:387; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  1╎    ╎    ╎     1    @Base\array.jl:966; setindex!
  3╎    ╎    ╎    3    @Base\dict.jl:388; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎    17   @Base\dict.jl:390; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎     4    @Base\dict.jl:355; _setindex!
  4╎    ╎    ╎    ╎ 4    @Base\array.jl:966; setindex!
   ╎    ╎    ╎     1    @Base\dict.jl:356; _setindex!
  1╎    ╎    ╎    ╎ 1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎     5    @Base\dict.jl:358; _setindex!
  5╎    ╎    ╎    ╎ 5    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     1    @Base\dict.jl:366; _setindex!
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:88; *
  1╎    ╎    ╎     6    @Base\dict.jl:368; _setindex!
  1╎    ╎    ╎    ╎ 1    @Base\dict.jl:0; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:192; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎    ╎   1    @Base\array.jl:589; zeros
  1╎    ╎    ╎    ╎    1    @Base\array.jl:429; fill!
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:193; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  2╎    ╎    ╎    ╎  2    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  1╎    ╎    ╎    ╎  1    @Base\array.jl:966; setindex!
  1╎    ╎    ╎    1    @Base\dict.jl:393; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎  136  @Base\array.jl:891; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎   22   @Base\generator.jl:44; iterate
   ╎    ╎    ╎    22   @Base\set.jl:88; iterate
   ╎    ╎    ╎     1    @Base\dict.jl:713; iterate
  1╎    ╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎     11   @Base\dict.jl:714; iterate
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:687; skip_deleted
  2╎    ╎    ╎    ╎  2    @Base\array.jl:215; length
  5╎    ╎    ╎    ╎ 5    @Base\dict.jl:689; skip_deleted
  2╎    ╎    ╎    ╎ 4    @Base\dict.jl:692; skip_deleted
  1╎    ╎    ╎    ╎  2    @Base\range.jl:883; iterate
  1╎    ╎    ╎    ╎   1    @Base\promotion.jl:477; ==
  3╎    ╎    ╎     3    @Base\dict.jl:715; iterate
   ╎    ╎    ╎     7    @Base\dict.jl:717; iterate
  7╎    ╎    ╎    ╎ 7    @Base\array.jl:924; getindex
112╎    ╎    ╎   114  @Base\generator.jl:47; iterate
  2╎    ╎    ╎    2    none:0; (::var"#1#3")(bliz::BlizzardState)
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:109; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\set.jl:12; Set
   ╎    ╎     1    @Base\set.jl:9; Set
   ╎    ╎    ╎ 1    @Base\dict.jl:90; Dict{Any, Nothing}()
  1╎    ╎    ╎  1    @Base\boot.jl:459; Array
  3╎    ╎   3    C:\dev\advent_of_code\2022\day24\part2.jl:110; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   59   C:\dev\advent_of_code\2022\day24\part2.jl:111; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    59   @Base\set.jl:66; in
  3╎    ╎     59   @Base\dict.jl:569; haskey
  9╎    ╎    ╎ 9    @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 10   @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
  7╎    ╎    ╎  7    @Base\array.jl:215; length
  1╎    ╎    ╎  1    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 12   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  12   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   11   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    11   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     11   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 9    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:503; <<
  1╎    ╎    ╎    ╎    1    @Base\int.jl:496; <<
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:34; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:38; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎ 2    @Base\int.jl:991; *
  2╎    ╎    ╎    ╎  2    @Base\int.jl:88; *
  1╎    ╎    ╎   1    @Base\int.jl:86; -
  1╎    ╎    ╎ 4    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:171; isslotempty
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
  3╎    ╎    ╎ 15   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 10╎    ╎    ╎  10   @Base\array.jl:924; getindex
   ╎    ╎    ╎  2    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   2    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    2    @Base\tuple.jl:398; ==
  2╎    ╎    ╎     2    @Base\tuple.jl:403; _eq
  6╎    ╎    ╎ 6    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
124╎    ╎   213  C:\dev\advent_of_code\2022\day24\part2.jl:114; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  2╎    ╎    89   @Base\set.jl:66; in(x::CartesianIndex{2}, s::Set{CartesianIndex{2}})
   ╎    ╎     87   @Base\dict.jl:569; haskey
 11╎    ╎    ╎ 11   @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎ 1    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 10   @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  7╎    ╎    ╎  7    @Base\array.jl:215; length
  3╎    ╎    ╎  3    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 1    @Base\dict.jl:283; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 14   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  14   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   13   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    13   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     13   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 9    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:503; <<
  1╎    ╎    ╎    ╎    1    @Base\int.jl:496; <<
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   4    @Base\operators.jl:591; +
  4╎    ╎    ╎    ╎    4    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
  4╎    ╎    ╎    ╎ 4    @Base\int.jl:86; -
  1╎    ╎    ╎   1    @Base\int.jl:86; -
  4╎    ╎    ╎ 6    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  2    @Base\dict.jl:171; isslotempty
  2╎    ╎    ╎   2    @Base\array.jl:924; getindex
  7╎    ╎    ╎ 33   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 16╎    ╎    ╎  16   @Base\array.jl:924; getindex
   ╎    ╎    ╎  10   @Base\operators.jl:140; isequal
   ╎    ╎    ╎   10   @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    10   @Base\tuple.jl:398; ==
 10╎    ╎    ╎     10   @Base\tuple.jl:403; _eq
   ╎    ╎    ╎ 3    @Base\dict.jl:297; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\operators.jl:382; >
  3╎    ╎    ╎   3    @Base\int.jl:83; <
  8╎    ╎    ╎ 8    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎   200  C:\dev\advent_of_code\2022\day24\part2.jl:118; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    200  @Base\set.jl:67; push!
 10╎    ╎     10   @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  2╎    ╎     151  @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  3╎    ╎    ╎ 3    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 14╎    ╎    ╎ 14   @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 5    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  5    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   3    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    3    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  2╎    ╎    ╎   2    @Base\int.jl:87; +
 10╎    ╎    ╎ 10   @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:315; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\int.jl:83; <
 39╎    ╎    ╎ 43   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎  4    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 73   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎  4    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  3    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   3    @Base\array.jl:584; zeros
   ╎    ╎    ╎    2    @Base\array.jl:588; zeros
   ╎    ╎    ╎     2    @Base\boot.jl:468; Array
  2╎    ╎    ╎    ╎ 2    @Base\boot.jl:459; Array
   ╎    ╎    ╎    1    @Base\array.jl:589; zeros
  1╎    ╎    ╎     1    @Base\array.jl:429; fill!
   ╎    ╎    ╎  14   @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
 14╎    ╎    ╎   14   @Base\boot.jl:459; Array
   ╎    ╎    ╎  3    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  3╎    ╎    ╎   3    @Base\range.jl:879; iterate
   ╎    ╎    ╎  1    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\promotion.jl:477; ==
 31╎    ╎    ╎  44   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   13   @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    10   @Base\hashing.jl:20; hash
   ╎    ╎    ╎     10   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 10   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  8    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎    1    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎   3    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎     1    @Base\int.jl:495; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎   2    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    2    @Base\operators.jl:591; +
  2╎    ╎    ╎    ╎     2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎   2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎    ╎    2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\int.jl:991; *
  2╎    ╎    ╎    ╎   2    @Base\int.jl:88; *
  1╎    ╎    ╎    1    @Base\int.jl:340; &
   ╎    ╎    ╎  2    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\operators.jl:282; !=
   ╎    ╎    ╎    2    @Base\int.jl:485; ==
   ╎    ╎    ╎     2    @Base\promotion.jl:427; ==
  2╎    ╎    ╎    ╎ 2    @Base\promotion.jl:477; ==
   ╎    ╎    ╎  2    @Base\dict.jl:210; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\essentials.jl:492; setindex!
   ╎    ╎     38   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎ 7    @Base\dict.jl:356; _setindex!
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  6╎    ╎    ╎  6    @Base\essentials.jl:492; setindex!
  1╎    ╎    ╎ 1    @Base\dict.jl:360; _setindex!
   ╎    ╎    ╎ 5    @Base\dict.jl:366; _setindex!
  3╎    ╎    ╎  3    @Base\int.jl:88; *
   ╎    ╎    ╎  1    @Base\int.jl:501; >>
  1╎    ╎    ╎   1    @Base\int.jl:494; >>
   ╎    ╎    ╎  1    @Base\operators.jl:429; >=
  1╎    ╎    ╎   1    @Base\int.jl:481; <=
   ╎    ╎    ╎ 25   @Base\dict.jl:368; _setindex!
   ╎    ╎    ╎  1    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   1    @Base\array.jl:584; zeros
   ╎    ╎    ╎    1    @Base\array.jl:589; zeros
  1╎    ╎    ╎     1    @Base\array.jl:429; fill!
   ╎    ╎    ╎  3    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  3╎    ╎    ╎   3    @Base\boot.jl:459; Array
   ╎    ╎    ╎  3    @Base\dict.jl:194; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  3╎    ╎    ╎   3    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:201; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
 13╎    ╎    ╎  15   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     1    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
  1╎    ╎    ╎    1    @Base\int.jl:340; &
   ╎    ╎    ╎  1    @Base\dict.jl:209; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎  1    @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:883; iterate
  1╎    ╎     1    @Base\dict.jl:393; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎   4    C:\dev\advent_of_code\2022\day24\part2.jl:120; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    2    @Base\iterators.jl:256; iterate
   ╎    ╎     2    @Base\multidimensional.jl:404; iterate
  2╎    ╎    ╎ 2    @Base\multidimensional.jl:429; __inc
  1╎    ╎    1    @Base\iterators.jl:257; iterate
   ╎    ╎    1    @Base\iterators.jl:259; iterate
   ╎    ╎     1    @Base\iterators.jl:252; _pairs_elt
   ╎    ╎    ╎ 1    @Base\multidimensional.jl:672; getindex
  1╎    ╎    ╎  1    @Base\array.jl:925; getindex
   ╎    ╎   15   C:\dev\advent_of_code\2022\day24\part2.jl:128; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    15   @Base\set.jl:66; in
   ╎    ╎     15   @Base\dict.jl:569; haskey
  1╎    ╎    ╎ 1    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎ 4    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 7    @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  7    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   7    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    7    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     7    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 5    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎ 1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎  1    @Base\int.jl:88; *
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  1╎    ╎    ╎ 2    @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\array.jl:924; getindex
   ╎    ╎   2    C:\dev\advent_of_code\2022\day24\part2.jl:129; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\array.jl:1064; push!
  1╎    ╎     1    @Base\array.jl:1011; _growend!
  1╎    ╎    1    @Base\array.jl:1065; push!
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:134; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    1    C:\dev\advent_of_code\2022\day24\part2.jl:8; Forward
  4╎    ╎   4    C:\dev\advent_of_code\2022\day24\part2.jl:136; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   93   C:\dev\advent_of_code\2022\day24\part2.jl:142; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    93   @Base\set.jl:66; in
  1╎    ╎     93   @Base\dict.jl:569; haskey
  9╎    ╎    ╎ 9    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 14╎    ╎    ╎ 14   @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 1    @Base\dict.jl:283; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 16   @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  16   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   15   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    15   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     15   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 13   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎ 1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎  1    @Base\int.jl:88; *
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  1╎    ╎    ╎   1    @Base\int.jl:86; -
  8╎    ╎    ╎ 9    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
 36╎    ╎    ╎ 41   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎  5    @Base\array.jl:924; getindex
 71╎    ╎   80   C:\dev\advent_of_code\2022\day24\part2.jl:143; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    9    @Base\array.jl:1064; push!
  9╎    ╎     9    @Base\array.jl:1011; _growend!
  1╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:146; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   2    C:\dev\advent_of_code\2022\day24\part2.jl:156; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    2    @Base\set.jl:12; Set
   ╎    ╎     2    @Base\set.jl:9; Set
  1╎    ╎    ╎ 2    @Base\dict.jl:90; Dict{Any, Nothing}()
   ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎   1    @Base\array.jl:588; zeros
   ╎    ╎    ╎    1    @Base\boot.jl:468; Array
  1╎    ╎    ╎     1    @Base\boot.jl:459; Array
306╎    ╎   349  C:\dev\advent_of_code\2022\day24\part2.jl:158; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
 43╎    ╎    43   @Base\tuple.jl:29; getindex(t::Tuple, i::Int64)
 53╎    ╎   120  C:\dev\advent_of_code\2022\day24\part2.jl:159; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  2╎    ╎    67   @Base\set.jl:66; in(x::CartesianIndex{2}, s::Set{Any})
   ╎    ╎     65   @Base\dict.jl:569; haskey
  9╎    ╎    ╎ 9    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎ 3    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 9    @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  9    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   9    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    9    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     9    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 9    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:33; hash_64_64
  4╎    ╎    ╎    ╎   4    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
  3╎    ╎    ╎ 4    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
 32╎    ╎    ╎ 35   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎  3    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 3    @Base\dict.jl:296; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎  3    @Base\int.jl:87; +
   ╎    ╎   9    C:\dev\advent_of_code\2022\day24\part2.jl:160; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    8    @Base\array.jl:1064; push!
  8╎    ╎     8    @Base\array.jl:1011; _growend!
  1╎    ╎    1    @Base\array.jl:1065; push!
 18╎    ╎   74   C:\dev\advent_of_code\2022\day24\part2.jl:161; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    56   @Base\set.jl:67; push!(s::Set{Any}, x::CartesianIndex{2})
   ╎    ╎     40   @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:306; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 3    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   3    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    3    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     3    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:86; -
 15╎    ╎    ╎ 15   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 17   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  2    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\boot.jl:459; Array
  2╎    ╎    ╎  3    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\promotion.jl:477; ==
  9╎    ╎    ╎  11   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     1    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎     1    @Base\int.jl:87; +
  1╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎  1    @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:883; iterate
   ╎    ╎     16   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:355; _setindex!
  1╎    ╎    ╎  1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎ 3    @Base\dict.jl:356; _setindex!
  3╎    ╎    ╎  3    @Base\essentials.jl:492; setindex!
   ╎    ╎    ╎ 1    @Base\dict.jl:366; _setindex!
   ╎    ╎    ╎  1    @Base\int.jl:501; >>
  1╎    ╎    ╎   1    @Base\int.jl:494; >>
   ╎    ╎    ╎ 11   @Base\dict.jl:368; _setindex!
  1╎    ╎    ╎  1    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  1    @Base\dict.jl:194; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:879; iterate
  4╎    ╎    ╎  4    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  3    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   3    @Base\operators.jl:282; !=
   ╎    ╎    ╎    3    @Base\int.jl:485; ==
   ╎    ╎    ╎     3    @Base\promotion.jl:427; ==
  3╎    ╎    ╎    ╎ 3    @Base\promotion.jl:477; ==
   ╎    ╎    ╎  1    @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:883; iterate
   ╎    ╎   5    C:\dev\advent_of_code\2022\day24\part2.jl:163; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  2╎    ╎    5    @Base\array.jl:898; iterate
  3╎    ╎     3    @Base\array.jl:924; getindex
   ╎    ╎   18   C:\dev\advent_of_code\2022\day24\part2.jl:167; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    18   @Base\array.jl:1057; push!(a::Vector{Vector{Tuple{Int64, CartesianIndex{2}}}}, item::Vector{Any})
   ╎    ╎     18   @Base\array.jl:617; convert
   ╎    ╎    ╎ 18   @Base\array.jl:626; Array
   ╎    ╎    ╎  15   @Base\abstractarray.jl:1127; copyto_axcheck!
   ╎    ╎    ╎   15   @Base\array.jl:343; copyto!
   ╎    ╎    ╎    15   @Base\array.jl:317; copyto!
   ╎    ╎    ╎     15   @Base\array.jl:331; _copyto_impl!
   ╎    ╎    ╎    ╎ 15   @Base\array.jl:307; unsafe_copyto!
 13╎    ╎    ╎    ╎  15   @Base\array.jl:253; _unsafe_copyto!(dest::Vector{Tuple{Int64, CartesianIndex{2}}}, doffs::Int64, src::Vector{Any}, soffs::Int64, n::Int64)
  2╎    ╎    ╎    ╎   2    @Base\array.jl:966; setindex!(A::Vector{Tuple{Int64, CartesianIndex{2}}}, x::Tuple{Int64, CartesianIndex{2}}, i1::Int64)
   ╎    ╎    ╎  3    @Base\boot.jl:468; Array
  3╎    ╎    ╎   3    @Base\boot.jl:459; Array
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:175; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    1    @Base\array.jl:924; getindex
   ╎    ╎  2217 C:\dev\advent_of_code\2022\day24\part2.jl:227; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   2    @Base\array.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎   1    @Base\int.jl:87; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  2╎    ╎   2    @Base\iterators.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  8╎    ╎   8    C:\dev\advent_of_code\2022\day24\part2.jl:0; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   2    C:\dev\advent_of_code\2022\day24\part2.jl:92; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    2    @Base\set.jl:88; iterate
   ╎    ╎     2    @Base\dict.jl:713; iterate
  2╎    ╎    ╎ 2    @Base\dict.jl:713; iterate
 36╎    ╎   58   C:\dev\advent_of_code\2022\day24\part2.jl:97; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    22   C:\dev\advent_of_code\2022\day24\part2.jl:65; moveonestep
  4╎    ╎     4    @Base\Base.jl:38; getproperty
  1╎    ╎     1    C:\dev\advent_of_code\2022\day24\part2.jl:0; Forward
   ╎    ╎     3    C:\dev\advent_of_code\2022\day24\part2.jl:9; Forward
   ╎    ╎    ╎ 3    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  3    @Base\tuple.jl:247; map
  3╎    ╎    ╎   3    @Base\int.jl:87; +
   ╎    ╎     4    C:\dev\advent_of_code\2022\day24\part2.jl:11; Forward
   ╎    ╎    ╎ 4    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  4    @Base\tuple.jl:247; map
  4╎    ╎    ╎   4    @Base\int.jl:87; +
   ╎    ╎     4    C:\dev\advent_of_code\2022\day24\part2.jl:13; Forward
   ╎    ╎    ╎ 4    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  4    @Base\tuple.jl:247; map
  4╎    ╎    ╎   4    @Base\int.jl:87; +
   ╎    ╎     6    C:\dev\advent_of_code\2022\day24\part2.jl:15; Forward
   ╎    ╎    ╎ 6    @Base\multidimensional.jl:114; +
   ╎    ╎    ╎  6    @Base\tuple.jl:247; map
  6╎    ╎    ╎   6    @Base\int.jl:87; +
   ╎    ╎   63   C:\dev\advent_of_code\2022\day24\part2.jl:98; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    63   @Base\set.jl:66; in
  4╎    ╎     63   @Base\dict.jl:569; haskey
  8╎    ╎    ╎ 8    @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎ 1    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 11   @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  5╎    ╎    ╎  5    @Base\array.jl:215; length
  5╎    ╎    ╎  5    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 21   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  21   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   21   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    21   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     21   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 20   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   3    @Base\int.jl:501; >>
  3╎    ╎    ╎    ╎    3    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  6    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   6    @Base\operators.jl:591; +
  6╎    ╎    ╎    ╎    6    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:39; hash_64_64
  4╎    ╎    ╎    ╎   4    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  1╎    ╎    ╎ 2    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 11   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  9╎    ╎    ╎  9    @Base\array.jl:924; getindex
   ╎    ╎    ╎  2    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   2    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    2    @Base\tuple.jl:398; ==
  2╎    ╎    ╎     2    @Base\tuple.jl:403; _eq
  5╎    ╎    ╎ 5    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  3╎    ╎   4    C:\dev\advent_of_code\2022\day24\part2.jl:99; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    1    @Base\Base.jl:38; getproperty(x::BlizzardState, f::Symbol)
178╎    ╎   385  C:\dev\advent_of_code\2022\day24\part2.jl:103; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
207╎    ╎    207  @Base\Base.jl:39; setproperty!(x::BlizzardState, f::Symbol, v::CartesianIndex{2})
   ╎    ╎   42   C:\dev\advent_of_code\2022\day24\part2.jl:104; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    42   @Base\set.jl:88; iterate
   ╎    ╎     34   @Base\dict.jl:714; iterate
   ╎    ╎    ╎ 9    @Base\dict.jl:687; skip_deleted
  9╎    ╎    ╎  9    @Base\array.jl:215; length
   ╎    ╎    ╎ 7    @Base\dict.jl:688; skip_deleted
   ╎    ╎    ╎  7    @Base\range.jl:5; Colon
   ╎    ╎    ╎   7    @Base\range.jl:393; UnitRange
  2╎    ╎    ╎    7    @Base\range.jl:400; unitrange_last
   ╎    ╎    ╎     5    @Base\operators.jl:429; >=
  5╎    ╎    ╎    ╎ 5    @Base\int.jl:481; <=
   ╎    ╎    ╎ 10   @Base\dict.jl:689; skip_deleted
   ╎    ╎    ╎  10   @Base\dict.jl:172; isslotfilled
 10╎    ╎    ╎   10   @Base\promotion.jl:477; ==
   ╎    ╎    ╎ 8    @Base\dict.jl:692; skip_deleted
  8╎    ╎    ╎  8    @Base\range.jl:883; iterate
  2╎    ╎     4    @Base\dict.jl:715; iterate
  2╎    ╎    ╎ 2    @Base\promotion.jl:477; ==
   ╎    ╎     4    @Base\dict.jl:717; iterate
  3╎    ╎    ╎ 3    @Base\array.jl:924; getindex
  1╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎   342  C:\dev\advent_of_code\2022\day24\part2.jl:105; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    342  @Base\set.jl:31; Set
   ╎    ╎     342  @Base\set.jl:37; _Set
   ╎    ╎    ╎ 1    @Base\array.jl:860; grow_to!(dest::Set{Any}, itr::Base.Generator{Set{Any}, var"#1#3"})
  1╎    ╎    ╎  1    @Base\generator.jl:47; iterate
   ╎    ╎    ╎ 340  @Base\array.jl:864; grow_to!(dest::Set{Any}, itr::Base.Generator{Set{Any}, var"#1#3"})
  1╎    ╎    ╎  1    @Base\array.jl:883; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
  8╎    ╎    ╎  8    @Base\array.jl:885; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎  148  @Base\array.jl:886; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
  1╎    ╎    ╎   148  @Base\set.jl:67; push!
  3╎    ╎    ╎    3    @Base\dict.jl:381; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  2╎    ╎    ╎    119  @Base\dict.jl:383; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  5╎    ╎    ╎     5    @Base\dict.jl:0; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  6╎    ╎    ╎     6    @Base\dict.jl:305; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     5    @Base\dict.jl:308; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎    ╎ 5    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     22   @Base\dict.jl:309; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎    ╎ 22   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎  22   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎   22   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎    22   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎     16   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎ 3    @Base\hashing.jl:33; hash_64_64
   ╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:503; <<
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:496; <<
  2╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:34; hash_64_64
  1╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎    ╎  1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:36; hash_64_64
  2╎    ╎    ╎    ╎    ╎  2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    ╎  2    @Base\operators.jl:591; +
  2╎    ╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎    ╎ 4    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:501; >>
  3╎    ╎    ╎    ╎    ╎   3    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎    ╎  1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    ╎ 3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎    ╎  3    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎     6    @Base\int.jl:991; *
  6╎    ╎    ╎    ╎    ╎ 6    @Base\int.jl:88; *
 17╎    ╎    ╎     17   @Base\dict.jl:314; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎     10   @Base\dict.jl:315; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 10╎    ╎    ╎    ╎ 10   @Base\int.jl:83; <
  4╎    ╎    ╎     21   @Base\dict.jl:327; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 16╎    ╎    ╎    ╎ 16   @Base\array.jl:924; getindex
   ╎    ╎    ╎    ╎ 1    @Base\operators.jl:140; isequal
   ╎    ╎    ╎    ╎  1    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    ╎   1    @Base\tuple.jl:398; ==
  1╎    ╎    ╎    ╎    1    @Base\tuple.jl:403; _eq
   ╎    ╎    ╎     1    @Base\dict.jl:332; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:87; +
   ╎    ╎    ╎     2    @Base\dict.jl:333; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎    ╎ 2    @Base\operators.jl:382; >
  2╎    ╎    ╎    ╎  2    @Base\int.jl:83; <
   ╎    ╎    ╎     28   @Base\dict.jl:349; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:192; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  2    @Base\array.jl:584; zeros
   ╎    ╎    ╎    ╎   2    @Base\array.jl:589; zeros
  2╎    ╎    ╎    ╎    2    @Base\array.jl:429; fill!
   ╎    ╎    ╎    ╎ 9    @Base\dict.jl:193; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  9╎    ╎    ╎    ╎  9    @Base\boot.jl:459; Array
  1╎    ╎    ╎    ╎ 1    @Base\dict.jl:200; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎ 6    @Base\dict.jl:203; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  6    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎   5    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    ╎    4    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎     4    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎    ╎ 4    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
  1╎    ╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎    1    @Base\multidimensional.jl:139; hash
  1╎    ╎    ╎    ╎     1    @Base\tuple.jl:68; iterate
  1╎    ╎    ╎    ╎   1    @Base\int.jl:340; &
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:204; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\operators.jl:282; !=
   ╎    ╎    ╎    ╎   1    @Base\int.jl:485; ==
   ╎    ╎    ╎    ╎    1    @Base\promotion.jl:427; ==
  1╎    ╎    ╎    ╎     1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎    ╎ 7    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  7╎    ╎    ╎    ╎  7    @Base\array.jl:966; setindex!
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:219; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  2    @Base\range.jl:883; iterate
  2╎    ╎    ╎    ╎   2    @Base\promotion.jl:477; ==
   ╎    ╎    ╎    1    @Base\dict.jl:385; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎     1    @Base\operators.jl:382; >
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:83; <
   ╎    ╎    ╎    1    @Base\dict.jl:387; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
  1╎    ╎    ╎     1    @Base\array.jl:966; setindex!
  2╎    ╎    ╎    2    @Base\dict.jl:388; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎    20   @Base\dict.jl:390; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎     2    @Base\dict.jl:355; _setindex!
  2╎    ╎    ╎    ╎ 2    @Base\array.jl:966; setindex!
   ╎    ╎    ╎     2    @Base\dict.jl:356; _setindex!
  2╎    ╎    ╎    ╎ 2    @Base\array.jl:966; setindex!
   ╎    ╎    ╎     4    @Base\dict.jl:358; _setindex!
  1╎    ╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
  1╎    ╎    ╎    ╎ 1    @Base\Base.jl:39; setproperty!
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:87; +
  1╎    ╎    ╎     1    @Base\dict.jl:360; _setindex!
   ╎    ╎    ╎     1    @Base\dict.jl:366; _setindex!
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:88; *
   ╎    ╎    ╎     10   @Base\dict.jl:368; _setindex!
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:192; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎    ╎   1    @Base\array.jl:589; zeros
  1╎    ╎    ╎    ╎    1    @Base\array.jl:429; fill!
   ╎    ╎    ╎    ╎ 3    @Base\dict.jl:193; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  3╎    ╎    ╎    ╎  3    @Base\boot.jl:459; Array
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:194; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  1╎    ╎    ╎    ╎  1    @Base\boot.jl:459; Array
  1╎    ╎    ╎    ╎ 2    @Base\dict.jl:204; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   ╎    ╎    ╎    ╎  1    @Base\operators.jl:282; !=
   ╎    ╎    ╎    ╎   1    @Base\int.jl:485; ==
   ╎    ╎    ╎    ╎    1    @Base\promotion.jl:427; ==
  1╎    ╎    ╎    ╎     1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎    ╎ 3    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
  3╎    ╎    ╎    ╎  3    @Base\array.jl:966; setindex!
  1╎    ╎    ╎    1    @Base\dict.jl:393; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎  183  @Base\array.jl:891; grow_to!(dest::Set{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#1#3"}, st::Int64)
   ╎    ╎    ╎   24   @Base\generator.jl:44; iterate
   ╎    ╎    ╎    24   @Base\set.jl:88; iterate
   ╎    ╎    ╎     1    @Base\dict.jl:713; iterate
  1╎    ╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎     14   @Base\dict.jl:714; iterate
   ╎    ╎    ╎    ╎ 3    @Base\dict.jl:687; skip_deleted
  3╎    ╎    ╎    ╎  3    @Base\array.jl:215; length
  5╎    ╎    ╎    ╎ 5    @Base\dict.jl:689; skip_deleted
  1╎    ╎    ╎    ╎ 6    @Base\dict.jl:692; skip_deleted
   ╎    ╎    ╎    ╎  5    @Base\range.jl:883; iterate
  5╎    ╎    ╎    ╎   5    @Base\promotion.jl:477; ==
  2╎    ╎    ╎     3    @Base\dict.jl:715; iterate
  1╎    ╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
  1╎    ╎    ╎     6    @Base\dict.jl:717; iterate
  5╎    ╎    ╎    ╎ 5    @Base\array.jl:924; getindex
158╎    ╎    ╎   159  @Base\generator.jl:47; iterate
  1╎    ╎    ╎    1    none:0; (::var"#1#3")(bliz::BlizzardState)
   ╎    ╎    ╎ 1    @Base\set.jl:9; Set
  1╎    ╎    ╎  1    @Base\dict.jl:88; Dict{Any, Nothing}()
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:109; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\set.jl:12; Set
   ╎    ╎     1    @Base\set.jl:9; Set
   ╎    ╎    ╎ 1    @Base\dict.jl:90; Dict{Any, Nothing}()
   ╎    ╎    ╎  1    @Base\array.jl:584; zeros
   ╎    ╎    ╎   1    @Base\array.jl:588; zeros
   ╎    ╎    ╎    1    @Base\boot.jl:468; Array
  1╎    ╎    ╎     1    @Base\boot.jl:459; Array
   ╎    ╎   63   C:\dev\advent_of_code\2022\day24\part2.jl:111; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    63   @Base\set.jl:66; in
  3╎    ╎     63   @Base\dict.jl:569; haskey
  7╎    ╎    ╎ 7    @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 5    @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
  2╎    ╎    ╎  2    @Base\array.jl:215; length
  1╎    ╎    ╎  1    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 15   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  15   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   15   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    15   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     15   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 13   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:503; <<
  1╎    ╎    ╎    ╎    1    @Base\int.jl:496; <<
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:34; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\operators.jl:591; +
  2╎    ╎    ╎    ╎    2    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎   3    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:86; -
  2╎    ╎    ╎ 3    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
  2╎    ╎    ╎ 22   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 19╎    ╎    ╎  19   @Base\array.jl:924; getindex
   ╎    ╎    ╎  1    @Base\operators.jl:140; isequal
   ╎    ╎    ╎   1    @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    1    @Base\tuple.jl:398; ==
  1╎    ╎    ╎     1    @Base\tuple.jl:403; _eq
  6╎    ╎    ╎ 6    @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
142╎    ╎   243  C:\dev\advent_of_code\2022\day24\part2.jl:114; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  6╎    ╎    101  @Base\set.jl:66; in(x::CartesianIndex{2}, s::Set{CartesianIndex{2}})
  1╎    ╎     95   @Base\dict.jl:569; haskey
 10╎    ╎    ╎ 10   @Base\dict.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  5╎    ╎    ╎ 5    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  1╎    ╎    ╎  1    @Base\dict.jl:280; getproperty
   ╎    ╎    ╎ 3    @Base\dict.jl:283; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎  3    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 18   @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  18   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   15   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    15   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     15   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 14   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:33; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  6    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   6    @Base\operators.jl:591; +
  6╎    ╎    ╎    ╎    6    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:38; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  3    @Base\hashing.jl:39; hash_64_64
  3╎    ╎    ╎    ╎   3    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
  3╎    ╎    ╎   3    @Base\int.jl:86; -
  3╎    ╎    ╎ 6    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:171; isslotempty
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
  7╎    ╎    ╎ 37   @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
 20╎    ╎    ╎  20   @Base\array.jl:924; getindex
   ╎    ╎    ╎  10   @Base\operators.jl:140; isequal
   ╎    ╎    ╎   10   @Base\multidimensional.jl:103; ==
   ╎    ╎    ╎    10   @Base\tuple.jl:398; ==
 10╎    ╎    ╎     10   @Base\tuple.jl:403; _eq
 13╎    ╎    ╎ 13   @Base\tuple.jl:0; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   ╎    ╎   193  C:\dev\advent_of_code\2022\day24\part2.jl:118; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    193  @Base\set.jl:67; push!
  5╎    ╎     5    @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  2╎    ╎     153  @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  2╎    ╎    ╎ 2    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 18╎    ╎    ╎ 18   @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 3    @Base\dict.jl:306; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  3╎    ╎    ╎  3    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 10   @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  10   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   8    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    8    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     8    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 6    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:33; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
  2╎    ╎    ╎    ╎ 2    @Base\int.jl:86; -
  2╎    ╎    ╎   2    @Base\int.jl:87; +
  3╎    ╎    ╎ 3    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 34╎    ╎    ╎ 41   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  7╎    ╎    ╎  7    @Base\array.jl:924; getindex
   ╎    ╎    ╎ 74   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎  4    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  3    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   3    @Base\array.jl:584; zeros
   ╎    ╎    ╎    3    @Base\array.jl:588; zeros
   ╎    ╎    ╎     3    @Base\boot.jl:468; Array
  3╎    ╎    ╎    ╎ 3    @Base\boot.jl:459; Array
   ╎    ╎    ╎  8    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  8╎    ╎    ╎   8    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:194; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\boot.jl:459; Array
   ╎    ╎    ╎  5    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  5╎    ╎    ╎   5    @Base\range.jl:879; iterate
   ╎    ╎    ╎  1    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎  1    @Base\dict.jl:201; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
 36╎    ╎    ╎  42   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   6    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    5    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     5    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 5    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  4    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎     1    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎     1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎   1    @Base\int.jl:88; *
  1╎    ╎    ╎  4    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   3    @Base\operators.jl:282; !=
   ╎    ╎    ╎    3    @Base\int.jl:485; ==
   ╎    ╎    ╎     3    @Base\promotion.jl:427; ==
  3╎    ╎    ╎    ╎ 3    @Base\promotion.jl:477; ==
   ╎    ╎    ╎  1    @Base\dict.jl:208; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   1    @Base\operators.jl:382; >
  1╎    ╎    ╎    1    @Base\int.jl:83; <
   ╎    ╎    ╎  1    @Base\dict.jl:209; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎  2    @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\range.jl:883; iterate
  1╎    ╎    ╎  1    @Base\essentials.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎     35   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎ 10   @Base\dict.jl:356; _setindex!
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  9╎    ╎    ╎  9    @Base\essentials.jl:492; setindex!
   ╎    ╎    ╎ 3    @Base\dict.jl:366; _setindex!
  2╎    ╎    ╎  2    @Base\int.jl:88; *
   ╎    ╎    ╎  1    @Base\operators.jl:429; >=
  1╎    ╎    ╎   1    @Base\int.jl:481; <=
   ╎    ╎    ╎ 22   @Base\dict.jl:368; _setindex!
  2╎    ╎    ╎  2    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  2    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\array.jl:584; zeros
   ╎    ╎    ╎    2    @Base\array.jl:588; zeros
   ╎    ╎    ╎     2    @Base\boot.jl:468; Array
  2╎    ╎    ╎    ╎ 2    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\boot.jl:459; Array
   ╎    ╎    ╎  2    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\range.jl:879; iterate
 12╎    ╎    ╎  15   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   3    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     1    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:36; hash_64_64
  1╎    ╎    ╎    ╎    1    @Base\int.jl:366; xor
  1╎    ╎    ╎    1    @Base\int.jl:86; -
   ╎    ╎   5    C:\dev\advent_of_code\2022\day24\part2.jl:120; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  3╎    ╎    3    @Base\iterators.jl:257; iterate
   ╎    ╎    2    @Base\iterators.jl:259; iterate
   ╎    ╎     2    @Base\iterators.jl:252; _pairs_elt
   ╎    ╎    ╎ 2    @Base\multidimensional.jl:672; getindex
  2╎    ╎    ╎  2    @Base\array.jl:925; getindex
  1╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:125; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   28   C:\dev\advent_of_code\2022\day24\part2.jl:128; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    28   @Base\set.jl:66; in
   ╎    ╎     28   @Base\dict.jl:569; haskey
  3╎    ╎    ╎ 3    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  7╎    ╎    ╎ 7    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 2    @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   2    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    2    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     2    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:39; hash_64_64
  1╎    ╎    ╎    ╎   1    @Base\int.jl:87; +
  1╎    ╎    ╎ 1    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 10╎    ╎    ╎ 12   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\array.jl:924; getindex
  1╎    ╎    ╎  1    @Base\operators.jl:140; isequal(x::CartesianIndex{2}, y::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:296; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\int.jl:87; +
   ╎    ╎   4    C:\dev\advent_of_code\2022\day24\part2.jl:129; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\array.jl:1064; push!
  1╎    ╎     1    @Base\array.jl:1011; _growend!
  3╎    ╎    3    @Base\array.jl:1065; push!
  2╎    ╎   2    C:\dev\advent_of_code\2022\day24\part2.jl:136; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   76   C:\dev\advent_of_code\2022\day24\part2.jl:142; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    76   @Base\set.jl:66; in
   ╎    ╎     76   @Base\dict.jl:569; haskey
  9╎    ╎    ╎ 9    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  9╎    ╎    ╎ 9    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 12   @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  12   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   12   @Base\hashing.jl:20; hash
   ╎    ╎    ╎    12   @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     12   @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 12   @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:35; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
  1╎    ╎    ╎    ╎   1    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  7    @Base\hashing.jl:38; hash_64_64
   ╎    ╎    ╎    ╎   2    @Base\int.jl:501; >>
  2╎    ╎    ╎    ╎    2    @Base\int.jl:495; >>
  5╎    ╎    ╎    ╎   5    @Base\int.jl:366; xor
   ╎    ╎    ╎    ╎  2    @Base\hashing.jl:39; hash_64_64
  2╎    ╎    ╎    ╎   2    @Base\int.jl:87; +
  2╎    ╎    ╎ 5    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:171; isslotempty
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
 31╎    ╎    ╎ 39   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  8╎    ╎    ╎  8    @Base\array.jl:924; getindex
 91╎    ╎   99   C:\dev\advent_of_code\2022\day24\part2.jl:143; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    7    @Base\array.jl:1064; push!
  7╎    ╎     7    @Base\array.jl:1011; _growend!
  1╎    ╎    1    @Base\array.jl:1065; push!
  1╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:146; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:151; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\iterators.jl:167; iterate
  1╎    ╎     1    @Base\array.jl:898; iterate
299╎    ╎   387  C:\dev\advent_of_code\2022\day24\part2.jl:158; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
 88╎    ╎    88   @Base\tuple.jl:29; getindex(t::Tuple, i::Int64)
 26╎    ╎   86   C:\dev\advent_of_code\2022\day24\part2.jl:159; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    60   @Base\set.jl:66; in(x::CartesianIndex{2}, s::Set{Any})
   ╎    ╎     60   @Base\dict.jl:569; haskey
  4╎    ╎    ╎ 4    @Base\dict.jl:0; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎ 1    @Base\dict.jl:280; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 8    @Base\dict.jl:284; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  8    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   8    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    8    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     8    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 7    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  6    @Base\hashing.jl:33; hash_64_64
  5╎    ╎    ╎    ╎   5    @Base\int.jl:87; +
  1╎    ╎    ╎    ╎   1    @Base\int.jl:314; ~
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎ 1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎  1    @Base\int.jl:88; *
  6╎    ╎    ╎ 6    @Base\dict.jl:288; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
 34╎    ╎    ╎ 37   @Base\dict.jl:291; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\array.jl:924; getindex
  1╎    ╎    ╎  1    @Base\operators.jl:140; isequal(x::CartesianIndex{2}, y::CartesianIndex{2})
   ╎    ╎    ╎ 2    @Base\dict.jl:296; ht_keyindex(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  2╎    ╎    ╎  2    @Base\int.jl:87; +
   ╎    ╎   8    C:\dev\advent_of_code\2022\day24\part2.jl:160; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    8    @Base\array.jl:1064; push!
  8╎    ╎     8    @Base\array.jl:1011; _growend!
 26╎    ╎   81   C:\dev\advent_of_code\2022\day24\part2.jl:161; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    55   @Base\set.jl:67; push!(s::Set{Any}, x::CartesianIndex{2})
  1╎    ╎     1    @Base\dict.jl:0; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎     36   @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
  1╎    ╎    ╎ 1    @Base\Base.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎ 4    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:306; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 1    @Base\dict.jl:308; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎ 3    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎   2    @Base\hashing.jl:20; hash
   ╎    ╎    ╎    2    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎     2    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎ 2    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:36; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\int.jl:501; >>
  1╎    ╎    ╎    ╎    1    @Base\int.jl:495; >>
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
  1╎    ╎    ╎   1    @Base\int.jl:87; +
  2╎    ╎    ╎ 2    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
  4╎    ╎    ╎ 4    @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎ 20   @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::CartesianIndex{2})
   ╎    ╎    ╎  3    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  3╎    ╎    ╎   3    @Base\boot.jl:459; Array
   ╎    ╎    ╎  1    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:879; iterate
  2╎    ╎    ╎  2    @Base\dict.jl:200; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  9╎    ╎    ╎  11   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎   2    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     1    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\int.jl:991; *
  1╎    ╎    ╎    ╎   1    @Base\int.jl:88; *
  1╎    ╎    ╎    1    @Base\int.jl:340; &
   ╎    ╎    ╎  1    @Base\dict.jl:210; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\essentials.jl:492; setindex!
   ╎    ╎    ╎  2    @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  2╎    ╎    ╎   2    @Base\range.jl:883; iterate
   ╎    ╎     18   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::CartesianIndex{2})
   ╎    ╎    ╎ 1    @Base\dict.jl:355; _setindex!
  1╎    ╎    ╎  1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎ 5    @Base\dict.jl:356; _setindex!
  2╎    ╎    ╎  2    @Base\Base.jl:38; getproperty
  3╎    ╎    ╎  3    @Base\essentials.jl:492; setindex!
   ╎    ╎    ╎ 1    @Base\dict.jl:358; _setindex!
  1╎    ╎    ╎  1    @Base\Base.jl:39; setproperty!
  1╎    ╎    ╎ 1    @Base\dict.jl:366; _setindex!
   ╎    ╎    ╎ 10   @Base\dict.jl:368; _setindex!
  1╎    ╎    ╎  1    @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   ╎    ╎    ╎  1    @Base\dict.jl:199; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\range.jl:879; iterate
   ╎    ╎    ╎  1    @Base\dict.jl:201; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
  5╎    ╎    ╎  7    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
  1╎    ╎    ╎   2    @Base\dict.jl:169; hashindex(key::CartesianIndex{2}, sz::Int64)
   ╎    ╎    ╎    1    @Base\hashing.jl:20; hash
   ╎    ╎    ╎     1    @Base\multidimensional.jl:138; hash
   ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:75; hash
   ╎    ╎    ╎    ╎  1    @Base\hashing.jl:66; hash_uint64
   ╎    ╎    ╎    ╎   1    @Base\hashing.jl:37; hash_64_64
   ╎    ╎    ╎    ╎    1    @Base\operators.jl:591; +
  1╎    ╎    ╎    ╎     1    @Base\int.jl:87; +
   ╎    ╎   8    C:\dev\advent_of_code\2022\day24\part2.jl:163; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    8    @Base\array.jl:898; iterate
  7╎    ╎     7    @Base\array.jl:924; getindex
   ╎    ╎   19   C:\dev\advent_of_code\2022\day24\part2.jl:167; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    19   @Base\array.jl:1057; push!(a::Vector{Vector{Tuple{Int64, CartesianIndex{2}}}}, item::Vector{Any})
   ╎    ╎     19   @Base\array.jl:617; convert
   ╎    ╎    ╎ 19   @Base\array.jl:626; Array
   ╎    ╎    ╎  18   @Base\abstractarray.jl:1127; copyto_axcheck!
   ╎    ╎    ╎   18   @Base\array.jl:343; copyto!
   ╎    ╎    ╎    18   @Base\array.jl:317; copyto!
   ╎    ╎    ╎     18   @Base\array.jl:331; _copyto_impl!
   ╎    ╎    ╎    ╎ 18   @Base\array.jl:307; unsafe_copyto!
 18╎    ╎    ╎    ╎  18   @Base\array.jl:253; _unsafe_copyto!(dest::Vector{Tuple{Int64, CartesianIndex{2}}}, doffs::Int64, src::Vector{Any}, soffs::Int64, n::Int64)
   ╎    ╎    ╎  1    @Base\boot.jl:468; Array
  1╎    ╎    ╎   1    @Base\boot.jl:459; Array
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:172; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
   ╎    ╎    1    @Base\array.jl:2538; filter(f::var"#2#4"{OpenState}, a::Vector{Tuple{Int64, CartesianIndex{2}}})
  1╎    ╎     1    @Base\array.jl:966; setindex!
   ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part2.jl:175; getpath!(start::OpenState, stop::OpenState, wallpos::Set{CartesianIndex{2}}, blizzardstates::Set{Any}, valleymap::Matrix{Char})
  1╎    ╎    1    @Base\array.jl:924; getindex
Total snapshots: 6381. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
