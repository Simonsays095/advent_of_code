Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
     ╎32617 @Base\client.jl:522; _start()
     ╎ 32617 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
     ╎  32617 @Base\Base.jl:419; include(mod::Module, _path::String)
     ╎   32617 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
     ╎    32617 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
    1╎     32617 @Base\boot.jl:368; eval
    1╎    ╎ 1     @Base\boot.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
   48╎    ╎ 48    C:\dev\advent_of_code\2022\day15\part2.jl:87; main(loglevel::Base.CoreLogging.LogLevel)
  471╎    ╎ 23535 C:\dev\advent_of_code\2022\day15\part2.jl:89; main(loglevel::Base.CoreLogging.LogLevel)
    1╎    ╎  1     @Base\array.jl:780; collect(itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}})
     ╎    ╎  731   @Base\array.jl:787; collect(itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}})
     ╎    ╎   731   @Base\generator.jl:47; iterate
  581╎    ╎    644   @Base\array.jl:0; (::var"#3#8"{Vector{Int64}})(idx::Int64)
    2╎    ╎     2     @Base\array.jl:924; getindex(A::Vector{Int64}, i1::Int64)
    3╎    ╎     60    @Base\array.jl:126; vect(::Int64, ::Vararg{Int64})
     ╎    ╎    ╎ 56    @Base\array.jl:679; _array_for
     ╎    ╎    ╎  56    @Base\array.jl:676; _array_for
     ╎    ╎    ╎   56    @Base\abstractarray.jl:840; similar
     ╎    ╎    ╎    56    @Base\abstractarray.jl:841; similar
     ╎    ╎    ╎     56    @Base\boot.jl:468; Array
   56╎    ╎    ╎    ╎ 56    @Base\boot.jl:459; Array
     ╎    ╎    ╎ 1     @Base\range.jl:883; iterate
    1╎    ╎    ╎  1     @Base\promotion.jl:477; ==
    1╎    ╎     1     @Base\int.jl:86; -(x::Int64, y::Int64)
   86╎    ╎    87    none:0; (::var"#3#8"{Vector{Int64}})(idx::Int64)
    1╎    ╎     1     @Base\array.jl:924; getindex(A::Vector{Vector{Vector{Int64}}}, i1::Int64)
  205╎    ╎  425   @Base\array.jl:792; collect(itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}})
     ╎    ╎   220   @Base\array.jl:676; _array_for(#unused#::Type{Vector{Int64}}, #unused#::Base.HasShape{1}, axs::Tuple{Base.OneTo{Int64}})
     ╎    ╎    220   @Base\abstractarray.jl:840; similar
     ╎    ╎     220   @Base\abstractarray.jl:841; similar
     ╎    ╎    ╎ 220   @Base\boot.jl:468; Array
  220╎    ╎    ╎  220   @Base\boot.jl:459; Array
   24╎    ╎  24    @Base\array.jl:796; collect(itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}})
   56╎    ╎  21875 @Base\array.jl:797; collect(itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}})
     ╎    ╎   1     @Base\array.jl:822; collect_to_with_first!(dest::Vector{Vector{Int64}}, v1::Vector{Int64}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, st::Int64)
    1╎    ╎    1     @Base\array.jl:966; setindex!
    7╎    ╎   21818 @Base\array.jl:823; collect_to_with_first!(dest::Vector{Vector{Int64}}, v1::Vector{Int64}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, st::Int64)
    8╎    ╎    8     @Base\array.jl:0; collect_to!(dest::Vector{Vector{Int64}}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, offs::Int64, st::Int64)
    2╎    ╎    2     @Base\array.jl:840; collect_to!(dest::Vector{Vector{Int64}}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, offs::Int64, st::Int64)
     ╎    ╎    21713 @Base\array.jl:845; collect_to!(dest::Vector{Vector{Int64}}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, offs::Int64, st::Int64)
    5╎    ╎     5     @Base\generator.jl:45; iterate
    4╎    ╎     21708 @Base\generator.jl:47; iterate
