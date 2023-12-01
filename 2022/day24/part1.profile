Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
    ╎4132 @Base\client.jl:522; _start()
    ╎ 4132 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
    ╎  4132 @Base\Base.jl:419; include(mod::Module, _path::String)
    ╎   4132 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
    ╎    4132 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
   1╎     4132 @Base\boot.jl:368; eval
   1╎    ╎ 1    @Base\iterators.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎ 1    C:\dev\advent_of_code\2022\day24\part1.jl:115; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  1    @Base\set.jl:88; iterate
   1╎    ╎   1    @Base\dict.jl:713; iterate
   4╎    ╎ 6    C:\dev\advent_of_code\2022\day24\part1.jl:127; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  2    C:\dev\advent_of_code\2022\day24\part1.jl:65; moveonestep
   1╎    ╎   1    @Base\Base.jl:38; getproperty
    ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part1.jl:9; Forward
    ╎    ╎    1    @Base\multidimensional.jl:114; +
    ╎    ╎     1    @Base\tuple.jl:247; map
   1╎    ╎    ╎ 1    @Base\int.jl:87; +
  17╎    ╎ 2574 C:\dev\advent_of_code\2022\day24\part1.jl:128; main(loglevel::Base.CoreLogging.LogLevel)
   1╎    ╎  1    @Base\array.jl:780; collect(itr::Base.Generator{Set{Any}, var"#3#10"})
    ╎    ╎  8    @Base\array.jl:787; collect(itr::Base.Generator{Set{Any}, var"#3#10"})
    ╎    ╎   3    @Base\generator.jl:44; iterate
    ╎    ╎    3    @Base\set.jl:88; iterate
    ╎    ╎     3    @Base\dict.jl:713; iterate
   1╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
    ╎    ╎    ╎ 1    @Base\dict.jl:714; iterate
    ╎    ╎    ╎  1    @Base\dict.jl:688; skip_deleted
    ╎    ╎    ╎   1    @Base\range.jl:5; Colon
    ╎    ╎    ╎    1    @Base\range.jl:393; UnitRange
    ╎    ╎    ╎     1    @Base\range.jl:400; unitrange_last
    ╎    ╎    ╎    ╎ 1    @Base\operators.jl:429; >=
   1╎    ╎    ╎    ╎  1    @Base\int.jl:481; <=
    ╎    ╎    ╎ 1    @Base\dict.jl:717; iterate
   1╎    ╎    ╎  1    @Base\array.jl:924; getindex
   5╎    ╎   5    @Base\generator.jl:47; iterate
  53╎    ╎  239  @Base\array.jl:792; collect(itr::Base.Generator{Set{Any}, var"#3#10"})
    ╎    ╎   186  @Base\array.jl:675; _array_for(#unused#::Type{CartesianIndex{2}}, #unused#::Base.HasLength, len::Int64)
 186╎    ╎    186  @Base\boot.jl:459; Array
   5╎    ╎  5    @Base\array.jl:796; collect(itr::Base.Generator{Set{Any}, var"#3#10"})
  37╎    ╎  2259 @Base\array.jl:797; collect(itr::Base.Generator{Set{Any}, var"#3#10"})
    ╎    ╎   3    @Base\array.jl:822; collect_to_with_first!(dest::Vector{CartesianIndex{2}}, v1::CartesianIndex{2}, itr::Base.Generator{Set{Any}, var"#3#10"}, st::Int64)
   3╎    ╎    3    @Base\array.jl:966; setindex!
    ╎    ╎   2219 @Base\array.jl:823; collect_to_with_first!(dest::Vector{CartesianIndex{2}}, v1::CartesianIndex{2}, itr::Base.Generator{Set{Any}, var"#3#10"}, st::Int64)
   1╎    ╎    1    @Base\array.jl:0; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#3#10"}, offs::Int64, st::Int64)
    ╎    ╎    2006 @Base\array.jl:845; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#3#10"}, offs::Int64, st::Int64)
    ╎    ╎     414  @Base\generator.jl:44; iterate
    ╎    ╎    ╎ 414  @Base\set.jl:88; iterate
    ╎    ╎    ╎  288  @Base\dict.jl:714; iterate
  15╎    ╎    ╎   104  @Base\dict.jl:688; skip_deleted
    ╎    ╎    ╎    75   @Base\range.jl:5; Colon
    ╎    ╎    ╎     75   @Base\range.jl:393; UnitRange
  25╎    ╎    ╎    ╎ 75   @Base\range.jl:400; unitrange_last
    ╎    ╎    ╎    ╎  50   @Base\operators.jl:429; >=
  50╎    ╎    ╎    ╎   50   @Base\int.jl:481; <=
    ╎    ╎    ╎    14   @Base\range.jl:879; iterate
    ╎    ╎    ╎     14   @Base\range.jl:654; isempty
    ╎    ╎    ╎    ╎ 14   @Base\operators.jl:382; >
  14╎    ╎    ╎    ╎  14   @Base\int.jl:83; <
 125╎    ╎    ╎   125  @Base\dict.jl:689; skip_deleted
   4╎    ╎    ╎   59   @Base\dict.jl:692; skip_deleted
  51╎    ╎    ╎    55   @Base\range.jl:883; iterate
   4╎    ╎    ╎     4    @Base\promotion.jl:477; ==
   4╎    ╎    ╎  24   @Base\dict.jl:715; iterate
  20╎    ╎    ╎   20   @Base\promotion.jl:477; ==
   6╎    ╎    ╎  102  @Base\dict.jl:717; iterate
  96╎    ╎    ╎   96   @Base\array.jl:924; getindex
1526╎    ╎     1592 @Base\generator.jl:47; iterate
  65╎    ╎    ╎ 65   none:0; (::var"#3#10")(wall::WallState)
  93╎    ╎    93   @Base\array.jl:848; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#3#10"}, offs::Int64, st::Int64)
    ╎    ╎    117  @Base\array.jl:849; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#3#10"}, offs::Int64, st::Int64)
 117╎    ╎     117  @Base\array.jl:966; setindex!
    ╎    ╎    2    @Base\array.jl:850; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#3#10"}, offs::Int64, st::Int64)
   2╎    ╎     2    @Base\int.jl:87; +
   2╎    ╎  2    @Base\boot.jl:0; collect(itr::Base.Generator{Set{Any}, var"#3#10"})
   5╎    ╎  5    @Base\operators.jl:0; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
  36╎    ╎  36   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  2    @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎   2    @Base\array.jl:898; iterate
    ╎    ╎    2    @Base\int.jl:487; <
   2╎    ╎     2    @Base\int.jl:480; <
    ╎    ╎ 94   C:\dev\advent_of_code\2022\day24\part1.jl:131; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  94   @Base\logging.jl:376; macro expansion
   2╎    ╎   2    @Base\logging.jl:497; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎   5    @Base\logging.jl:498; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
   5╎    ╎    5    @Base\logging.jl:493; current_logstate
    ╎    ╎   87   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    86   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     86   @Base\env.jl:80; get
   2╎    ╎    ╎ 2    @Base\env.jl:10; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎ 63   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎  2    @Base\c.jl:249; cwstring(s::String)
    ╎    ╎    ╎   1    @Base\operators.jl:1243; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\int.jl:485; ==
    ╎    ╎    ╎     1    @Base\promotion.jl:427; ==
   1╎    ╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
   1╎    ╎    ╎   1    @Base\operators.jl:1246; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎  61   @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   4    @Base\array.jl:1058; push!
   4╎    ╎    ╎    4    @Base\array.jl:1011; _growend!
    ╎    ╎    ╎   1    @Base\array.jl:1059; push!
    ╎    ╎    ╎    1    @Base\abstractarray.jl:378; lastindex
    ╎    ╎    ╎     1    @Base\abstractarray.jl:341; eachindex
    ╎    ╎    ╎    ╎ 1    @Base\abstractarray.jl:116; axes1
    ╎    ╎    ╎    ╎  1    @Base\abstractarray.jl:95; axes
   1╎    ╎    ╎    ╎   1    @Base\array.jl:151; size
   3╎    ╎    ╎   3    @Base\c.jl:309; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎   23   @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    23   @Base\array.jl:404; getindex
  23╎    ╎    ╎     23   @Base\boot.jl:459; Array
    ╎    ╎    ╎   14   @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
  14╎    ╎    ╎    14   @Base\array.jl:1267; sizehint!
    ╎    ╎    ╎   13   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    13   @Base\array.jl:1058; push!
  13╎    ╎    ╎     13   @Base\array.jl:1011; _growend!
   3╎    ╎    ╎   3    @Base\c.jl:354; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎ 21   @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
  21╎    ╎    ╎  21   @Base\env.jl:6; _getenvlen
   1╎    ╎    1    @Base\logging.jl:560; env_override_minlevel(group::Symbol, _module::Module)
  18╎    ╎ 25   C:\dev\advent_of_code\2022\day24\part1.jl:134; main(loglevel::Base.CoreLogging.LogLevel)
   7╎    ╎  7    @Base\Base.jl:39; setproperty!(x::BlizzardState, f::Symbol, v::CartesianIndex{2})
    ╎    ╎ 8    C:\dev\advent_of_code\2022\day24\part1.jl:135; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  8    @Base\set.jl:88; iterate
    ╎    ╎   1    @Base\dict.jl:713; iterate
   1╎    ╎    1    @Base\promotion.jl:477; ==
    ╎    ╎   6    @Base\dict.jl:714; iterate
    ╎    ╎    3    @Base\dict.jl:688; skip_deleted
    ╎    ╎     3    @Base\range.jl:5; Colon
    ╎    ╎    ╎ 3    @Base\range.jl:393; UnitRange
    ╎    ╎    ╎  3    @Base\range.jl:400; unitrange_last
    ╎    ╎    ╎   3    @Base\operators.jl:429; >=
   3╎    ╎    ╎    3    @Base\int.jl:481; <=
    ╎    ╎    3    @Base\dict.jl:689; skip_deleted
    ╎    ╎     3    @Base\dict.jl:172; isslotfilled
   3╎    ╎    ╎ 3    @Base\promotion.jl:477; ==
   1╎    ╎   1    @Base\dict.jl:715; iterate
    ╎    ╎ 12   C:\dev\advent_of_code\2022\day24\part1.jl:137; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  12   @Base\array.jl:797; collect(itr::Base.Generator{Set{Any}, var"#5#12"})
    ╎    ╎   12   @Base\array.jl:823; collect_to_with_first!(dest::Vector{CartesianIndex{2}}, v1::CartesianIndex{2}, itr::Base.Generator{Set{Any}, var"#5#12"}, st::Int64)
    ╎    ╎    8    @Base\array.jl:845; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#5#12"}, offs::Int64, st::Int64)
   8╎    ╎     8    @Base\generator.jl:47; iterate
   1╎    ╎    1    @Base\array.jl:848; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#5#12"}, offs::Int64, st::Int64)
    ╎    ╎    3    @Base\array.jl:849; collect_to!(dest::Vector{CartesianIndex{2}}, itr::Base.Generator{Set{Any}, var"#5#12"}, offs::Int64, st::Int64)
   3╎    ╎     3    @Base\array.jl:966; setindex!
   8╎    ╎ 39   C:\dev\advent_of_code\2022\day24\part1.jl:142; main(loglevel::Base.CoreLogging.LogLevel)
   3╎    ╎  3    @Base\operators.jl:0; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
  27╎    ╎  27   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  1    @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
   1╎    ╎   1    @Base\array.jl:898; iterate
   8╎    ╎ 316  C:\dev\advent_of_code\2022\day24\part1.jl:145; main(loglevel::Base.CoreLogging.LogLevel)
   3╎    ╎  3    @Base\operators.jl:0; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  1    @Base\operators.jl:1243; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎   1    @Base\multidimensional.jl:103; ==
    ╎    ╎    1    @Base\tuple.jl:398; ==
    ╎    ╎     1    @Base\tuple.jl:402; _eq
   1╎    ╎    ╎ 1    @Base\promotion.jl:477; ==
 286╎    ╎  286  @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  18   @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
   8╎    ╎   18   @Base\array.jl:898; iterate
    ╎    ╎    10   @Base\int.jl:487; <
  10╎    ╎     10   @Base\int.jl:480; <
    ╎    ╎ 15   C:\dev\advent_of_code\2022\day24\part1.jl:149; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  14   @Base\set.jl:67; push!
    ╎    ╎   9    @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::BlizzardState)
    ╎    ╎    1    @Base\dict.jl:308; ht_keyindex2!(h::Dict{Any, Nothing}, key::BlizzardState)
   1╎    ╎     1    @Base\Base.jl:38; getproperty
    ╎    ╎    1    @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::BlizzardState)
    ╎    ╎     1    @Base\dict.jl:169; hashindex
    ╎    ╎    ╎ 1    @Base\hashing.jl:20; hash
    ╎    ╎    ╎  1    @Base\hashing.jl:25; hash
   1╎    ╎    ╎   1    @Base\reflection.jl:340; objectid
   3╎    ╎    3    @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::BlizzardState)
    ╎    ╎    4    @Base\dict.jl:349; ht_keyindex2!(h::Dict{Any, Nothing}, key::BlizzardState)
    ╎    ╎     1    @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
    ╎    ╎    ╎ 1    @Base\array.jl:584; zeros
    ╎    ╎    ╎  1    @Base\array.jl:588; zeros
    ╎    ╎    ╎   1    @Base\boot.jl:468; Array
   1╎    ╎    ╎    1    @Base\boot.jl:459; Array
    ╎    ╎     3    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   3╎    ╎    ╎ 3    @Base\boot.jl:459; Array
    ╎    ╎   5    @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::BlizzardState)
    ╎    ╎    5    @Base\dict.jl:368; _setindex!
   4╎    ╎     4    @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
    ╎    ╎     1    @Base\dict.jl:204; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
    ╎    ╎    ╎ 1    @Base\operators.jl:282; !=
    ╎    ╎    ╎  1    @Base\int.jl:485; ==
    ╎    ╎    ╎   1    @Base\promotion.jl:427; ==
   1╎    ╎    ╎    1    @Base\promotion.jl:477; ==
    ╎    ╎  1    C:\dev\advent_of_code\2022\day24\part1.jl:78; parsestate
    ╎    ╎   1    C:\dev\advent_of_code\2022\day24\part1.jl:61; BlizzardState(pos::CartesianIndex{2}, dir::Char)
   1╎    ╎    1    C:\dev\advent_of_code\2022\day24\part1.jl:33; parsedir(dir::Char)
    ╎    ╎ 1    C:\dev\advent_of_code\2022\day24\part1.jl:150; main(loglevel::Base.CoreLogging.LogLevel)
   1╎    ╎  1    @Base\iterators.jl:257; iterate
    ╎    ╎ 2    C:\dev\advent_of_code\2022\day24\part1.jl:153; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  1    @Base\array.jl:792; collect(itr::Base.Generator{Set{Any}, var"#6#13"})
    ╎    ╎   1    @Base\array.jl:675; _array_for(#unused#::Type{CartesianIndex{2}}, #unused#::Base.HasLength, len::Int64)
   1╎    ╎    1    @Base\boot.jl:459; Array
   1╎    ╎  1    @Base\array.jl:797; collect(itr::Base.Generator{Set{Any}, var"#6#13"})
    ╎    ╎ 32   C:\dev\advent_of_code\2022\day24\part1.jl:154; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  32   @Base\array.jl:2693; intersect(itr::Vector{CartesianIndex{2}}, itrs::Vector{CartesianIndex{2}})
    ╎    ╎   25   @Base\array.jl:2689; _shrink(shrinker!::Function, itr::Vector{CartesianIndex{2}}, itrs::Tuple{Vector{CartesianIndex{2}}})
    ╎    ╎    12   @Base\abstractset.jl:193; intersect!(s::Set{CartesianIndex{2}}, itr::Vector{CartesianIndex{2}})
    ╎    ╎     6    @Base\abstractset.jl:192; intersect!
    ╎    ╎    ╎ 6    @Base\set.jl:464; filter!
    ╎    ╎    ╎  6    @Base\abstractset.jl:496; unsafe_filter!
    ╎    ╎    ╎   4    @Base\abstractset.jl:501; mapfilter(pred::Base.var"#97#98"{Base.Fix2{typeof(in), Set{CartesianIndex{2}}}}, f::typeof(delete!), itr::Set{CartesianIndex{2}}, res::Set{CartesianIndex{2}})
    ╎    ╎    ╎    1    @Base\operators.jl:1077; #97
    ╎    ╎    ╎     1    @Base\operators.jl:1113; Fix2
    ╎    ╎    ╎    ╎ 1    @Base\set.jl:66; in
    ╎    ╎    ╎    ╎  1    @Base\dict.jl:569; haskey
   1╎    ╎    ╎    ╎   1    @Base\dict.jl:280; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    3    @Base\set.jl:76; delete!
    ╎    ╎    ╎     3    @Base\dict.jl:679; delete!
    ╎    ╎    ╎    ╎ 2    @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    ╎  2    @Base\dict.jl:169; hashindex
    ╎    ╎    ╎    ╎   2    @Base\hashing.jl:20; hash
    ╎    ╎    ╎    ╎    2    @Base\multidimensional.jl:138; hash
    ╎    ╎    ╎    ╎     2    @Base\hashing.jl:75; hash
    ╎    ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:66; hash_uint64
    ╎    ╎    ╎    ╎    ╎  1    @Base\hashing.jl:37; hash_64_64
    ╎    ╎    ╎    ╎    ╎   1    @Base\operators.jl:591; +
   1╎    ╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:86; -
   1╎    ╎    ╎    ╎ 1    @Base\dict.jl:291; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎   2    @Base\abstractset.jl:502; mapfilter(pred::Base.var"#97#98"{Base.Fix2{typeof(in), Set{CartesianIndex{2}}}}, f::typeof(delete!), itr::Set{CartesianIndex{2}}, res::Set{CartesianIndex{2}})
    ╎    ╎    ╎    2    @Base\set.jl:88; iterate
    ╎    ╎    ╎     2    @Base\dict.jl:714; iterate
    ╎    ╎    ╎    ╎ 2    @Base\dict.jl:692; skip_deleted
    ╎    ╎    ╎    ╎  2    @Base\range.jl:883; iterate
   2╎    ╎    ╎    ╎   2    @Base\promotion.jl:477; ==
    ╎    ╎     6    @Base\abstractset.jl:104; union!(s::Set{CartesianIndex{2}}, itr::Vector{CartesianIndex{2}})
    ╎    ╎    ╎ 6    @Base\set.jl:67; push!
    ╎    ╎    ╎  5    @Base\dict.jl:383; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   1╎    ╎    ╎   1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎   4    @Base\dict.jl:349; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    2    @Base\dict.jl:203; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
    ╎    ╎    ╎     2    @Base\dict.jl:169; hashindex
    ╎    ╎    ╎    ╎ 1    @Base\hashing.jl:20; hash
    ╎    ╎    ╎    ╎  1    @Base\multidimensional.jl:138; hash
    ╎    ╎    ╎    ╎   1    @Base\hashing.jl:75; hash
    ╎    ╎    ╎    ╎    1    @Base\hashing.jl:66; hash_uint64
    ╎    ╎    ╎    ╎     1    @Base\hashing.jl:33; hash_64_64
   1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:314; ~
   1╎    ╎    ╎    ╎ 1    @Base\int.jl:340; &
   1╎    ╎    ╎    1    @Base\dict.jl:204; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
    ╎    ╎    ╎    1    @Base\dict.jl:210; rehash!(h::Dict{CartesianIndex{2}, Nothing}, newsz::Int64)
   1╎    ╎    ╎     1    @Base\array.jl:966; setindex!
    ╎    ╎    ╎  1    @Base\dict.jl:390; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
    ╎    ╎    ╎   1    @Base\dict.jl:358; _setindex!
   1╎    ╎    ╎    1    @Base\int.jl:87; +
    ╎    ╎    13   @Base\set.jl:11; Set
    ╎    ╎     13   @Base\abstractset.jl:104; union!(s::Set{CartesianIndex{2}}, itr::Vector{CartesianIndex{2}})
    ╎    ╎    ╎ 13   @Base\set.jl:67; push!
    ╎    ╎    ╎  8    @Base\dict.jl:383; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
    ╎    ╎    ╎   3    @Base\dict.jl:309; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    3    @Base\dict.jl:169; hashindex
    ╎    ╎    ╎     2    @Base\hashing.jl:20; hash
    ╎    ╎    ╎    ╎ 2    @Base\multidimensional.jl:138; hash
    ╎    ╎    ╎    ╎  2    @Base\hashing.jl:75; hash
    ╎    ╎    ╎    ╎   2    @Base\hashing.jl:66; hash_uint64
    ╎    ╎    ╎    ╎    1    @Base\hashing.jl:36; hash_64_64
    ╎    ╎    ╎    ╎     1    @Base\int.jl:501; >>
   1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:495; >>
    ╎    ╎    ╎    ╎    1    @Base\hashing.jl:37; hash_64_64
    ╎    ╎    ╎    ╎     1    @Base\operators.jl:591; +
   1╎    ╎    ╎    ╎    ╎ 1    @Base\int.jl:87; +
   1╎    ╎    ╎     1    @Base\int.jl:340; &
   2╎    ╎    ╎   2    @Base\dict.jl:314; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   1╎    ╎    ╎   3    @Base\dict.jl:327; ht_keyindex2!(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
   2╎    ╎    ╎    2    @Base\array.jl:924; getindex
    ╎    ╎    ╎  1    @Base\dict.jl:387; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
   1╎    ╎    ╎   1    @Base\array.jl:966; setindex!
    ╎    ╎    ╎  4    @Base\dict.jl:390; setindex!(h::Dict{CartesianIndex{2}, Nothing}, v0::Nothing, key::CartesianIndex{2})
    ╎    ╎    ╎   3    @Base\dict.jl:356; _setindex!
   3╎    ╎    ╎    3    @Base\array.jl:966; setindex!
   1╎    ╎    ╎   1    @Base\int.jl:85; -
   1╎    ╎   7    @Base\array.jl:2690; _shrink(shrinker!::Function, itr::Vector{CartesianIndex{2}}, itrs::Tuple{Vector{CartesianIndex{2}}})
   1╎    ╎    6    @Base\array.jl:2685; vectorfilter(T::Type, f::Base.var"#132#133"{typeof(in), typeof(pop!), Set{CartesianIndex{2}}}, v::Vector{CartesianIndex{2}})
    ╎    ╎     5    @Base\array.jl:647; collect(#unused#::Type{CartesianIndex{2}}, itr::Base.Generator{Base.Iterators.Filter{Base.var"#134#135"{Base.var"#132#133"{typeof(in), typeof(pop!), Set{CartesianIndex{2}}}}, Vector{CartesianIndex{2}}}, typeof(identity)})
    ╎    ╎    ╎ 5    @Base\array.jl:653; _collect(#unused#::Type{CartesianIndex{2}}, itr::Base.Generator{Base.Iterators.Filter{Base.var"#134#135"{Base.var"#132#133"{typeof(in), typeof(pop!), Set{CartesianIndex{2}}}}, Vector{CartesianIndex{2}}}, typeof(identity)}, isz::Base.SizeUnknown)
    ╎    ╎    ╎  5    @Base\generator.jl:44; iterate
    ╎    ╎    ╎   5    @Base\iterators.jl:472; iterate(::Base.Iterators.Filter{Base.var"#134#135"{Base.var"#132#133"{typeof(in), typeof(pop!), Set{CartesianIndex{2}}}}, Vector{CartesianIndex{2}}})
    ╎    ╎    ╎    5    none:0; #134
    ╎    ╎    ╎     5    @Base\array.jl:2650; #132
    ╎    ╎    ╎    ╎ 5    @Base\set.jl:66; in
    ╎    ╎    ╎    ╎  5    @Base\dict.jl:569; haskey
    ╎    ╎    ╎    ╎   1    @Base\dict.jl:284; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    ╎    1    @Base\dict.jl:169; hashindex
   1╎    ╎    ╎    ╎     1    @Base\int.jl:86; -
   3╎    ╎    ╎    ╎   3    @Base\dict.jl:288; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    ╎   1    @Base\dict.jl:297; ht_keyindex(h::Dict{CartesianIndex{2}, Nothing}, key::CartesianIndex{2})
    ╎    ╎    ╎    ╎    1    @Base\operators.jl:382; >
   1╎    ╎    ╎    ╎     1    @Base\int.jl:83; <
    ╎    ╎ 13   C:\dev\advent_of_code\2022\day24\part1.jl:161; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  13   @Base\logging.jl:376; macro expansion
    ╎    ╎   13   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    13   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     13   @Base\env.jl:80; get
   1╎    ╎    ╎ 1    @Base\env.jl:10; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎ 9    @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎  9    @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   1    @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\array.jl:404; getindex
   1╎    ╎    ╎     1    @Base\boot.jl:459; Array
    ╎    ╎    ╎   4    @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   4╎    ╎    ╎    4    @Base\array.jl:1267; sizehint!
    ╎    ╎    ╎   4    @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    4    @Base\array.jl:1058; push!
   4╎    ╎    ╎     4    @Base\array.jl:1011; _growend!
    ╎    ╎    ╎ 3    @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
   3╎    ╎    ╎  3    @Base\env.jl:6; _getenvlen
   3╎    ╎ 19   C:\dev\advent_of_code\2022\day24\part1.jl:164; main(loglevel::Base.CoreLogging.LogLevel)
  13╎    ╎  13   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  3    @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
   1╎    ╎   3    @Base\array.jl:898; iterate
    ╎    ╎    2    @Base\int.jl:487; <
   2╎    ╎     2    @Base\int.jl:480; <
    ╎    ╎ 6    C:\dev\advent_of_code\2022\day24\part1.jl:165; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  6    @Base\logging.jl:376; macro expansion
   1╎    ╎   1    @Base\logging.jl:497; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎   5    @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    5    @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     5    @Base\env.jl:80; get
    ╎    ╎    ╎ 3    @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎  3    @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   3    @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    3    @Base\array.jl:1058; push!
   3╎    ╎    ╎     3    @Base\array.jl:1011; _growend!
    ╎    ╎    ╎ 2    @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
   2╎    ╎    ╎  2    @Base\env.jl:6; _getenvlen
    ╎    ╎ 1    C:\dev\advent_of_code\2022\day24\part1.jl:166; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  1    @Base\array.jl:1064; push!
   1╎    ╎   1    @Base\array.jl:1011; _growend!
    ╎    ╎ 17   C:\dev\advent_of_code\2022\day24\part1.jl:168; main(loglevel::Base.CoreLogging.LogLevel)
  17╎    ╎  17   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎ 11   C:\dev\advent_of_code\2022\day24\part1.jl:169; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  11   @Base\logging.jl:376; macro expansion
    ╎    ╎   1    @Base\logging.jl:498; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
   1╎    ╎    1    @Base\logging.jl:493; current_logstate
    ╎    ╎   10   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    9    @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     9    @Base\env.jl:80; get
    ╎    ╎    ╎ 7    @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎  7    @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   1    @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\array.jl:404; getindex
   1╎    ╎    ╎     1    @Base\boot.jl:459; Array
    ╎    ╎    ╎   2    @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   2╎    ╎    ╎    2    @Base\array.jl:1267; sizehint!
    ╎    ╎    ╎   4    @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    4    @Base\array.jl:1058; push!
   4╎    ╎    ╎     4    @Base\array.jl:1011; _growend!
    ╎    ╎    ╎ 2    @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
   2╎    ╎    ╎  2    @Base\env.jl:6; _getenvlen
   1╎    ╎    1    @Base\logging.jl:560; env_override_minlevel(group::Symbol, _module::Module)
   1╎    ╎ 1    C:\dev\advent_of_code\2022\day24\part1.jl:177; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎ 1    C:\dev\advent_of_code\2022\day24\part1.jl:179; main(loglevel::Base.CoreLogging.LogLevel)
   1╎    ╎  1    @Base\int.jl:83; <
   7╎    ╎ 80   C:\dev\advent_of_code\2022\day24\part1.jl:185; main(loglevel::Base.CoreLogging.LogLevel)
   1╎    ╎  1    @Base\operators.jl:0; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
  68╎    ╎  68   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  4    @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
   2╎    ╎   4    @Base\array.jl:898; iterate
    ╎    ╎    2    @Base\int.jl:487; <
   2╎    ╎     2    @Base\int.jl:480; <
    ╎    ╎ 16   C:\dev\advent_of_code\2022\day24\part1.jl:186; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  16   @Base\logging.jl:376; macro expansion
    ╎    ╎   16   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    16   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     16   @Base\env.jl:80; get
    ╎    ╎    ╎ 10   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
   1╎    ╎    ╎  3    @Base\c.jl:249; cwstring(s::String)
    ╎    ╎    ╎   1    @Base\operators.jl:1242; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\strings\basic.jl:755; iterate
    ╎    ╎    ╎     1    @Base\strings\basic.jl:755; iterate
    ╎    ╎    ╎    ╎ 1    @Base\int.jl:487; <
   1╎    ╎    ╎    ╎  1    @Base\int.jl:480; <
    ╎    ╎    ╎   1    @Base\operators.jl:1249; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
   1╎    ╎    ╎    1    @Base\strings\basic.jl:755; iterate
    ╎    ╎    ╎  7    @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   1    @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   1╎    ╎    ╎    1    @Base\array.jl:1267; sizehint!
    ╎    ╎    ╎   6    @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    6    @Base\array.jl:1058; push!
   6╎    ╎    ╎     6    @Base\array.jl:1011; _growend!
    ╎    ╎    ╎ 5    @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
   5╎    ╎    ╎  5    @Base\env.jl:6; _getenvlen
    ╎    ╎    ╎ 1    @Base\env.jl:14; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎  1    @Base\operators.jl:945; Returns
    ╎    ╎    ╎   1    @Base\operators.jl:945; #_#94
   1╎    ╎    ╎    1    @Base\Base.jl:38; getproperty
    ╎    ╎ 3    C:\dev\advent_of_code\2022\day24\part1.jl:187; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  1    @Base\array.jl:1064; push!
   1╎    ╎   1    @Base\array.jl:1011; _growend!
   2╎    ╎  2    @Base\array.jl:1065; push!
   9╎    ╎ 11   C:\dev\advent_of_code\2022\day24\part1.jl:190; main(loglevel::Base.CoreLogging.LogLevel)
   2╎    ╎  2    @Base\Base.jl:38; getproperty(x::OpenState, f::Symbol)
   2╎    ╎ 58   C:\dev\advent_of_code\2022\day24\part1.jl:195; main(loglevel::Base.CoreLogging.LogLevel)
  55╎    ╎  55   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎  1    @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{CartesianIndex{2}})
    ╎    ╎   1    @Base\array.jl:898; iterate
    ╎    ╎    1    @Base\int.jl:487; <
   1╎    ╎     1    @Base\int.jl:480; <
    ╎    ╎ 29   C:\dev\advent_of_code\2022\day24\part1.jl:196; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  29   @Base\logging.jl:376; macro expansion
    ╎    ╎   29   @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    29   @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     29   @Base\env.jl:80; get
    ╎    ╎    ╎ 24   @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
    ╎    ╎    ╎  3    @Base\c.jl:249; cwstring(s::String)
    ╎    ╎    ╎   1    @Base\operators.jl:1242; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\strings\basic.jl:755; iterate
    ╎    ╎    ╎     1    @Base\strings\basic.jl:755; iterate
    ╎    ╎    ╎    ╎ 1    @Base\int.jl:487; <
   1╎    ╎    ╎    ╎  1    @Base\int.jl:480; <
   1╎    ╎    ╎   1    @Base\operators.jl:1246; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎   1    @Base\operators.jl:1249; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
   1╎    ╎    ╎    1    @Base\strings\basic.jl:755; iterate
    ╎    ╎    ╎  21   @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   7    @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    7    @Base\array.jl:404; getindex
   7╎    ╎    ╎     7    @Base\boot.jl:459; Array
    ╎    ╎    ╎   2    @Base\c.jl:314; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
   2╎    ╎    ╎    2    @Base\array.jl:1267; sizehint!
    ╎    ╎    ╎   1    @Base\c.jl:315; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\strings\basic.jl:753; getindex
    ╎    ╎    ╎     1    @Base\strings\string.jl:107; codeunit
    ╎    ╎    ╎    ╎ 1    @Base\pointer.jl:105; unsafe_load
   1╎    ╎    ╎    ╎  1    @Base\pointer.jl:105; unsafe_load
    ╎    ╎    ╎   11   @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    10   @Base\array.jl:1058; push!
  10╎    ╎    ╎     10   @Base\array.jl:1011; _growend!
    ╎    ╎    ╎    1    @Base\array.jl:1059; push!
    ╎    ╎    ╎     1    @Base\abstractarray.jl:378; lastindex
    ╎    ╎    ╎    ╎ 1    @Base\abstractarray.jl:341; eachindex
    ╎    ╎    ╎    ╎  1    @Base\abstractarray.jl:116; axes1
    ╎    ╎    ╎    ╎   1    @Base\abstractarray.jl:95; axes
   1╎    ╎    ╎    ╎    1    @Base\array.jl:151; size
    ╎    ╎    ╎ 5    @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
   5╎    ╎    ╎  5    @Base\env.jl:6; _getenvlen
    ╎    ╎ 4    C:\dev\advent_of_code\2022\day24\part1.jl:198; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  4    @Base\logging.jl:376; macro expansion
    ╎    ╎   4    @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    ╎    ╎    4    @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
    ╎    ╎     4    @Base\env.jl:80; get
    ╎    ╎    ╎ 4    @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
   1╎    ╎    ╎  1    @Base\c.jl:247; cwstring(s::String)
    ╎    ╎    ╎  3    @Base\c.jl:250; cwstring(s::String)
    ╎    ╎    ╎   2    @Base\c.jl:311; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    2    @Base\array.jl:404; getindex
   2╎    ╎    ╎     2    @Base\boot.jl:459; Array
    ╎    ╎    ╎   1    @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
    ╎    ╎    ╎    1    @Base\array.jl:1058; push!
   1╎    ╎    ╎     1    @Base\array.jl:1011; _growend!
  38╎    ╎ 707  C:\dev\advent_of_code\2022\day24\part1.jl:209; main(loglevel::Base.CoreLogging.LogLevel)
   4╎    ╎  4    @Base\Base.jl:38; getproperty(x::OpenState, f::Symbol)
   1╎    ╎  1    @Base\operators.jl:0; in(x::CartesianIndex{2}, itr::Vector{Any})
   2╎    ╎  2    @Base\operators.jl:1240; in(x::CartesianIndex{2}, itr::Vector{Any})
 594╎    ╎  617  @Base\operators.jl:1243; in(x::CartesianIndex{2}, itr::Vector{Any})
  13╎    ╎   23   @Base\multidimensional.jl:103; ==(a::CartesianIndex{2}, b::CartesianIndex{2})
    ╎    ╎    10   @Base\tuple.jl:398; ==
    ╎    ╎     6    @Base\tuple.jl:402; _eq
   6╎    ╎    ╎ 6    @Base\promotion.jl:477; ==
   4╎    ╎     4    @Base\tuple.jl:403; _eq
   4╎    ╎  4    @Base\operators.jl:1244; in(x::CartesianIndex{2}, itr::Vector{Any})
  28╎    ╎  28   @Base\operators.jl:1246; in(x::CartesianIndex{2}, itr::Vector{Any})
    ╎    ╎  9    @Base\operators.jl:1249; in(x::CartesianIndex{2}, itr::Vector{Any})
    ╎    ╎   9    @Base\array.jl:898; iterate
   9╎    ╎    9    @Base\array.jl:924; getindex
   4╎    ╎  4    @Base\tuple.jl:29; getindex(t::Tuple, i::Int64)
  19╎    ╎ 25   C:\dev\advent_of_code\2022\day24\part1.jl:211; main(loglevel::Base.CoreLogging.LogLevel)
   2╎    ╎  2    @Base\Base.jl:38; getproperty(x::OpenState, f::Symbol)
   4╎    ╎  4    @Base\tuple.jl:29; getindex(t::Tuple, i::Int64)
    ╎    ╎ 1    C:\dev\advent_of_code\2022\day24\part1.jl:213; main(loglevel::Base.CoreLogging.LogLevel)
   1╎    ╎  1    @Base\iterators.jl:168; iterate
    ╎    ╎ 2    C:\dev\advent_of_code\2022\day24\part1.jl:222; main(loglevel::Base.CoreLogging.LogLevel)
    ╎    ╎  2    @Base\array.jl:1057; push!(a::Vector{Vector{Tuple{Int64, OpenState}}}, item::Vector{Any})
    ╎    ╎   2    @Base\array.jl:617; convert
    ╎    ╎    2    @Base\array.jl:626; Array
    ╎    ╎     2    @Base\abstractarray.jl:1127; copyto_axcheck!
    ╎    ╎    ╎ 2    @Base\array.jl:343; copyto!
    ╎    ╎    ╎  2    @Base\array.jl:317; copyto!
    ╎    ╎    ╎   2    @Base\array.jl:331; _copyto_impl!
    ╎    ╎    ╎    2    @Base\array.jl:307; unsafe_copyto!
   2╎    ╎    ╎     2    @Base\array.jl:253; _unsafe_copyto!(dest::Vector{Tuple{Int64, OpenState}}, doffs::Int64, src::Vector{Any}, soffs::Int64, n::Int64)
Total snapshots: 4250. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
