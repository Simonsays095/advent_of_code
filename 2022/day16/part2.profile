Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
   ╎2221 @Base\client.jl:522; _start()
   ╎ 2221 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
   ╎  2221 @Base\Base.jl:419; include(mod::Module, _path::String)
   ╎   2221 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
   ╎    2221 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
  1╎     2221 @Base\boot.jl:368; eval
   ╎    ╎ 2219 C:\dev\advent_of_code\2022\day16\part2.jl:275; multi_main(numRuns::Int64)
  1╎    ╎  1    @Base\array.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎  6    C:\dev\advent_of_code\2022\day16\part2.jl:159; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   6    @Base\io.jl:583; readlines
   ╎    ╎    6    @Base\io.jl:584; #readlines#398
   ╎    ╎     6    @Base\io.jl:381; open
  1╎    ╎    ╎ 1    @Base\io.jl:381; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎ 3    @Base\io.jl:382; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
   ╎    ╎    ╎  3    @Base\iostream.jl:275; open
  3╎    ╎    ╎   3    @Base\iostream.jl:293; open(fname::String; lock::Bool, read::Nothing, write::Nothing, create::Nothing, truncate::Nothing, append::Nothing)
   ╎    ╎    ╎ 2    @Base\io.jl:386; open(f::Base.var"#399#400"{Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}}, args::String; kwargs::Base.Pairs{Symbol, Union{}, Tuple{}, NamedTuple{(), Tuple{}}})
  2╎    ╎    ╎  2    @Base\iostream.jl:43; close(s::IOStream)
   ╎    ╎  4    C:\dev\advent_of_code\2022\day16\part2.jl:179; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    C:\dev\advent_of_code\2022\day16\part2.jl:76; getdistancemap(valves::Vector{Valve}, valvedict::Dict{String, Valve})
   ╎    ╎    1    @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎     1    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎   1    C:\dev\advent_of_code\2022\day16\part2.jl:113; getdistancemap(valves::Vector{Valve}, valvedict::Dict{String, Valve})
  2╎    ╎   2    C:\dev\advent_of_code\2022\day16\part2.jl:140; getdistancemap(valves::Vector{Valve}, valvedict::Dict{String, Valve})
   ╎    ╎  1    C:\dev\advent_of_code\2022\day16\part2.jl:197; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    @Base\array.jl:1316; pop!
  1╎    ╎    1    @Base\array.jl:924; getindex
  1╎    ╎  397  C:\dev\advent_of_code\2022\day16\part2.jl:203; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   5    @Base\array.jl:787; collect(itr::Base.Generator{Vector{Valve}, var"#14#27"})
   ╎    ╎    5    @Base\generator.jl:44; iterate
   ╎    ╎     5    @Base\array.jl:898; iterate
   ╎    ╎    ╎ 5    @Base\array.jl:898; iterate
  4╎    ╎    ╎  4    @Base\array.jl:924; getindex
   ╎    ╎    ╎  1    @Base\int.jl:487; <
  1╎    ╎    ╎   1    @Base\int.jl:480; <
 60╎    ╎   80   @Base\array.jl:792; collect(itr::Base.Generator{Vector{Valve}, var"#14#27"})
   ╎    ╎    20   @Base\array.jl:676; _array_for(#unused#::Type{String}, #unused#::Base.HasShape{1}, axs::Tuple{Base.OneTo{Int64}})
   ╎    ╎     20   @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎ 20   @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎  20   @Base\boot.jl:468; Array
 20╎    ╎    ╎   20   @Base\boot.jl:459; Array
111╎    ╎   111  @Base\array.jl:796; collect(itr::Base.Generator{Vector{Valve}, var"#14#27"})
194╎    ╎   200  @Base\array.jl:797; collect(itr::Base.Generator{Vector{Valve}, var"#14#27"})
   ╎    ╎    1    @Base\array.jl:822; collect_to_with_first!(dest::Vector{String}, v1::String, itr::Base.Generator{Vector{Valve}, var"#14#27"}, st::Int64)
  1╎    ╎     1    @Base\array.jl:966; setindex!
   ╎    ╎    5    @Base\array.jl:823; collect_to_with_first!(dest::Vector{String}, v1::String, itr::Base.Generator{Vector{Valve}, var"#14#27"}, st::Int64)
  3╎    ╎     3    @Base\array.jl:840; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#14#27"}, offs::Int64, st::Int64)
   ╎    ╎     1    @Base\array.jl:845; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#14#27"}, offs::Int64, st::Int64)
   ╎    ╎    ╎ 1    @Base\generator.jl:44; iterate
   ╎    ╎    ╎  1    @Base\array.jl:898; iterate
   ╎    ╎    ╎   1    @Base\int.jl:487; <
  1╎    ╎    ╎    1    @Base\int.jl:480; <
  1╎    ╎     1    @Base\array.jl:848; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#14#27"}, offs::Int64, st::Int64)
  1╎    ╎  304  C:\dev\advent_of_code\2022\day16\part2.jl:204; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    @Base\array.jl:786; collect(itr::Base.Generator{Vector{Valve}, var"#15#28"})
   ╎    ╎    1    @Base\array.jl:664; _similar_shape
   ╎    ╎     1    @Base\generator.jl:52; axes
  1╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
   ╎    ╎   3    @Base\array.jl:787; collect(itr::Base.Generator{Vector{Valve}, var"#15#28"})
   ╎    ╎    3    @Base\generator.jl:44; iterate
   ╎    ╎     3    @Base\array.jl:898; iterate
   ╎    ╎    ╎ 3    @Base\array.jl:898; iterate
  2╎    ╎    ╎  2    @Base\array.jl:924; getindex
   ╎    ╎    ╎  1    @Base\int.jl:487; <
  1╎    ╎    ╎   1    @Base\int.jl:480; <
 53╎    ╎   60   @Base\array.jl:792; collect(itr::Base.Generator{Vector{Valve}, var"#15#28"})
   ╎    ╎    7    @Base\array.jl:676; _array_for(#unused#::Type{String}, #unused#::Base.HasShape{1}, axs::Tuple{Base.OneTo{Int64}})
   ╎    ╎     7    @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎ 7    @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎  7    @Base\boot.jl:468; Array
  7╎    ╎    ╎   7    @Base\boot.jl:459; Array
 78╎    ╎   78   @Base\array.jl:796; collect(itr::Base.Generator{Vector{Valve}, var"#15#28"})
149╎    ╎   161  @Base\array.jl:797; collect(itr::Base.Generator{Vector{Valve}, var"#15#28"})
  1╎    ╎    1    @Base\array.jl:820; collect_to_with_first!(dest::Vector{String}, v1::String, itr::Base.Generator{Vector{Valve}, var"#15#28"}, st::Int64)
   ╎    ╎    2    @Base\array.jl:822; collect_to_with_first!(dest::Vector{String}, v1::String, itr::Base.Generator{Vector{Valve}, var"#15#28"}, st::Int64)
  2╎    ╎     2    @Base\array.jl:966; setindex!
  1╎    ╎    9    @Base\array.jl:823; collect_to_with_first!(dest::Vector{String}, v1::String, itr::Base.Generator{Vector{Valve}, var"#15#28"}, st::Int64)
  2╎    ╎     2    @Base\array.jl:0; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#15#28"}, offs::Int64, st::Int64)
  2╎    ╎     2    @Base\array.jl:840; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#15#28"}, offs::Int64, st::Int64)
   ╎    ╎     2    @Base\array.jl:845; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#15#28"}, offs::Int64, st::Int64)
   ╎    ╎    ╎ 2    @Base\generator.jl:44; iterate
  1╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎  1    @Base\array.jl:898; iterate
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
  2╎    ╎     2    @Base\array.jl:848; collect_to!(dest::Vector{String}, itr::Base.Generator{Vector{Valve}, var"#15#28"}, offs::Int64, st::Int64)
 14╎    ╎  226  C:\dev\advent_of_code\2022\day16\part2.jl:205; main(loglevel::Base.CoreLogging.LogLevel)
  1╎    ╎   212  @Base\abstractset.jl:57; union(s::Vector{String}, sets::Vector{String})
   ╎    ╎    12   @Base\abstractarray.jl:863; emptymutable
   ╎    ╎     12   @Base\boot.jl:478; Array
 12╎    ╎    ╎ 12   @Base\boot.jl:459; Array
   ╎    ╎    199  @Base\array.jl:2669; union!(::Vector{String}, ::Vector{String}, ::Vector{String})
   ╎    ╎     1    @Base\array.jl:2662; _grow!
  1╎    ╎    ╎ 1    @Base\array.jl:2580; filter!(f::Base.var"#132#133"{typeof(∉), typeof(push!), Set{String}}, a::Vector{String})
   ╎    ╎     146  @Base\array.jl:2664; _grow!
  2╎    ╎    ╎ 2    @Base\abstractset.jl:499; mapfilter(pred::Base.var"#132#133"{typeof(∉), typeof(push!), Set{String}}, f::typeof(push!), itr::Vector{String}, res::Vector{String})
   ╎    ╎    ╎ 2    @Base\abstractset.jl:500; mapfilter(pred::Base.var"#132#133"{typeof(∉), typeof(push!), Set{String}}, f::typeof(push!), itr::Vector{String}, res::Vector{String})
   ╎    ╎    ╎  2    @Base\array.jl:898; iterate
   ╎    ╎    ╎   2    @Base\array.jl:898; iterate
   ╎    ╎    ╎    2    @Base\int.jl:487; <
  2╎    ╎    ╎     2    @Base\int.jl:480; <
   ╎    ╎    ╎ 137  @Base\abstractset.jl:501; mapfilter(pred::Base.var"#132#133"{typeof(∉), typeof(push!), Set{String}}, f::typeof(push!), itr::Vector{String}, res::Vector{String})
   ╎    ╎    ╎  66   @Base\array.jl:2650; #132
   ╎    ╎    ╎   66   @Base\operators.jl:1254; ∉
   ╎    ╎    ╎    66   @Base\set.jl:66; in
   ╎    ╎    ╎     66   @Base\dict.jl:569; haskey
 14╎    ╎    ╎    ╎ 14   @Base\dict.jl:280; ht_keyindex(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    ╎ 2    @Base\dict.jl:281; ht_keyindex(h::Dict{String, Nothing}, key::String)
  1╎    ╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  1╎    ╎    ╎    ╎  1    @Base\array.jl:215; length
   ╎    ╎    ╎    ╎ 31   @Base\dict.jl:284; ht_keyindex(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    ╎  31   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎   31   @Base\hashing.jl:20; hash
 31╎    ╎    ╎    ╎    31   @Base\hashing.jl:107; hash
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:285; ht_keyindex(h::Dict{String, Nothing}, key::String)
  1╎    ╎    ╎    ╎  1    @Base\Base.jl:38; getproperty
  3╎    ╎    ╎    ╎ 9    @Base\dict.jl:288; ht_keyindex(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    ╎  6    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎    ╎   1    @Base\Base.jl:38; getproperty
  5╎    ╎    ╎    ╎   5    @Base\array.jl:924; getindex
  5╎    ╎    ╎    ╎ 9    @Base\dict.jl:291; ht_keyindex(h::Dict{String, Nothing}, key::String)
  1╎    ╎    ╎    ╎  1    @Base\array.jl:924; getindex
  1╎    ╎    ╎    ╎  3    @Base\operators.jl:140; isequal
  1╎    ╎    ╎    ╎   1    @Base\strings\string.jl:122; ==(a::String, b::String)
  1╎    ╎    ╎    ╎   1    @Base\strings\string.jl:125; ==(a::String, b::String)
   ╎    ╎    ╎  45   @Base\array.jl:2651; #132
  3╎    ╎    ╎   45   @Base\set.jl:67; push!
  4╎    ╎    ╎    4    @Base\dict.jl:381; setindex!(h::Dict{String, Nothing}, v0::Nothing, key::String)
  1╎    ╎    ╎    37   @Base\dict.jl:383; setindex!(h::Dict{String, Nothing}, v0::Nothing, key::String)
  1╎    ╎    ╎     1    @Base\dict.jl:0; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
  9╎    ╎    ╎     9    @Base\dict.jl:305; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎     1    @Base\dict.jl:308; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
  1╎    ╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     21   @Base\dict.jl:309; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    ╎ 21   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    ╎  19   @Base\hashing.jl:20; hash
 19╎    ╎    ╎    ╎   19   @Base\hashing.jl:107; hash
  2╎    ╎    ╎    ╎  2    @Base\int.jl:87; +
   ╎    ╎    ╎     1    @Base\dict.jl:311; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
  1╎    ╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎     1    @Base\dict.jl:314; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    ╎ 1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎    ╎  1    @Base\array.jl:924; getindex
   ╎    ╎    ╎     1    @Base\dict.jl:327; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    ╎ 1    @Base\operators.jl:140; isequal
   ╎    ╎    ╎    ╎  1    @Base\strings\string.jl:125; ==(a::String, b::String)
  1╎    ╎    ╎    ╎   1    @Base\strings\string.jl:113; _memcmp
  1╎    ╎    ╎     1    @Base\int.jl:0; ht_keyindex2!(h::Dict{String, Nothing}, key::String)
   ╎    ╎    ╎    1    @Base\dict.jl:390; setindex!(h::Dict{String, Nothing}, v0::Nothing, key::String)
   ╎    ╎    ╎     1    @Base\dict.jl:366; _setindex!
   ╎    ╎    ╎    ╎ 1    @Base\operators.jl:382; >
  1╎    ╎    ╎    ╎  1    @Base\int.jl:83; <
   ╎    ╎    ╎  25   @Base\array.jl:1058; push!
 25╎    ╎    ╎   25   @Base\array.jl:1011; _growend!
   ╎    ╎    ╎  1    @Base\array.jl:1059; push!
  1╎    ╎    ╎   1    @Base\array.jl:966; setindex!
   ╎    ╎    ╎ 3    @Base\abstractset.jl:502; mapfilter(pred::Base.var"#132#133"{typeof(∉), typeof(push!), Set{String}}, f::typeof(push!), itr::Vector{String}, res::Vector{String})
   ╎    ╎    ╎  3    @Base\array.jl:898; iterate
  3╎    ╎    ╎   3    @Base\array.jl:924; getindex
  2╎    ╎    ╎ 2    @Base\array.jl:0; mapfilter(pred::Base.var"#132#133"{typeof(∉), typeof(push!), Set{String}}, f::typeof(push!), itr::Vector{String}, res::Vector{String})
   ╎    ╎     52   @Base\set.jl:9; Set
  6╎    ╎    ╎ 6    @Base\dict.jl:88; Dict{String, Nothing}()
  1╎    ╎    ╎ 46   @Base\dict.jl:90; Dict{String, Nothing}()
   ╎    ╎    ╎  5    @Base\array.jl:584; zeros
   ╎    ╎    ╎   4    @Base\array.jl:588; zeros
   ╎    ╎    ╎    4    @Base\boot.jl:468; Array
  4╎    ╎    ╎     4    @Base\boot.jl:459; Array
   ╎    ╎    ╎   1    @Base\array.jl:589; zeros
  1╎    ╎    ╎    1    @Base\array.jl:429; fill!
 40╎    ╎    ╎  40   @Base\boot.jl:459; Array
   ╎    ╎  2    C:\dev\advent_of_code\2022\day16\part2.jl:207; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   2    @Base\array.jl:924; getindex
 83╎    ╎  271  C:\dev\advent_of_code\2022\day16\part2.jl:208; main(loglevel::Base.CoreLogging.LogLevel)
  1╎    ╎   1    @Base\array.jl:2534; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
   ╎    ╎   17   @Base\array.jl:2536; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  2╎    ╎    2    @Base\array.jl:215; length
 15╎    ╎    15   @Base\boot.jl:459; Array
   ╎    ╎   2    @Base\array.jl:2537; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
   ╎    ╎    2    @Base\array.jl:898; iterate
   ╎    ╎     2    @Base\array.jl:898; iterate
  2╎    ╎    ╎ 2    @Base\array.jl:924; getindex
   ╎    ╎   6    @Base\array.jl:2538; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  6╎    ╎    6    @Base\array.jl:966; setindex!
   ╎    ╎   160  @Base\array.jl:2539; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  1╎    ╎    160  C:\dev\advent_of_code\2022\day16\part2.jl:208; #16
  4╎    ╎     4    C:\dev\advent_of_code\2022\day16\part2.jl:187; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
 35╎    ╎     74   C:\dev\advent_of_code\2022\day16\part2.jl:188; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    ╎ 37   @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎  1    @Base\dict.jl:0; ht_keyindex(h::Dict{String, Int64}, key::String)
  5╎    ╎    ╎  5    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎  1    @Base\dict.jl:281; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎   1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎  20   @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   20   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    20   @Base\hashing.jl:20; hash
 20╎    ╎    ╎     20   @Base\hashing.jl:107; hash
  4╎    ╎    ╎  5    @Base\dict.jl:288; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎    1    @Base\array.jl:924; getindex
  1╎    ╎    ╎  5    @Base\dict.jl:291; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
   ╎    ╎    ╎   3    @Base\operators.jl:140; isequal
  1╎    ╎    ╎    1    @Base\strings\string.jl:122; ==(a::String, b::String)
   ╎    ╎    ╎    2    @Base\strings\string.jl:125; ==(a::String, b::String)
  1╎    ╎    ╎     1    @Base\promotion.jl:477; ==
  1╎    ╎    ╎     1    @Base\strings\string.jl:113; _memcmp
  1╎    ╎    ╎ 2    @Base\dict.jl:498; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎  1    @Base\int.jl:83; <
 20╎    ╎     73   C:\dev\advent_of_code\2022\day16\part2.jl:189; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    ╎ 51   @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  2╎    ╎    ╎  2    @Base\dict.jl:0; ht_keyindex(h::Dict{String, Int64}, key::String)
  4╎    ╎    ╎  4    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎  2    @Base\dict.jl:281; ht_keyindex(h::Dict{String, Int64}, key::String)
  2╎    ╎    ╎   2    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎  25   @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   25   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    25   @Base\hashing.jl:20; hash
 25╎    ╎    ╎     25   @Base\hashing.jl:107; hash
  4╎    ╎    ╎  5    @Base\dict.jl:288; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎    1    @Base\array.jl:924; getindex
  8╎    ╎    ╎  13   @Base\dict.jl:291; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎   5    @Base\operators.jl:140; isequal
   ╎    ╎    ╎    4    @Base\strings\string.jl:125; ==(a::String, b::String)
  1╎    ╎    ╎     1    @Base\promotion.jl:477; ==
  3╎    ╎    ╎     3    @Base\strings\string.jl:113; _memcmp
   ╎    ╎    ╎ 2    @Base\dict.jl:498; getindex(h::Dict{String, Int64}, key::String)
  2╎    ╎    ╎  2    @Base\int.jl:83; <
  1╎    ╎     8    C:\dev\advent_of_code\2022\day16\part2.jl:190; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  7╎    ╎    ╎ 7    @Base\array.jl:925; getindex
   ╎    ╎   1    @Base\array.jl:2540; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  1╎    ╎    1    @Base\array.jl:0; iterate
   ╎    ╎   1    @Base\array.jl:2541; filter(f::var"#16#29"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  1╎    ╎    1    @Base\int.jl:86; -
 66╎    ╎  202  C:\dev\advent_of_code\2022\day16\part2.jl:209; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   10   @Base\array.jl:2536; filter(f::var"#17#30"{Vector{String}}, a::Vector{Valve})
 10╎    ╎    10   @Base\boot.jl:459; Array
   ╎    ╎   7    @Base\array.jl:2538; filter(f::var"#17#30"{Vector{String}}, a::Vector{Valve})
  7╎    ╎    7    @Base\array.jl:966; setindex!
  2╎    ╎   101  @Base\array.jl:2539; filter(f::var"#17#30"{Vector{String}}, a::Vector{Valve})
 38╎    ╎    99   C:\dev\advent_of_code\2022\day16\part2.jl:209; (::var"#17#30"{Vector{String}})(valve::Valve)
  5╎    ╎     5    @Base\bool.jl:35; !
  3╎    ╎     3    @Base\operators.jl:0; in(x::String, itr::Vector{String})
  7╎    ╎     7    @Base\operators.jl:1240; in(x::String, itr::Vector{String})
   ╎    ╎     2    @Base\operators.jl:1242; in(x::String, itr::Vector{String})
   ╎    ╎    ╎ 2    @Base\array.jl:898; iterate
  1╎    ╎    ╎  2    @Base\array.jl:898; iterate
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
   ╎    ╎     35   @Base\operators.jl:1243; in(x::String, itr::Vector{String})
  2╎    ╎    ╎ 2    @Base\strings\string.jl:0; ==(a::String, b::String)
  4╎    ╎    ╎ 4    @Base\strings\string.jl:122; ==(a::String, b::String)
   ╎    ╎    ╎ 1    @Base\strings\string.jl:123; ==(a::String, b::String)
   ╎    ╎    ╎  1    @Base\pointer.jl:155; ==
  1╎    ╎    ╎   1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎ 28   @Base\strings\string.jl:125; ==(a::String, b::String)
 15╎    ╎    ╎  15   @Base\promotion.jl:477; ==
 13╎    ╎    ╎  13   @Base\strings\string.jl:113; _memcmp
  4╎    ╎     4    @Base\operators.jl:1246; in(x::String, itr::Vector{String})
   ╎    ╎     5    @Base\operators.jl:1249; in(x::String, itr::Vector{String})
  1╎    ╎    ╎ 5    @Base\array.jl:898; iterate
  4╎    ╎    ╎  4    @Base\array.jl:924; getindex
   ╎    ╎   6    @Base\array.jl:2540; filter(f::var"#17#30"{Vector{String}}, a::Vector{Valve})
   ╎    ╎    6    @Base\array.jl:898; iterate
  5╎    ╎     5    @Base\array.jl:924; getindex
   ╎    ╎     1    @Base\int.jl:487; <
  1╎    ╎    ╎ 1    @Base\int.jl:480; <
   ╎    ╎   10   @Base\array.jl:2541; filter(f::var"#17#30"{Vector{String}}, a::Vector{Valve})
   ╎    ╎    8    @Base\array.jl:1241; resize!
  8╎    ╎     8    @Base\array.jl:1020; _deleteend!
  2╎    ╎    2    @Base\int.jl:86; -
   ╎    ╎   2    @Base\array.jl:2542; filter(f::var"#17#30"{Vector{String}}, a::Vector{Valve})
  2╎    ╎    2    @Base\array.jl:1267; sizehint!
   ╎    ╎  2    C:\dev\advent_of_code\2022\day16\part2.jl:210; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   2    @Base\array.jl:924; getindex
 82╎    ╎  273  C:\dev\advent_of_code\2022\day16\part2.jl:211; main(loglevel::Base.CoreLogging.LogLevel)
  1╎    ╎   1    @Base\array.jl:2534; filter(f::var"#18#31"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
   ╎    ╎   11   @Base\array.jl:2536; filter(f::var"#18#31"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
 11╎    ╎    11   @Base\boot.jl:459; Array
   ╎    ╎   3    @Base\array.jl:2538; filter(f::var"#18#31"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  1╎    ╎    1    @Base\array.jl:924; setindex!
  2╎    ╎    2    @Base\array.jl:966; setindex!
   ╎    ╎   173  @Base\array.jl:2539; filter(f::var"#18#31"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  2╎    ╎    173  C:\dev\advent_of_code\2022\day16\part2.jl:211; #18
  6╎    ╎     6    C:\dev\advent_of_code\2022\day16\part2.jl:187; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
 30╎    ╎     80   C:\dev\advent_of_code\2022\day16\part2.jl:188; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    ╎ 49   @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎  1    @Base\dict.jl:0; ht_keyindex(h::Dict{String, Int64}, key::String)
  5╎    ╎    ╎  5    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎  1    @Base\dict.jl:281; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎   1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎  27   @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   27   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    27   @Base\hashing.jl:20; hash
 27╎    ╎    ╎     27   @Base\hashing.jl:107; hash
  4╎    ╎    ╎  5    @Base\dict.jl:288; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎    1    @Base\array.jl:924; getindex
  7╎    ╎    ╎  10   @Base\dict.jl:291; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎   1    @Base\array.jl:924; getindex
   ╎    ╎    ╎   2    @Base\operators.jl:140; isequal
  1╎    ╎    ╎    1    @Base\strings\string.jl:122; ==(a::String, b::String)
   ╎    ╎    ╎    1    @Base\strings\string.jl:125; ==(a::String, b::String)
  1╎    ╎    ╎     1    @Base\promotion.jl:477; ==
   ╎    ╎    ╎ 1    @Base\dict.jl:498; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎  1    @Base\int.jl:83; <
 26╎    ╎     81   C:\dev\advent_of_code\2022\day16\part2.jl:189; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  1╎    ╎    ╎ 1    @Base\dict.jl:496; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎ 50   @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  5╎    ╎    ╎  5    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎  1    @Base\dict.jl:281; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎   1    @Base\Base.jl:38; getproperty
   ╎    ╎    ╎  28   @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   28   @Base\dict.jl:169; hashindex
   ╎    ╎    ╎    28   @Base\hashing.jl:20; hash
 27╎    ╎    ╎     28   @Base\hashing.jl:107; hash
  1╎    ╎    ╎    ╎ 1    @Base\int.jl:87; +
  4╎    ╎    ╎  5    @Base\dict.jl:288; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎   1    @Base\dict.jl:171; isslotempty
  1╎    ╎    ╎    1    @Base\array.jl:924; getindex
  4╎    ╎    ╎  10   @Base\dict.jl:291; ht_keyindex(h::Dict{String, Int64}, key::String)
  4╎    ╎    ╎   4    @Base\array.jl:924; getindex
   ╎    ╎    ╎   2    @Base\operators.jl:140; isequal
   ╎    ╎    ╎    2    @Base\strings\string.jl:125; ==(a::String, b::String)
  1╎    ╎    ╎     1    @Base\promotion.jl:477; ==
  1╎    ╎    ╎     1    @Base\strings\string.jl:113; _memcmp
  2╎    ╎    ╎ 4    @Base\dict.jl:498; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎  1    @Base\array.jl:924; getindex
  1╎    ╎    ╎  1    @Base\int.jl:83; <
   ╎    ╎     4    C:\dev\advent_of_code\2022\day16\part2.jl:190; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  4╎    ╎    ╎ 4    @Base\array.jl:925; getindex
   ╎    ╎   3    @Base\array.jl:2540; filter(f::var"#18#31"{var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}}, Valve, Path}, a::Vector{Valve})
  1╎    ╎    1    @Base\array.jl:0; iterate
   ╎    ╎    2    @Base\array.jl:898; iterate
  1╎    ╎     1    @Base\array.jl:924; getindex
   ╎    ╎     1    @Base\int.jl:487; <
  1╎    ╎    ╎ 1    @Base\int.jl:480; <
 63╎    ╎  163  C:\dev\advent_of_code\2022\day16\part2.jl:212; main(loglevel::Base.CoreLogging.LogLevel)
  2╎    ╎   2    @Base\array.jl:2534; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
   ╎    ╎   16   @Base\array.jl:2536; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
 16╎    ╎    16   @Base\boot.jl:459; Array
   ╎    ╎   3    @Base\array.jl:2537; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
   ╎    ╎    3    @Base\array.jl:898; iterate
   ╎    ╎     3    @Base\array.jl:898; iterate
  3╎    ╎    ╎ 3    @Base\array.jl:924; getindex
   ╎    ╎   5    @Base\array.jl:2538; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
  5╎    ╎    5    @Base\array.jl:966; setindex!
   ╎    ╎   68   @Base\array.jl:2539; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
  1╎    ╎    1    @Base\essentials.jl:489; ifelse
 32╎    ╎    67   C:\dev\advent_of_code\2022\day16\part2.jl:212; (::var"#19#32"{Vector{String}})(valve::Valve)
  5╎    ╎     5    @Base\bool.jl:35; !
  1╎    ╎     1    @Base\operators.jl:0; in(x::String, itr::Vector{String})
 11╎    ╎     11   @Base\operators.jl:1240; in(x::String, itr::Vector{String})
   ╎    ╎     2    @Base\operators.jl:1242; in(x::String, itr::Vector{String})
   ╎    ╎    ╎ 2    @Base\array.jl:898; iterate
  1╎    ╎    ╎  2    @Base\array.jl:898; iterate
  1╎    ╎    ╎   1    @Base\array.jl:215; length
  1╎    ╎     14   @Base\operators.jl:1243; in(x::String, itr::Vector{String})
  2╎    ╎    ╎ 2    @Base\strings\string.jl:0; ==(a::String, b::String)
  2╎    ╎    ╎ 2    @Base\strings\string.jl:122; ==(a::String, b::String)
  1╎    ╎    ╎ 1    @Base\strings\string.jl:123; ==(a::String, b::String)
  2╎    ╎    ╎ 8    @Base\strings\string.jl:125; ==(a::String, b::String)
  4╎    ╎    ╎  4    @Base\promotion.jl:477; ==
  2╎    ╎    ╎  2    @Base\strings\string.jl:113; _memcmp
  1╎    ╎     1    @Base\operators.jl:1246; in(x::String, itr::Vector{String})
   ╎    ╎     1    @Base\operators.jl:1249; in(x::String, itr::Vector{String})
   ╎    ╎    ╎ 1    @Base\array.jl:898; iterate
  1╎    ╎    ╎  1    @Base\array.jl:924; getindex
   ╎    ╎   5    @Base\array.jl:2541; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
  1╎    ╎    1    @Base\array.jl:1237; resize!
   ╎    ╎    3    @Base\array.jl:1241; resize!
  2╎    ╎     3    @Base\array.jl:1020; _deleteend!
   ╎    ╎    ╎ 1    @Base\essentials.jl:412; cconvert
   ╎    ╎    ╎  1    @Base\number.jl:7; convert
   ╎    ╎    ╎   1    @Base\boot.jl:769; UInt64
   ╎    ╎    ╎    1    @Base\boot.jl:739; toUInt64
  1╎    ╎    ╎     1    @Base\boot.jl:628; check_top_bit
  1╎    ╎    1    @Base\int.jl:86; -
   ╎    ╎   1    @Base\array.jl:2542; filter(f::var"#19#32"{Vector{String}}, a::Vector{Valve})
  1╎    ╎    1    @Base\array.jl:1267; sizehint!
   ╎    ╎  101  C:\dev\advent_of_code\2022\day16\part2.jl:215; main(loglevel::Base.CoreLogging.LogLevel)
 17╎    ╎   17   @Base\array.jl:0; collect(itr::Base.Generator{Vector{Valve}, var"#20#33"})
  1╎    ╎   1    @Base\array.jl:780; collect(itr::Base.Generator{Vector{Valve}, var"#20#33"})
   ╎    ╎   83   @Base\sort.jl:769; sort##kw
   ╎    ╎    83   @Base\sort.jl:769; #sort#9
   ╎    ╎     6    @Base\abstractarray.jl:1152; copymutable
   ╎    ╎    ╎ 2    @Base\array.jl:346; copyto!
   ╎    ╎    ╎  2    @Base\array.jl:322; copyto!
  1╎    ╎    ╎   1    @Base\array.jl:328; _copyto_impl!(dest::Vector{Int64}, doffs::Int64, src::Vector{Int64}, soffs::Int64, n::Int64)
   ╎    ╎    ╎   1    @Base\array.jl:331; _copyto_impl!(dest::Vector{Int64}, doffs::Int64, src::Vector{Int64}, soffs::Int64, n::Int64)
  1╎    ╎    ╎    1    @Base\array.jl:289; unsafe_copyto!
   ╎    ╎    ╎ 4    @Base\array.jl:373; similar
  4╎    ╎    ╎  4    @Base\boot.jl:459; Array
   ╎    ╎     77   @Base\sort.jl:704; sort!##kw
  1╎    ╎    ╎ 1    @Base\sort.jl:0; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
   ╎    ╎    ╎ 57   @Base\sort.jl:710; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
 57╎    ╎    ╎  57   @Base\ordering.jl:161; ord(lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
 17╎    ╎    ╎ 19   @Base\sort.jl:722; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
  1╎    ╎    ╎  2    @Base\sort.jl:661; sort!(v::Vector{Int64}, alg::Base.Sort.QuickSortAlg, order::Base.Order.ReverseOrdering{Base.Order.ForwardOrdering})
   ╎    ╎    ╎   1    @Base\sort.jl:571; sort!(v::Vector{Int64}, lo::Int64, hi::Int64, a::Base.Sort.QuickSortAlg, o::Base.Order.ReverseOrdering{Base.Order.ForwardOrdering})
   ╎    ╎    ╎    1    @Base\sort.jl:512; sort!(v::Vector{Int64}, lo::Int64, hi::Int64, #unused#::Base.Sort.InsertionSortAlg, o::Base.Order.ReverseOrdering{Base.Order.ForwardOrdering})
  1╎    ╎    ╎     1    @Base\range.jl:883; iterate
   ╎    ╎  12   C:\dev\advent_of_code\2022\day16\part2.jl:217; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   11   @Base\broadcast.jl:860; materialize
   ╎    ╎    11   @Base\broadcast.jl:885; copy
   ╎    ╎     11   @Base\broadcast.jl:211; similar
   ╎    ╎    ╎ 11   @Base\broadcast.jl:212; similar
   ╎    ╎    ╎  11   @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎   11   @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎    11   @Base\boot.jl:476; Array
   ╎    ╎    ╎     11   @Base\boot.jl:468; Array
 11╎    ╎    ╎    ╎ 11   @Base\boot.jl:459; Array
   ╎    ╎   1    @Base\reducedim.jl:994; sum
   ╎    ╎    1    @Base\reducedim.jl:994; #sum#772
   ╎    ╎     1    @Base\reducedim.jl:998; _sum
   ╎    ╎    ╎ 1    @Base\reducedim.jl:998; #_sum#774
   ╎    ╎    ╎  1    @Base\reducedim.jl:999; _sum
   ╎    ╎    ╎   1    @Base\reducedim.jl:999; #_sum#775
   ╎    ╎    ╎    1    @Base\reducedim.jl:357; mapreduce
   ╎    ╎    ╎     1    @Base\reducedim.jl:357; #mapreduce#765
   ╎    ╎    ╎    ╎ 1    @Base\reducedim.jl:365; _mapreduce_dim
   ╎    ╎    ╎    ╎  1    @Base\reduce.jl:438; _mapreduce
   ╎    ╎    ╎    ╎   1    @Base\reduce.jl:27; add_sum
  1╎    ╎    ╎    ╎    1    @Base\int.jl:87; +
   ╎    ╎  82   C:\dev\advent_of_code\2022\day16\part2.jl:218; main(loglevel::Base.CoreLogging.LogLevel)
 15╎    ╎   15   @Base\array.jl:0; collect(itr::Base.Generator{Vector{Valve}, var"#21#34"})
   ╎    ╎   1    @Base\array.jl:787; collect(itr::Base.Generator{Vector{Valve}, var"#21#34"})
   ╎    ╎    1    @Base\generator.jl:44; iterate
   ╎    ╎     1    @Base\array.jl:898; iterate
   ╎    ╎    ╎ 1    @Base\array.jl:898; iterate
   ╎    ╎    ╎  1    @Base\int.jl:487; <
  1╎    ╎    ╎   1    @Base\int.jl:480; <
   ╎    ╎   66   @Base\sort.jl:769; sort##kw
   ╎    ╎    66   @Base\sort.jl:769; #sort#9
   ╎    ╎     17   @Base\abstractarray.jl:1152; copymutable
   ╎    ╎    ╎ 1    @Base\array.jl:346; copyto!
   ╎    ╎    ╎  1    @Base\array.jl:322; copyto!
   ╎    ╎    ╎   1    @Base\array.jl:331; _copyto_impl!(dest::Vector{Int64}, doffs::Int64, src::Vector{Int64}, soffs::Int64, n::Int64)
   ╎    ╎    ╎    1    @Base\array.jl:283; unsafe_copyto!
   ╎    ╎    ╎     1    @Base\abstractarray.jl:1190; pointer
  1╎    ╎    ╎    ╎ 1    @Base\pointer.jl:159; +
   ╎    ╎    ╎ 16   @Base\array.jl:373; similar
 16╎    ╎    ╎  16   @Base\boot.jl:459; Array
   ╎    ╎     49   @Base\sort.jl:704; sort!##kw
  1╎    ╎    ╎ 1    @Base\sort.jl:0; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
  1╎    ╎    ╎ 1    @Base\sort.jl:704; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
   ╎    ╎    ╎ 35   @Base\sort.jl:710; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
  4╎    ╎    ╎  4    @Base\ordering.jl:159; ord(lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
 31╎    ╎    ╎  31   @Base\ordering.jl:161; ord(lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
 11╎    ╎    ╎ 12   @Base\sort.jl:722; sort!(v::Vector{Int64}; alg::Base.Sort.QuickSortAlg, lt::Function, by::Function, rev::Bool, order::Base.Order.ForwardOrdering)
   ╎    ╎    ╎  1    @Base\sort.jl:661; sort!(v::Vector{Int64}, alg::Base.Sort.QuickSortAlg, order::Base.Order.ReverseOrdering{Base.Order.ForwardOrdering})
  1╎    ╎    ╎   1    @Base\sort.jl:0; sort!(v::Vector{Int64}, lo::Int64, hi::Int64, a::Base.Sort.QuickSortAlg, o::Base.Order.ReverseOrdering{Base.Order.ForwardOrdering})
   ╎    ╎  2    C:\dev\advent_of_code\2022\day16\part2.jl:219; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   2    @Base\range.jl:138; range##kw
   ╎    ╎    2    @Base\range.jl:138; #range#68
   ╎    ╎     2    @Base\range.jl:159; _range
   ╎    ╎    ╎ 2    @Base\range.jl:207; range_start_step_length
   ╎    ╎    ╎  2    @Base\range.jl:316; StepRange
  2╎    ╎    ╎   2    @Base\range.jl:321; steprange_last(start::Int64, step::Int64, stop::Int64)
   ╎    ╎  19   C:\dev\advent_of_code\2022\day16\part2.jl:220; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   19   @Base\broadcast.jl:860; materialize
   ╎    ╎    19   @Base\broadcast.jl:885; copy
   ╎    ╎     19   @Base\broadcast.jl:211; similar
   ╎    ╎    ╎ 19   @Base\broadcast.jl:212; similar
   ╎    ╎    ╎  19   @Base\abstractarray.jl:840; similar
   ╎    ╎    ╎   19   @Base\abstractarray.jl:841; similar
   ╎    ╎    ╎    19   @Base\boot.jl:476; Array
   ╎    ╎    ╎     19   @Base\boot.jl:468; Array
 19╎    ╎    ╎    ╎ 19   @Base\boot.jl:459; Array
  9╎    ╎  23   C:\dev\advent_of_code\2022\day16\part2.jl:228; main(loglevel::Base.CoreLogging.LogLevel)
  1╎    ╎   1    C:\dev\advent_of_code\2022\day16\part2.jl:187; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  4╎    ╎   5    C:\dev\advent_of_code\2022\day16\part2.jl:188; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    1    @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
   ╎    ╎     1    @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎ 1    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎  1    @Base\hashing.jl:20; hash
  1╎    ╎    ╎   1    @Base\hashing.jl:107; hash
  1╎    ╎   7    C:\dev\advent_of_code\2022\day16\part2.jl:189; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    5    @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  3╎    ╎     3    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎     2    @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎ 2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎  2    @Base\hashing.jl:20; hash
  2╎    ╎    ╎   2    @Base\hashing.jl:107; hash
   ╎    ╎    1    @Base\dict.jl:498; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎     1    @Base\int.jl:83; <
   ╎    ╎   1    C:\dev\advent_of_code\2022\day16\part2.jl:190; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  1╎    ╎    1    @Base\array.jl:925; getindex
   ╎    ╎  28   C:\dev\advent_of_code\2022\day16\part2.jl:229; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   28   C:\dev\advent_of_code\2022\day16\part2.jl:31; push##kw
   ╎    ╎    20   C:\dev\advent_of_code\2022\day16\part2.jl:32; #push#5
 19╎    ╎     19   @Base\array.jl:369; copy
  1╎    ╎     1    C:\dev\advent_of_code\2022\day16\part2.jl:22; Path
   ╎    ╎    8    C:\dev\advent_of_code\2022\day16\part2.jl:34; #push#5
   ╎    ╎     8    @Base\array.jl:1058; push!
  8╎    ╎    ╎ 8    @Base\array.jl:1011; _growend!
 15╎    ╎  23   C:\dev\advent_of_code\2022\day16\part2.jl:230; main(loglevel::Base.CoreLogging.LogLevel)
  7╎    ╎   7    @Base\Base.jl:39; setproperty!(x::Path, f::Symbol, v::Int64)
  1╎    ╎   1    @Base\int.jl:86; -(x::Int64, y::Int64)
   ╎    ╎  1    C:\dev\advent_of_code\2022\day16\part2.jl:232; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   1    @Base\array.jl:1059; push!
  1╎    ╎    1    @Base\array.jl:966; setindex!
 14╎    ╎  30   C:\dev\advent_of_code\2022\day16\part2.jl:237; main(loglevel::Base.CoreLogging.LogLevel)
  1╎    ╎   1    C:\dev\advent_of_code\2022\day16\part2.jl:187; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  5╎    ╎   7    C:\dev\advent_of_code\2022\day16\part2.jl:188; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    2    @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
   ╎    ╎     1    @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎ 1    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎  1    @Base\hashing.jl:20; hash
  1╎    ╎    ╎   1    @Base\hashing.jl:107; hash
  1╎    ╎     1    @Base\dict.jl:291; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎   7    C:\dev\advent_of_code\2022\day16\part2.jl:189; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
   ╎    ╎    6    @Base\dict.jl:497; getindex(h::Dict{String, Int64}, key::String)
  1╎    ╎     1    @Base\dict.jl:0; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎     1    @Base\dict.jl:280; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎     1    @Base\dict.jl:281; ht_keyindex(h::Dict{String, Int64}, key::String)
  1╎    ╎    ╎ 1    @Base\Base.jl:38; getproperty
   ╎    ╎     2    @Base\dict.jl:284; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎    ╎ 2    @Base\dict.jl:169; hashindex
   ╎    ╎    ╎  2    @Base\hashing.jl:20; hash
  2╎    ╎    ╎   2    @Base\hashing.jl:107; hash
  1╎    ╎     1    @Base\dict.jl:288; ht_keyindex(h::Dict{String, Int64}, key::String)
   ╎    ╎   1    C:\dev\advent_of_code\2022\day16\part2.jl:190; (::var"#traversaltime#25"{Matrix{Int64}, Dict{String, Int64}})(curvalve::Valve, nextvalve::Valve)
  1╎    ╎    1    @Base\array.jl:925; getindex
   ╎    ╎  21   C:\dev\advent_of_code\2022\day16\part2.jl:238; main(loglevel::Base.CoreLogging.LogLevel)
   ╎    ╎   21   C:\dev\advent_of_code\2022\day16\part2.jl:31; push##kw
   ╎    ╎    16   C:\dev\advent_of_code\2022\day16\part2.jl:32; #push#5
 13╎    ╎     13   @Base\array.jl:369; copy
  3╎    ╎     3    C:\dev\advent_of_code\2022\day16\part2.jl:22; Path
   ╎    ╎    5    C:\dev\advent_of_code\2022\day16\part2.jl:37; #push#5
   ╎    ╎     5    @Base\array.jl:1058; push!
  5╎    ╎    ╎ 5    @Base\array.jl:1011; _growend!
 14╎    ╎  24   C:\dev\advent_of_code\2022\day16\part2.jl:239; main(loglevel::Base.CoreLogging.LogLevel)
 10╎    ╎   10   @Base\Base.jl:39; setproperty!(x::Path, f::Symbol, v::Int64)
  1╎    ╎  1    C:\dev\advent_of_code\2022\day16\part2.jl:245; main(loglevel::Base.CoreLogging.LogLevel)
Total snapshots: 2277. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