16772╎    ╎    ╎ 19360 @Base\array.jl:0; (::var"#3#8"{Vector{Int64}})(idx::Int64)
  122╎    ╎    ╎  122   @Base\array.jl:924; getindex(A::Vector{Int64}, i1::Int64)
   38╎    ╎    ╎  2404  @Base\array.jl:126; vect(::Int64, ::Vararg{Int64})
     ╎    ╎    ╎   2331  @Base\array.jl:679; _array_for
     ╎    ╎    ╎    2331  @Base\array.jl:676; _array_for
     ╎    ╎    ╎     2331  @Base\abstractarray.jl:840; similar
     ╎    ╎    ╎    ╎ 2331  @Base\abstractarray.jl:841; similar
     ╎    ╎    ╎    ╎  2331  @Base\boot.jl:468; Array
 2331╎    ╎    ╎    ╎   2331  @Base\boot.jl:459; Array
    1╎    ╎    ╎   1     @Base\array.jl:966; setindex!
     ╎    ╎    ╎   1     @Base\range.jl:5; Colon
     ╎    ╎    ╎    1     @Base\range.jl:393; UnitRange
    1╎    ╎    ╎     1     @Base\range.jl:400; unitrange_last
     ╎    ╎    ╎   31    @Base\range.jl:883; iterate
   31╎    ╎    ╎    31    @Base\promotion.jl:477; ==
    2╎    ╎    ╎   2     @Base\tuple.jl:29; getindex
   38╎    ╎    ╎  38    @Base\int.jl:86; -(x::Int64, y::Int64)
   21╎    ╎    ╎  23    @Base\int.jl:184; abs(x::Int64)
    2╎    ╎    ╎   2     @Base\int.jl:142; flipsign
 2254╎    ╎    ╎ 2344  none:0; (::var"#3#8"{Vector{Int64}})(idx::Int64)
   78╎    ╎    ╎  78    @Base\array.jl:924; getindex(A::Vector{Int64}, i1::Int64)
   12╎    ╎    ╎  12    @Base\array.jl:924; getindex
    2╎    ╎    2     @Base\array.jl:848; collect_to!(dest::Vector{Vector{Int64}}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, offs::Int64, st::Int64)
     ╎    ╎    86    @Base\array.jl:849; collect_to!(dest::Vector{Vector{Int64}}, itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}}, offs::Int64, st::Int64)
   86╎    ╎     86    @Base\array.jl:966; setindex!
    5╎    ╎  5     @Base\boot.jl:0; collect(itr::Base.Generator{Base.OneTo{Int64}, var"#3#8"{Vector{Int64}}})
    1╎    ╎  2     @Base\generator.jl:32; Base.Generator(f::var"#3#8"{Vector{Int64}}, iter::Base.OneTo{Int64})
    1╎    ╎   1     @Base\generator.jl:32; Generator
    1╎    ╎  1     @Base\range.jl:453; Base.OneTo(stop::Int64)
   36╎    ╎ 276   C:\dev\advent_of_code\2022\day15\part2.jl:92; main(loglevel::Base.CoreLogging.LogLevel)
    3╎    ╎  3     @Base\array.jl:2534; filter(f::var"#4#9", a::Vector{Vector{Int64}})
     ╎    ╎  146   @Base\array.jl:2536; filter(f::var"#4#9", a::Vector{Vector{Int64}})
  146╎    ╎   146   @Base\boot.jl:459; Array
    1╎    ╎  2     @Base\array.jl:2537; filter(f::var"#4#9", a::Vector{Vector{Int64}})
     ╎    ╎   1     @Base\array.jl:898; iterate
     ╎    ╎    1     @Base\array.jl:898; iterate
    1╎    ╎     1     @Base\array.jl:215; length
     ╎    ╎  60    @Base\array.jl:2538; filter(f::var"#4#9", a::Vector{Vector{Int64}})
   60╎    ╎   60    @Base\array.jl:966; setindex!
     ╎    ╎  20    @Base\array.jl:2539; filter(f::var"#4#9", a::Vector{Vector{Int64}})
   17╎    ╎   17    @Base\essentials.jl:489; ifelse
     ╎    ╎   3     C:\dev\advent_of_code\2022\day15\part2.jl:92; #4
    3╎    ╎    3     @Base\array.jl:924; getindex
     ╎    ╎  2     @Base\array.jl:2540; filter(f::var"#4#9", a::Vector{Vector{Int64}})
     ╎    ╎   2     @Base\array.jl:898; iterate
    1╎    ╎    1     @Base\array.jl:924; getindex
     ╎    ╎    1     @Base\int.jl:487; <
    1╎    ╎     1     @Base\int.jl:480; <
     ╎    ╎  4     @Base\array.jl:2541; filter(f::var"#4#9", a::Vector{Vector{Int64}})
     ╎    ╎   4     @Base\array.jl:1241; resize!
    4╎    ╎    4     @Base\array.jl:1020; _deleteend!
     ╎    ╎  2     @Base\array.jl:2542; filter(f::var"#4#9", a::Vector{Vector{Int64}})
    2╎    ╎   2     @Base\array.jl:1267; sizehint!
    1╎    ╎  1     @Base\array.jl:2543; filter(f::var"#4#9", a::Vector{Vector{Int64}})
   19╎    ╎ 143   C:\dev\advent_of_code\2022\day15\part2.jl:96; main(loglevel::Base.CoreLogging.LogLevel)
    2╎    ╎  124   @Base\sort.jl:704; (::Base.var"#sort!##kw")(::NamedTuple{(:by,), Tuple{var"#5#10"}}, ::typeof(sort!), v::Vector{Vector{Int64}})
     ╎    ╎   122   @Base\sort.jl:722; #sort!#8
     ╎    ╎    122   @Base\sort.jl:661; sort!
     ╎    ╎     122   @Base\sort.jl:588; sort!
     ╎    ╎    ╎ 59    @Base\array.jl:377; similar
   59╎    ╎    ╎  59    @Base\boot.jl:459; Array
    1╎    ╎    ╎ 1     @Base\sort.jl:0; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, a::Base.Sort.MergeSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering}, t::Vector{Vector{Int64}})
     ╎    ╎    ╎ 62    @Base\sort.jl:589; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, a::Base.Sort.MergeSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering}, t::Vector{Vector{Int64}})
    4╎    ╎    ╎  4     @Base\sort.jl:0; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, #unused#::Base.Sort.InsertionSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering})
     ╎    ╎    ╎  4     @Base\sort.jl:502; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, #unused#::Base.Sort.InsertionSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering})
    4╎    ╎    ╎   4     @Base\array.jl:924; getindex
     ╎    ╎    ╎  10    @Base\sort.jl:504; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, #unused#::Base.Sort.InsertionSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering})
   10╎    ╎    ╎   10    @Base\array.jl:924; getindex
   27╎    ╎    ╎  43    @Base\sort.jl:505; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, #unused#::Base.Sort.InsertionSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering})
     ╎    ╎    ╎   16    @Base\ordering.jl:119; lt
     ╎    ╎    ╎    1     @Base\ordering.jl:117; lt
     ╎    ╎    ╎     1     @Base\operators.jl:434; isless
    1╎    ╎    ╎    ╎ 1     @Base\int.jl:83; <
     ╎    ╎    ╎    15    C:\dev\advent_of_code\2022\day15\part2.jl:96; #5
   15╎    ╎    ╎     15    @Base\array.jl:924; getindex
     ╎    ╎    ╎  1     @Base\sort.jl:508; sort!(v::Vector{Vector{Int64}}, lo::Int64, hi::Int64, #unused#::Base.Sort.InsertionSortAlg, o::Base.Order.By{var"#5#10", Base.Order.ForwardOrdering})
    1╎    ╎    ╎   1     @Base\array.jl:966; setindex!
   57╎    ╎ 7782  C:\dev\advent_of_code\2022\day15\part2.jl:102; main(loglevel::Base.CoreLogging.LogLevel)
    6╎    ╎  6     @Base\essentials.jl:0; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
     ╎    ╎  71    C:\dev\advent_of_code\2022\day15\part2.jl:36; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
     ╎    ╎   32    @Base\array.jl:617; convert
     ╎    ╎    32    @Base\array.jl:626; Array
     ╎    ╎     6     @Base\abstractarray.jl:1126; copyto_axcheck!
    5╎    ╎    ╎ 6     @Base\abstractarray.jl:1123; _checkaxs(axd::Tuple{Base.OneTo{Int64}}, axs::Tuple{Base.OneTo{Int64}})
     ╎    ╎    ╎  1     @Base\tuple.jl:398; ==
     ╎    ╎    ╎   1     @Base\tuple.jl:402; _eq
     ╎    ╎    ╎    1     @Base\range.jl:1111; ==
    1╎    ╎    ╎     1     @Base\promotion.jl:477; ==
     ╎    ╎     26    @Base\boot.jl:468; Array
   26╎    ╎    ╎ 26    @Base\boot.jl:459; Array
     ╎    ╎   39    @Base\array.jl:125; vect
     ╎    ╎    39    @Base\boot.jl:478; Array
   39╎    ╎     39    @Base\boot.jl:459; Array
     ╎    ╎  20    C:\dev\advent_of_code\2022\day15\part2.jl:37; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
     ╎    ╎   3     @Base\array.jl:898; iterate
    1╎    ╎    3     @Base\array.jl:898; iterate
    2╎    ╎     2     @Base\array.jl:924; getindex
     ╎    ╎   17    @Base\tuple.jl:89; indexed_iterate
   16╎    ╎    16    @Base\array.jl:924; getindex
     ╎    ╎    1     @Base\tuple.jl:89; indexed_iterate
    1╎    ╎     1     @Base\array.jl:924; getindex
     ╎    ╎  7     C:\dev\advent_of_code\2022\day15\part2.jl:38; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
    3╎    ╎   3     @Base\int.jl:86; -
     ╎    ╎   4     @Base\promotion.jl:488; max
    4╎    ╎    4     @Base\essentials.jl:489; ifelse
     ╎    ╎  2     C:\dev\advent_of_code\2022\day15\part2.jl:39; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
    2╎    ╎   2     @Base\int.jl:87; +
    3╎    ╎  694   C:\dev\advent_of_code\2022\day15\part2.jl:42; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
    3╎    ╎   3     @Base\array.jl:0; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
   27╎    ╎   27    C:\dev\advent_of_code\2022\day15\part2.jl:9; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
     ╎    ╎   369   C:\dev\advent_of_code\2022\day15\part2.jl:10; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
     ╎    ╎    369   @Base\array.jl:125; vect
     ╎    ╎     369   @Base\boot.jl:478; Array
  369╎    ╎    ╎ 369   @Base\boot.jl:459; Array
    6╎    ╎   6     C:\dev\advent_of_code\2022\day15\part2.jl:12; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
     ╎    ╎   277   C:\dev\advent_of_code\2022\day15\part2.jl:13; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
     ╎    ╎    237   @Base\array.jl:1064; push!
  237╎    ╎     237   @Base\array.jl:1011; _growend!
   40╎    ╎    40    @Base\array.jl:1065; push!
     ╎    ╎   3     C:\dev\advent_of_code\2022\day15\part2.jl:15; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
     ╎    ╎    3     @Base\iterators.jl:167; iterate
    2╎    ╎     3     @Base\array.jl:898; iterate
    1╎    ╎    ╎ 1     @Base\array.jl:924; getindex
    6╎    ╎   6     C:\dev\advent_of_code\2022\day15\part2.jl:17; get_overlaps(left::Int64, right::Int64, intervals::Vector{Vector{Int64}})
     ╎    ╎  327   C:\dev\advent_of_code\2022\day15\part2.jl:45; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
     ╎    ╎   327   @Base\array.jl:125; vect
     ╎    ╎    327   @Base\boot.jl:478; Array
  327╎    ╎     327   @Base\boot.jl:459; Array
     ╎    ╎  463   C:\dev\advent_of_code\2022\day15\part2.jl:46; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
     ╎    ╎   1     @Base\abstractarray.jl:378; lastindex
     ╎    ╎    1     @Base\abstractarray.jl:341; eachindex
     ╎    ╎     1     @Base\abstractarray.jl:116; axes1
     ╎    ╎    ╎ 1     @Base\abstractarray.jl:95; axes
    1╎    ╎    ╎  1     @Base\array.jl:151; size
    2╎    ╎   2     @Base\array.jl:0; getindex
     ╎    ╎   414   @Base\array.jl:953; getindex
     ╎    ╎    379   @Base\array.jl:679; _array_for
     ╎    ╎     321   @Base\array.jl:676; _array_for
     ╎    ╎    ╎ 321   @Base\abstractarray.jl:840; similar
     ╎    ╎    ╎  321   @Base\abstractarray.jl:841; similar
     ╎    ╎    ╎   321   @Base\boot.jl:468; Array
  321╎    ╎    ╎    321   @Base\boot.jl:459; Array
     ╎    ╎     58    @Base\array.jl:664; _similar_shape
    5╎    ╎    ╎ 58    @Base\range.jl:688; axes
    3╎    ╎    ╎  3     @Base\range.jl:0; length(r::StepRange{Int64, Int64})
    5╎    ╎    ╎  5     @Base\range.jl:762; length(r::StepRange{Int64, Int64})
     ╎    ╎    ╎  13    @Base\range.jl:764; length(r::StepRange{Int64, Int64})
     ╎    ╎    ╎   13    @Base\range.jl:651; isempty
     ╎    ╎    ╎    8     @Base\operators.jl:282; !=
    8╎    ╎    ╎     8     @Base\promotion.jl:477; ==
     ╎    ╎    ╎    5     @Base\operators.jl:382; >
    5╎    ╎    ╎     5     @Base\int.jl:83; <
    1╎    ╎    ╎  1     @Base\range.jl:769; length(r::StepRange{Int64, Int64})
     ╎    ╎    ╎  28    @Base\range.jl:770; length(r::StepRange{Int64, Int64})
   28╎    ╎    ╎   28    @Base\int.jl:288; div
     ╎    ╎    ╎  3     @Base\range.jl:455; oneto
     ╎    ╎    ╎   3     @Base\range.jl:453; OneTo
     ╎    ╎    ╎    3     @Base\range.jl:440; OneTo
     ╎    ╎    ╎     3     @Base\promotion.jl:488; max
    3╎    ╎    ╎    ╎ 3     @Base\essentials.jl:489; ifelse
    1╎    ╎    1     @Base\array.jl:924; getindex
   34╎    ╎    34    @Base\essentials.jl:492; setindex!
     ╎    ╎   5     @Base\array.jl:898; iterate
     ╎    ╎    5     @Base\array.jl:898; iterate
    4╎    ╎     4     @Base\array.jl:924; getindex
     ╎    ╎     1     @Base\int.jl:487; <
    1╎    ╎    ╎ 1     @Base\int.jl:480; <
     ╎    ╎   41    @Base\range.jl:22; Colon
     ╎    ╎    41    @Base\range.jl:24; _colon
     ╎    ╎     41    @Base\range.jl:369; StepRange
    5╎    ╎    ╎ 41    @Base\range.jl:316; StepRange
   24╎    ╎    ╎  24    @Base\range.jl:321; steprange_last(start::Int64, step::Int64, stop::Int64)
     ╎    ╎    ╎  3     @Base\range.jl:329; steprange_last(start::Int64, step::Int64, stop::Int64)
    3╎    ╎    ╎   3     @Base\promotion.jl:477; ==
    1╎    ╎    ╎  1     @Base\range.jl:331; steprange_last(start::Int64, step::Int64, stop::Int64)
    2╎    ╎    ╎  2     @Base\range.jl:334; steprange_last(start::Int64, step::Int64, stop::Int64)
    6╎    ╎    ╎  6     @Base\range.jl:352; steprange_last(start::Int64, step::Int64, stop::Int64)
  142╎    ╎  492   C:\dev\advent_of_code\2022\day15\part2.jl:47; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
   26╎    ╎   26    @Base\array.jl:1353; popat!(a::Vector{Vector{Int64}}, i::Int64)
     ╎    ╎   5     @Base\array.jl:1354; popat!(a::Vector{Vector{Int64}}, i::Int64)
    5╎    ╎    5     @Base\array.jl:924; getindex
     ╎    ╎   19    @Base\array.jl:1355; popat!(a::Vector{Vector{Int64}}, i::Int64)
   19╎    ╎    19    @Base\array.jl:1022; _deleteat!
    2╎    ╎   2     @Base\array.jl:1356; popat!(a::Vector{Vector{Int64}}, i::Int64)
    1╎    ╎   1     @Base\array.jl:0; push!
     ╎    ╎   278   @Base\array.jl:1064; push!
  278╎    ╎    278   @Base\array.jl:1011; _growend!
   19╎    ╎   19    @Base\array.jl:1065; push!
    4╎    ╎  5272  C:\dev\advent_of_code\2022\day15\part2.jl:52; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
  261╎    ╎   261   @Base\array.jl:0; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
   32╎    ╎   32    C:\dev\advent_of_code\2022\day15\part2.jl:21; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
     ╎    ╎   31    C:\dev\advent_of_code\2022\day15\part2.jl:24; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
     ╎    ╎    31    @Base\array.jl:898; iterate
     ╎    ╎     31    @Base\array.jl:898; iterate
   24╎    ╎    ╎ 24    @Base\array.jl:924; getindex
    6╎    ╎    ╎ 6     @Base\array.jl:215; length
     ╎    ╎    ╎ 1     @Base\int.jl:487; <
    1╎    ╎    ╎  1     @Base\int.jl:480; <
  394╎    ╎   401   C:\dev\advent_of_code\2022\day15\part2.jl:25; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
    4╎    ╎    4     @Base\array.jl:924; getindex(A::Vector{Int64}, i1::Int64)
    3╎    ╎    3     @Base\promotion.jl:489; min(x::Int64, y::Int64)
  345╎    ╎   361   C:\dev\advent_of_code\2022\day15\part2.jl:26; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
   13╎    ╎    13    @Base\array.jl:924; getindex(A::Vector{Int64}, i1::Int64)
    2╎    ╎    3     @Base\promotion.jl:488; max(x::Int64, y::Int64)
    1╎    ╎     1     @Base\essentials.jl:489; ifelse
     ╎    ╎   1     C:\dev\advent_of_code\2022\day15\part2.jl:27; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
     ╎    ╎    1     @Base\array.jl:898; iterate
    1╎    ╎     1     @Base\array.jl:924; getindex
 3314╎    ╎   4181  C:\dev\advent_of_code\2022\day15\part2.jl:29; merge_intervals(intervals::Vector{Any}, start::Int64, stop::Int64)
   12╎    ╎    867   @Base\array.jl:126; vect(::Int64, ::Vararg{Int64})
     ╎    ╎     848   @Base\array.jl:679; _array_for
     ╎    ╎    ╎ 848   @Base\array.jl:676; _array_for
     ╎    ╎    ╎  848   @Base\abstractarray.jl:840; similar
     ╎    ╎    ╎   848   @Base\abstractarray.jl:841; similar
     ╎    ╎    ╎    848   @Base\boot.jl:468; Array
  848╎    ╎    ╎     848   @Base\boot.jl:459; Array
    1╎    ╎     1     @Base\array.jl:966; setindex!
     ╎    ╎     6     @Base\range.jl:883; iterate
    6╎    ╎    ╎ 6     @Base\promotion.jl:477; ==
  162╎    ╎  316   C:\dev\advent_of_code\2022\day15\part2.jl:56; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
    6╎    ╎   6     @Base\array.jl:1055; push!(a::Vector{Vector{Int64}}, item::Vector{Int64})
     ╎    ╎   139   @Base\array.jl:1058; push!(a::Vector{Vector{Int64}}, item::Vector{Int64})
  139╎    ╎    139   @Base\array.jl:1011; _growend!
     ╎    ╎   7     @Base\array.jl:1059; push!(a::Vector{Vector{Int64}}, item::Vector{Int64})
     ╎    ╎    1     @Base\abstractarray.jl:378; lastindex
     ╎    ╎     1     @Base\abstractarray.jl:341; eachindex
     ╎    ╎    ╎ 1     @Base\abstractarray.jl:116; axes1
     ╎    ╎    ╎  1     @Base\abstractarray.jl:95; axes
    1╎    ╎    ╎   1     @Base\array.jl:151; size
    6╎    ╎    6     @Base\array.jl:966; setindex!
    2╎    ╎   2     @Base\array.jl:1060; push!(a::Vector{Vector{Int64}}, item::Vector{Int64})
   10╎    ╎  26    C:\dev\advent_of_code\2022\day15\part2.jl:61; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
   12╎    ╎   12    @Base\array.jl:924; getindex
    4╎    ╎   4     @Base\promotion.jl:477; ==
     ╎    ╎  26    C:\dev\advent_of_code\2022\day15\part2.jl:64; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
    3╎    ╎   26    @Base\array.jl:898; iterate
    7╎    ╎    7     @Base\array.jl:924; getindex
   14╎    ╎    14    @Base\int.jl:87; +
     ╎    ╎    2     @Base\int.jl:487; <
    2╎    ╎     2     @Base\int.jl:480; <
    3╎    ╎  3     C:\dev\advent_of_code\2022\day15\part2.jl:65; get_ruled_out(maxsize::Int64, coverage::Vector{Vector{Int64}})
   50╎    ╎ 51    C:\dev\advent_of_code\2022\day15\part2.jl:103; main(loglevel::Base.CoreLogging.LogLevel)
     ╎    ╎  1     @Base\int.jl:280; mod(x::Int64, y::Int64)
     ╎    ╎   1     @Base\div.jl:292; fld
     ╎    ╎    1     @Base\div.jl:327; div
    1╎    ╎     1     @Base\int.jl:88; *
     ╎    ╎ 10    C:\dev\advent_of_code\2022\day15\part2.jl:104; main(loglevel::Base.CoreLogging.LogLevel)
    1╎    ╎  1     @Base\logging.jl:373; macro expansion
     ╎    ╎  9     @Base\logging.jl:376; macro expansion
     ╎    ╎   1     @Base\logging.jl:498; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
    1╎    ╎    1     @Base\logging.jl:493; current_logstate
     ╎    ╎   8     @Base\logging.jl:499; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
     ╎    ╎    8     @Base\logging.jl:540; env_override_minlevel(group::Symbol, _module::Module)
     ╎    ╎     8     @Base\env.jl:80; get
     ╎    ╎    ╎ 4     @Base\env.jl:11; access_env(onError::Returns{String}, str::String)
     ╎    ╎    ╎  1     @Base\c.jl:249; cwstring(s::String)
    1╎    ╎    ╎   1     @Base\operators.jl:1246; in(x::Int64, itr::Base.CodeUnits{UInt8, String})
     ╎    ╎    ╎  3     @Base\c.jl:250; cwstring(s::String)
     ╎    ╎    ╎   1     @Base\array.jl:1058; push!
    1╎    ╎    ╎    1     @Base\array.jl:1011; _growend!
     ╎    ╎    ╎   2     @Base\c.jl:352; transcode(#unused#::Type{UInt16}, src::Base.CodeUnits{UInt8, String})
     ╎    ╎    ╎    2     @Base\array.jl:1058; push!
    2╎    ╎    ╎     2     @Base\array.jl:1011; _growend!
     ╎    ╎    ╎ 4     @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
    4╎    ╎    ╎  4     @Base\env.jl:6; _getenvlen
    1╎    ╎ 2     C:\dev\advent_of_code\2022\day15\part2.jl:108; main(loglevel::Base.CoreLogging.LogLevel)
    1╎    ╎  1     @Base\array.jl:924; getindex
     ╎    ╎ 61    C:\dev\advent_of_code\2022\day15\part2.jl:110; main(loglevel::Base.CoreLogging.LogLevel)
     ╎    ╎  61    @Base\set.jl:31; Set
     ╎    ╎   61    @Base\set.jl:33; _Set
     ╎    ╎    61    @Base\set.jl:11; Set
     ╎    ╎     2     @Base\abstractset.jl:102; union!(s::Set{Int64}, itr::UnitRange{Int64})
     ╎    ╎    ╎ 2     @Base\set.jl:84; sizehint!
     ╎    ╎    ╎  2     @Base\dict.jl:244; sizehint!
     ╎    ╎    ╎   1     @Base\dict.jl:184; rehash!(h::Dict{Int64, Nothing}, newsz::Int64)
     ╎    ╎    ╎    1     @Base\array.jl:1236; resize!
    1╎    ╎    ╎     1     @Base\array.jl:1011; _growend!
     ╎    ╎    ╎   1     @Base\dict.jl:186; rehash!(h::Dict{Int64, Nothing}, newsz::Int64)
     ╎    ╎    ╎    1     @Base\array.jl:1236; resize!
    1╎    ╎    ╎     1     @Base\array.jl:1011; _growend!
     ╎    ╎     59    @Base\abstractset.jl:104; union!(s::Set{Int64}, itr::UnitRange{Int64})
     ╎    ╎    ╎ 59    @Base\set.jl:67; push!
    1╎    ╎    ╎  1     @Base\dict.jl:381; setindex!(h::Dict{Int64, Nothing}, v0::Nothing, key::Int64)
     ╎    ╎    ╎  45    @Base\dict.jl:383; setindex!(h::Dict{Int64, Nothing}, v0::Nothing, key::Int64)
   13╎    ╎    ╎   13    @Base\dict.jl:305; ht_keyindex2!(h::Dict{Int64, Nothing}, key::Int64)
     ╎    ╎    ╎   2     @Base\dict.jl:308; ht_keyindex2!(h::Dict{Int64, Nothing}, key::Int64)
    2╎    ╎    ╎    2     @Base\Base.jl:38; getproperty
     ╎    ╎    ╎   2     @Base\dict.jl:309; ht_keyindex2!(h::Dict{Int64, Nothing}, key::Int64)
     ╎    ╎    ╎    2     @Base\dict.jl:169; hashindex
     ╎    ╎    ╎     1     @Base\hashing.jl:20; hash
     ╎    ╎    ╎    ╎ 1     @Base\hashing.jl:75; hash
     ╎    ╎    ╎    ╎  1     @Base\hashing.jl:66; hash_uint64
     ╎    ╎    ╎    ╎   1     @Base\hashing.jl:33; hash_64_64
    1╎    ╎    ╎    ╎    1     @Base\int.jl:87; +
    1╎    ╎    ╎     1     @Base\int.jl:87; +
    9╎    ╎    ╎   9     @Base\dict.jl:314; ht_keyindex2!(h::Dict{Int64, Nothing}, key::Int64)
     ╎    ╎    ╎   1     @Base\dict.jl:315; ht_keyindex2!(h::Dict{Int64, Nothing}, key::Int64)
    1╎    ╎    ╎    1     @Base\int.jl:83; <
   18╎    ╎    ╎   18    @Base\dict.jl:327; ht_keyindex2!(h::Dict{Int64, Nothing}, key::Int64)
     ╎    ╎    ╎  13    @Base\dict.jl:390; setindex!(h::Dict{Int64, Nothing}, v0::Nothing, key::Int64)
     ╎    ╎    ╎   1     @Base\dict.jl:355; _setindex!
    1╎    ╎    ╎    1     @Base\Base.jl:38; getproperty
     ╎    ╎    ╎   8     @Base\dict.jl:356; _setindex!
    1╎    ╎    ╎    1     @Base\Base.jl:38; getproperty
    7╎    ╎    ╎    7     @Base\array.jl:966; setindex!
     ╎    ╎    ╎   3     @Base\dict.jl:358; _setindex!
    2╎    ╎    ╎    2     @Base\Base.jl:38; getproperty
    1╎    ╎    ╎    1     @Base\int.jl:87; +
     ╎    ╎    ╎   1     @Base\dict.jl:366; _setindex!
    1╎    ╎    ╎    1     @Base\int.jl:88; *
     ╎    ╎ 665   C:\dev\advent_of_code\2022\day15\part2.jl:113; main(loglevel::Base.CoreLogging.LogLevel)
     ╎    ╎  223   @Base\abstractset.jl:102; union!(s::Set{Any}, itr::UnitRange{Int64})
     ╎    ╎   223   @Base\set.jl:84; sizehint!
     ╎    ╎    223   @Base\dict.jl:244; sizehint!
    3╎    ╎     3     @Base\dict.jl:0; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
     ╎    ╎     1     @Base\dict.jl:185; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
    1╎    ╎    ╎ 1     @Base\array.jl:429; fill!
     ╎    ╎     1     @Base\dict.jl:186; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
     ╎    ╎    ╎ 1     @Base\array.jl:1236; resize!
    1╎    ╎    ╎  1     @Base\array.jl:1011; _growend!
     ╎    ╎     1     @Base\dict.jl:192; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
     ╎    ╎    ╎ 1     @Base\array.jl:584; zeros
     ╎    ╎    ╎  1     @Base\array.jl:589; zeros
    1╎    ╎    ╎   1     @Base\array.jl:429; fill!
     ╎    ╎     86    @Base\dict.jl:193; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
   86╎    ╎    ╎ 86    @Base\boot.jl:459; Array
  125╎    ╎     130   @Base\dict.jl:203; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
    1╎    ╎    ╎ 5     @Base\dict.jl:169; hashindex(key::Int64, sz::Int64)
     ╎    ╎    ╎  3     @Base\hashing.jl:20; hash
     ╎    ╎    ╎   3     @Base\hashing.jl:75; hash
     ╎    ╎    ╎    3     @Base\hashing.jl:66; hash_uint64
     ╎    ╎    ╎     2     @Base\hashing.jl:36; hash_64_64
    2╎    ╎    ╎    ╎ 2     @Base\int.jl:366; xor
     ╎    ╎    ╎     1     @Base\hashing.jl:39; hash_64_64
    1╎    ╎    ╎    ╎ 1     @Base\int.jl:87; +
    1╎    ╎    ╎  1     @Base\int.jl:340; &
     ╎    ╎     1     @Base\dict.jl:219; rehash!(h::Dict{Any, Nothing}, newsz::Int64)
    1╎    ╎    ╎ 1     @Base\range.jl:883; iterate
     ╎    ╎  441   @Base\abstractset.jl:104; union!(s::Set{Any}, itr::UnitRange{Int64})
     ╎    ╎   441   @Base\set.jl:67; push!
    4╎    ╎    4     @Base\dict.jl:381; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Int64)
    1╎    ╎    260   @Base\dict.jl:383; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Int64)
    2╎    ╎     2     @Base\dict.jl:0; ht_keyindex2!(h::Dict{Any, Nothing}, key::Int64)
    7╎    ╎     7     @Base\dict.jl:305; ht_keyindex2!(h::Dict{Any, Nothing}, key::Int64)
     ╎    ╎     2     @Base\dict.jl:306; ht_keyindex2!(h::Dict{Any, Nothing}, key::Int64)
    2╎    ╎    ╎ 2     @Base\Base.jl:38; getproperty
     ╎    ╎     2     @Base\dict.jl:309; ht_keyindex2!(h::Dict{Any, Nothing}, key::Int64)
     ╎    ╎    ╎ 2     @Base\dict.jl:169; hashindex
     ╎    ╎    ╎  2     @Base\hashing.jl:20; hash
     ╎    ╎    ╎   2     @Base\hashing.jl:75; hash
     ╎    ╎    ╎    2     @Base\hashing.jl:66; hash_uint64
     ╎    ╎    ╎     1     @Base\hashing.jl:36; hash_64_64
     ╎    ╎    ╎    ╎ 1     @Base\int.jl:501; >>
    1╎    ╎    ╎    ╎  1     @Base\int.jl:495; >>
     ╎    ╎    ╎     1     @Base\hashing.jl:39; hash_64_64
    1╎    ╎    ╎    ╎ 1     @Base\int.jl:87; +
   57╎    ╎     57    @Base\dict.jl:314; ht_keyindex2!(h::Dict{Any, Nothing}, key::Int64)
  153╎    ╎     189   @Base\dict.jl:327; ht_keyindex2!(h::Dict{Any, Nothing}, key::Int64)
   36╎    ╎    ╎ 36    @Base\array.jl:924; getindex
     ╎    ╎    177   @Base\dict.jl:390; setindex!(h::Dict{Any, Nothing}, v0::Nothing, key::Int64)
     ╎    ╎     177   @Base\dict.jl:356; _setindex!
    1╎    ╎    ╎ 1     @Base\Base.jl:38; getproperty
  176╎    ╎    ╎ 176   @Base\essentials.jl:492; setindex!
    1╎    ╎  1     @Base\abstractset.jl:105; union!(s::Set{Any}, itr::UnitRange{Int64})
   42╎    ╎ 42    C:\dev\advent_of_code\2022\day15\part2.jl:124; main(loglevel::Base.CoreLogging.LogLevel)
Total snapshots: 33205. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
