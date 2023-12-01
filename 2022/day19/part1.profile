Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
      ╎365665 @Base\client.jl:522; _start()
      ╎ 365665 @Base\client.jl:303; exec_options(opts::Base.JLOptions)
      ╎  365665 @Base\Base.jl:419; include(mod::Module, _path::String)
      ╎   365665 @Base\loading.jl:1488; _include(mapexpr::Function, mod::Module, _path::String)
      ╎    365665 @Base\loading.jl:1428; include_string(mapexpr::typeof(identity), mod::Module, code::String, filename::String)
      ╎     365665 @Base\boot.jl:368; eval
      ╎    ╎ 365665 C:\workdir\usr\share\julia\stdlib\v1.8\Profile\src\Profile.jl:27; top-level scope
      ╎    ╎  365665 @Base\timing.jl:262; macro expansion
    31╎    ╎   31     @Base\array.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
   697╎    ╎   697    @Base\initdefs.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
    44╎    ╎   44     @Base\int.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
    78╎    ╎   78     @Base\logging.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
    37╎    ╎   37     @Base\range.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
   476╎    ╎   476    C:\dev\advent_of_code\2022\day19\part1.jl:0; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎   20     C:\dev\advent_of_code\2022\day19\part1.jl:61; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    20     @Base\broadcast.jl:860; materialize
     1╎    ╎     2      @Base\broadcast.jl:900; copy
      ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:63; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:326; find_matching_methods(argtypes::Vector{Any}, atype::Any, method_table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}, union_split::Int64, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\methodtable.jl:113; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\methodtable.jl:122; findall(sig::Type, table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}; limit::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\methodtable.jl:74; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\methodtable.jl:75; #findall#248
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\methodtable.jl:106; _findall
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\reflection.jl:945; _methods_by_ftype
     2╎    ╎     2      @Base\broadcast.jl:901; copy
    14╎    ╎     16     @Base\broadcast.jl:907; copy
      ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎    ╎  2      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎   2      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:539; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\inlining.jl:82; ssa_inlining_pass!(ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, propagate_inbounds::...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:1425; assemble_inline_todo!(ir::Core.Compiler.IRCode, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\inlining.jl:1210; analyze_single_call!(ir::Core.Compiler.IRCode, idx::Int64, stmt::Expr, infos::Vector{Core.Compiler.MethodMatchInfo}, flag::UInt8, sig::Core.Compiler.Signature, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Comp...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\inlining.jl:1293; handle_match!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, cases::Vector{Core.Compil...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\inlining.jl:861; analyze_method!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\inlining.jl:804; resolve_todo(todo::Core.Compiler.InliningTodo, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, flag::UInt8)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:873; InliningTodo
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\legacy.jl:10; inflate_ir(ci::Core.CodeInfo, linfo::Core.MethodInstance)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\legacy.jl:35; inflate_ir(ci::Core.CodeInfo, sptypes::Vector{Any}, argtypes::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\array.jl:647; collect(#unused#::Type{Core.LineInfoNode}, itr::Vector{Core.LineInfoNode})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\array.jl:649; _collect(#unused#::Type{Core.LineInfoNode}, itr::Vector{Core.LineInfoNode}, isz::Core.Compiler.HasShape{1})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\array.jl:676; _array_for
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\abstractarray.jl:840; similar
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\abstractarray.jl:841; similar
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\boot.jl:468; Array
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\boot.jl:459; Array
      ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:536; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\optimize.jl:644; slot2reg
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\array.jl:0; scan_slot_def_use(nargs::Int64, ci::Core.CodeInfo, code::Vector{Any})
    21╎    ╎   23     C:\dev\advent_of_code\2022\day19\part1.jl:63; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    2      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎     2      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎  2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎   2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall:...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\optimize.jl:538; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\ir.jl:1459; compact!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\ir.jl:1461; compact!(code::Core.Compiler.IRCode, allow_cfg_transforms::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:1312; iterate(compact::Core.Compiler.IncrementalCompact, ::Tuple{Int64, Int64})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\ir.jl:1150; finish_current_bb!
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\ir.jl:1159; finish_current_bb!(compact::Core.Compiler.IncrementalCompact, active_bb::Int64, old_result_idx::Int64, unreachable::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\optimize.jl:542; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\passes.jl:813; sroa_pass!(ir::Core.Compiler.IRCode)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\passes.jl:387; lift_leaves(compact::Core.Compiler.IncrementalCompact, result_t::Any, field::Int64, leaves::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\passes.jl:451; lift_arg!(compact::Core.Compiler.IncrementalCompact, leaf::Any, cache_key::Any, stmt::Expr, argidx::Int64, lifted_leaves::Core.Compiler.IdDict{Any, Union{Nothing, Core.Compiler.LiftedValue}})
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\iddict.jl:86; setindex!(d::Core.Compiler.IdDict{Any, Union{Nothing, Core.Compiler.LiftedValue}}, val::Any, key::Any)
     5╎    ╎   6      C:\dev\advent_of_code\2022\day19\part1.jl:73; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    1      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎     1      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:63; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:326; find_matching_methods(argtypes::Vector{Any}, atype::Any, method_table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}, union_split::Int64, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\methodtable.jl:113; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\methodtable.jl:122; findall(sig::Type, table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}; limit::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\methodtable.jl:74; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\methodtable.jl:75; #findall#248
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\methodtable.jl:106; _findall
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\reflection.jl:945; _methods_by_ftype
      ╎    ╎   73     C:\dev\advent_of_code\2022\day19\part1.jl:74; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    69     @Base\logging.jl:360; macro expansion
      ╎    ╎     69     @Base\strings\io.jl:185; string(::String, ::Int64, ::Vararg{Any})
    19╎    ╎    ╎ 69     @Base\strings\io.jl:144; print_to_string(::String, ::Vararg{Any})
      ╎    ╎    ╎  9      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎    ╎   9      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎    9      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎     9      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 9      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  9      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   9      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    9      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎     9      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎ 9      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎  9      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   9      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    9      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     9      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 9      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  9      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   9      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    9      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     9      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 9      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  9      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   9      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    9      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     9      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 9      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  9      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   9      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    9      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     9      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 9      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  9      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   9      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    9      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     9      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 9      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  9      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   9      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    8      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     8      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Not...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:541; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:1459; compact!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\ir.jl:1462; compact!(code::Core.Compiler.IRCode, allow_cfg_transforms::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\ir.jl:1449; finish(compact::Core.Compiler.IncrementalCompact)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\ir.jl:1454; complete(compact::Core.Compiler.IncrementalCompact)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\array.jl:679; _array_for
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\array.jl:676; _array_for
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\abstractarray.jl:840; similar
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\abstractarray.jl:841; similar
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\boot.jl:468; Array
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\boot.jl:459; Array
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 7      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  7      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   7      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    7      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     7      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 7      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  7      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   7      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    7      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     6      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 6      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:843; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Not...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:893; maybe_get_const_prop_profitable(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1028; const_prop_function_heuristic(#unused#::Core.Compiler.NativeInterpreter, f::Any, ::Core.Compiler.ArgInfo, nargs::Int64, all_overridden::Bool, still_nothrow::Bool, #unused#::Core.Compiler.InferenceState)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typelattice.jl:233; ⊑
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:63; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:326; find_matching_methods(argtypes::Vector{Any}, atype::Any, method_table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}, union_split::Int64, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\methodtable.jl:113; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\methodtable.jl:116; findall(sig::Type, table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}; limit::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\methodtable.jl:74; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\methodtable.jl:75; #findall#248
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\methodtable.jl:106; _findall
     4╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\reflection.jl:945; _methods_by_ftype
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Not...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1620; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1357; abstract_apply(interp::Core.Compiler.NativeInterpreter, argtypes::Vector{Any}, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokec...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1626; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1419; abstract_call_builtin(interp::Core.Compiler.NativeInterpreter, f::Core.Builtin, ::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\tfuncs.jl:1914; builtin_tfunction(interp::Core.Compiler.AbstractInterpreter, f::Any, argtypes::Vector{Any}, sv::Union{Nothing, Core.Compiler.InferenceState})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\tfuncs.jl:238; egal_tfunc(x::Any, y::Any)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeutils.jl:178; hasintersect
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\reflection.jl:683; typeintersect
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\optimize.jl:539; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\inlining.jl:82; ssa_inlining_pass!(ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, propag...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\inlining.jl:1410; assemble_inline_todo!(ir::Core.Compiler.IRCode, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\inlining.jl:1275; handle_const_call!(ir::Core.Compiler.IRCode, idx::Int64, stmt::Expr, cinfo::Core.Compiler.ConstCallInfo, flag::UInt8, sig::Core.Compiler.Signature, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Co...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeutils.jl:44; argtypes_to_type
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\utilities.jl:43; anymap(f::Core.Compiler.var"#261#262", a::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeutils.jl:44; (::Core.Compiler.var"#261#262")(a::Any)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typelattice.jl:335; widenconst(::Core.Const)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\optimize.jl:539; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\inlining.jl:82; ssa_inlining_pass!(ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, propagate_inb...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\inlining.jl:1425; assemble_inline_todo!(ir::Core.Compiler.IRCode, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\inlining.jl:1210; analyze_single_call!(ir::Core.Compiler.IRCode, idx::Int64, stmt::Expr, infos::Vector{Core.Compiler.MethodMatchInfo}, flag::UInt8, sig::Core.Compiler.Signature, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{C...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\inlining.jl:1293; handle_match!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, cases::Vector{Core...
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:831; analyze_method!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter})
      ╎    ╎    ╎  41     @Base\strings\io.jl:35; print(io::IOBuffer, x::Vector{Robot})
      ╎    ╎    ╎   41     @Base\arrayshow.jl:484; show
      ╎    ╎    ╎    41     @Base\arrayshow.jl:513; show_vector
      ╎    ╎    ╎     41     @Base\arrayshow.jl:528; show_vector(io::IOBuffer, v::Vector{Robot}, opn::Char, cls::Char)
      ╎    ╎    ╎    ╎ 41     @Base\show.jl:1201; show_delim_array
      ╎    ╎    ╎    ╎  40     @Base\show.jl:1212; show_delim_array(io::IOContext{IOBuffer}, itr::Vector{Robot}, op::Char, delim::String, cl::Char, delim_one::Bool, i1::Int64, l::Int64)
      ╎    ╎    ╎    ╎   40     @Base\show.jl:391; show
      ╎    ╎    ╎    ╎    40     @Base\show.jl:396; show_default
      ╎    ╎    ╎    ╎     1      @Base\show.jl:409; _show_default(io::IOContext{IOBuffer}, x::Any)
     1╎    ╎    ╎    ╎    ╎ 1      @Base\reflection.jl:159; fieldname(t::DataType, i::Int64)
    26╎    ╎    ╎    ╎     39     @Base\show.jl:413; _show_default(io::IOContext{IOBuffer}, x::Any)
      ╎    ╎    ╎    ╎    ╎ 11     @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎    ╎    ╎    ╎  11     @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎    ╎    ╎   11     @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎    ╎    ╎    11     @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     11     @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 11     @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1620; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1357; abstract_apply(interp::Core.Compiler.NativeInterpreter, argtypes::Vector{Any}, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:865; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\inferencestate.jl:284; Core.Compiler.InferenceState(result::Core.Compiler.InferenceResult, cache::Symbol, interp::Core.Compiler.NativeInterpreter)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\utilities.jl:134; retrieve_code_info
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\optimize.jl:536; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\optimize.jl:644; slot2reg
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\ssair\slot2ssa.jl:38; scan_slot_def_use(nargs::Int64, ci::Core.CodeInfo, code::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\ssair\slot2ssa.jl:8; SlotInfo
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\array.jl:404; getindex
     4╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\boot.jl:459; Array
      ╎    ╎    ╎    ╎    ╎    ╎  6      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   6      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    6      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     6      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 6      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:63; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:326; find_matching_methods(argtypes::Vector{Any}, atype::Any, method_table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}, union_split::Int64, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\methodtable.jl:113; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\methodtable.jl:116; findall(sig::Type, table::Core.Compiler.CachedMethodTable{Core.Compiler.InternalMethodTable}; limit::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\methodtable.jl:74; findall##kw
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\methodtable.jl:75; #findall#248
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\methodtable.jl:106; _findall
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\reflection.jl:945; _methods_by_ftype
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  3      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   3      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:838; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:795; concrete_eval_call(interp::Core.Compiler.NativeInterpreter, f::Any, result::Core.Compiler.MethodCallResult, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1620; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1357; abstract_apply(interp::Core.Compiler.NativeInterpreter, argtypes::Vector{Any}, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Not...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokeca...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, in...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceSt...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.Infer...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.Infe...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:545; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:1459; compact!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\ir.jl:1459; compact!(code::Core.Compiler.IRCode, allow_cfg_transforms::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\ir.jl:575; Core.Compiler.IncrementalCompact(code::Core.Compiler.IRCode, allow_cfg_transforms::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\array.jl:534; fill
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\array.jl:536; fill
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\boot.jl:468; Array
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\boot.jl:459; Array
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:542; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\passes.jl:847; sroa_pass!(ir::Core.Compiler.IRCode)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:1426; simple_dce!(compact::Core.Compiler.IncrementalCompact, callback::Function)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:542; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\passes.jl:754; sroa_pass!(ir::Core.Compiler.IRCode)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\passes.jl:524; lift_comparison!(#unused#::typeof(isdefined), compact::Core.Compiler.IncrementalCompact, idx::Int64, stmt::Expr, lifting_cache::Core.Compiler.IdDict{Pair{Union{Core.Compiler.NewSSAValue, Core.Compiler.OldSSAValue, Core.SSAValue}, Any}, Union{Core.Com...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\optimize.jl:338; argextype
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:339; argextype
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:363; argextype(x::Any, src::Core.Compiler.IncrementalCompact, sptypes::Vector{Any}, slottypes::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:536; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\optimize.jl:645; slot2reg
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\slot2ssa.jl:900; construct_ssa!(ci::Core.CodeInfo, ir::Core.Compiler.IRCode, domtree::Core.Compiler.DomTree, defuses::Vector{Core.Compiler.SlotInfo}, slottypes::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\slot2ssa.jl:79; new_to_regular(stmt::Any, new_offset::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\ir.jl:459; iterate
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\ir.jl:465; iterate(it::Core.Compiler.UseRefIterator, #unused#::Nothing)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:359; getindex(x::Core.Compiler.UseRef)
      ╎    ╎    ╎    ╎    ╎ 2      @Base\dict.jl:30; show(io::IOContext{IOBuffer}, t::Dict{Resource, Int64})
     1╎    ╎    ╎    ╎    ╎  1      @Base\arrayshow.jl:566; typeinfo_prefix(io::IOContext{IOBuffer}, X::Dict{Resource, Int64})
      ╎    ╎    ╎    ╎    ╎  1      @Base\arrayshow.jl:575; typeinfo_prefix(io::IOContext{IOBuffer}, X::Dict{Resource, Int64})
      ╎    ╎    ╎    ╎    ╎   1      @Base\strings\io.jl:185; string
      ╎    ╎    ╎    ╎    ╎    1      @Base\strings\io.jl:144; print_to_string(xs::Type)
      ╎    ╎    ╎    ╎    ╎     1      @Base\strings\io.jl:35; print(io::IOBuffer, x::Type)
      ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\show.jl:881; show(io::IOBuffer, x::Type)
      ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\show.jl:886; _show_type(io::IOBuffer, x::Type)
      ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\show.jl:721; show_typealias(io::IOBuffer, x::Type)
      ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\show.jl:540; make_typealias(x::Type)
      ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\reflection.jl:102; names
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\reflection.jl:102; #names#8
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\sort.jl:704; sort!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\sort.jl:722; #sort!#8
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\sort.jl:661; sort!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\sort.jl:588; sort!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\sort.jl:594; sort!(v::Vector{Symbol}, lo::Int64, hi::Int64, a::Base.Sort.MergeSortAlg, o::Base.Order.ForwardOrdering, t::Vector{Symbol})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\sort.jl:595; sort!(v::Vector{Symbol}, lo::Int64, hi::Int64, a::Base.Sort.MergeSortAlg, o::Base.Order.ForwardOrdering, t::Vector{Symbol})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\sort.jl:606; sort!(v::Vector{Symbol}, lo::Int64, hi::Int64, a::Base.Sort.MergeSortAlg, o::Base.Order.ForwardOrdering, t::Vector{Symbol})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\ordering.jl:117; lt
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\strings\basic.jl:350; isless
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\strings\basic.jl:348; cmp
      ╎    ╎    ╎    ╎  1      @Base\show.jl:1225; show_delim_array(io::IOContext{IOBuffer}, itr::Vector{Robot}, op::Char, delim::String, cl::Char, delim_one::Bool, i1::Int64, l::Int64)
      ╎    ╎    ╎    ╎   1      @Base\char.jl:252; print
      ╎    ╎    ╎    ╎    1      @Base\io.jl:737; write(io::IOContext{IOBuffer}, c::Char)
      ╎    ╎    ╎    ╎     1      @Base\io.jl:417; write
      ╎    ╎    ╎    ╎    ╎ 1      @Base\iobuffer.jl:443; write
      ╎    ╎    ╎    ╎    ╎  1      @Base\iobuffer.jl:330; ensureroom
     1╎    ╎    ╎    ╎    ╎   1      @Base\array.jl:1011; _growend!
      ╎    ╎    4      @Base\logging.jl:365; macro expansion
      ╎    ╎     4      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:106; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any)
     2╎    ╎    ╎ 2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:121; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎ 1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:165; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
     1╎    ╎    ╎  1      @Base\util.jl:130; (::Base.var"#printstyled##kw")(::NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, ::typeof(printstyled), ::IOContext{IOBuffer}, ::String, ::Vararg{String})
      ╎    ╎    ╎ 1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:167; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  1      @Base\util.jl:130; (::Base.var"#printstyled##kw")(::NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, ::typeof(printstyled), ::IOContext{IOBuffer}, ::String, ::Vararg{String})
     1╎    ╎    ╎   1      @Base\util.jl:130; printstyled(::IOContext{IOBuffer}, ::String, ::Vararg{Any}; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool, color::Symbol)
      ╎    ╎   36     C:\dev\advent_of_code\2022\day19\part1.jl:81; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    36     @Base\array.jl:583; zeros
      ╎    ╎     36     @Base\array.jl:585; zeros
      ╎    ╎    ╎ 36     @Base\array.jl:589; zeros
      ╎    ╎    ╎  36     @Base\array.jl:354; fill!
    36╎    ╎    ╎   36     @Base\range.jl:883; iterate
     1╎    ╎   1      C:\dev\advent_of_code\2022\day19\part1.jl:82; main(loglevel::Base.CoreLogging.LogLevel)
     9╎    ╎   9      C:\dev\advent_of_code\2022\day19\part1.jl:83; main(loglevel::Base.CoreLogging.LogLevel)
     3╎    ╎   4      C:\dev\advent_of_code\2022\day19\part1.jl:85; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    1      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎     1      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1620; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1357; abstract_apply(interp::Core.Compiler.NativeInterpreter, argtypes::Vector{Any}, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:539; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\inlining.jl:85; ssa_inlining_pass!(ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, propagate_inbounds::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:620; batch_inline!(todo::Vector{Pair{Int64, Any}}, ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, propagate_inbounds::Bool, params::Core.Compiler.OptimizationParams)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\inlining.jl:371; ir_inline_item!(compact::Core.Compiler.IncrementalCompact, idx::Int64, argexprs::Vector{Any}, linetable::Vector{Core.LineInfoNode}, item::Core.Compiler.InliningTodo, boundscheck::Symbol, todo_bbs::Vector{Tuple{Int64, Int64}})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\ir.jl:1251; iterate
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\ir.jl:1308; iterate(compact::Core.Compiler.IncrementalCompact, ::Tuple{Int64, Int64})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:1036; process_node!(compact::Core.Compiler.IncrementalCompact, result_idx::Int64, inst::Core.Compiler.Instruction, idx::Int64, processed_idx::Int64, active_bb::Int64, do_rename_ssa::Bool)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\ir.jl:907; renumber_ssa2!(stmt::Any, ssanums::Vector{Any}, used_ssas::Vector{Int64}, late_fixup::Vector{Int64}, result_idx::Int64, do_rename_ssa::Bool)
     4╎    ╎   4      C:\dev\advent_of_code\2022\day19\part1.jl:86; main(loglevel::Base.CoreLogging.LogLevel)
     2╎    ╎   2      C:\dev\advent_of_code\2022\day19\part1.jl:87; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎   33     C:\dev\advent_of_code\2022\day19\part1.jl:89; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    33     @Base\logging.jl:353; macro expansion
      ╎    ╎     33     C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:106; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any)
    27╎    ╎    ╎ 33     C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:119; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  6      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎    ╎   6      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎    6      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎     6      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 6      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  6      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   6      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    6      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎     6      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎ 6      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎  6      @Base\compiler\abstractinterpretation.jl:1620; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   6      @Base\compiler\abstractinterpretation.jl:1357; abstract_apply(interp::Core.Compiler.NativeInterpreter, argtypes::Vector{Any}, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    6      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎     6      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎ 6      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎  6      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   6      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    6      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     6      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 6      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\optimize.jl:541; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\ir.jl:1459; compact!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\ir.jl:1461; compact!(code::Core.Compiler.IRCode, allow_cfg_transforms::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\ir.jl:1308; iterate(compact::Core.Compiler.IncrementalCompact, ::Tuple{Int64, Int64})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\ir.jl:995; process_node!(compact::Core.Compiler.IncrementalCompact, result_idx::Int64, inst::Core.Compiler.Instruction, idx::Int64, processed_idx::Int64, active_bb::Int64, do_rename_ssa::Bool)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\essentials.jl:492; setindex!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 5      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  5      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   5      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    5      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     5      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::No...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\optimize.jl:536; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:645; slot2reg
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\slot2ssa.jl:662; construct_ssa!(ci::Core.CodeInfo, ir::Core.Compiler.IRCode, domtree::Core.Compiler.DomTree, defuses::Vector{Core.Compiler.SlotInfo}, slottypes::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\slot2ssa.jl:279; iterated_dominance_frontier(cfg::Core.Compiler.CFG, liveness::Core.Compiler.BlockLiveness, domtree::Core.Compiler.DomTree)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\array.jl:679; _array_for
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\array.jl:676; _array_for
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\abstractarray.jl:840; similar
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\abstractarray.jl:841; similar
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\boot.jl:468; Array
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\boot.jl:459; Array
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     4      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 4      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  4      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   4      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    4      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:541; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\ir.jl:1459; compact!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:1461; compact!(code::Core.Compiler.IRCode, allow_cfg_transforms::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\ir.jl:1308; iterate(compact::Core.Compiler.IncrementalCompact, ::Tuple{Int64, Int64})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\ir.jl:1036; process_node!(compact::Core.Compiler.IncrementalCompact, result_idx::Int64, inst::Core.Compiler.Instruction, idx::Int64, processed_idx::Int64, active_bb::Int64, do_rename_ssa::Bool)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\ir.jl:916; renumber_ssa2!(stmt::Any, ssanums::Vector{Any}, used_ssas::Vector{Int64}, late_fixup::Vector{Int64}, result_idx::Int64, do_rename_ssa::Bool)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\ir.jl:410; setindex!(x::Core.Compiler.UseRef, v::Any)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\optimize.jl:542; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\passes.jl:809; sroa_pass!(ir::Core.Compiler.IRCode)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\passes.jl:168; collect_leaves
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\passes.jl:229; walk_to_defs(compact::Core.Compiler.IncrementalCompact, defssa::Any, typeconstraint::Any)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\array.jl:404; getindex
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\boot.jl:459; Array
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\optimize.jl:539; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\ssair\inlining.jl:82; ssa_inlining_pass!(ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInter...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\ssair\inlining.jl:1425; assemble_inline_todo!(ir::Core.Compiler.IRCode, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\ssair\inlining.jl:1210; analyze_single_call!(ir::Core.Compiler.IRCode, idx::Int64, stmt::Expr, infos::Vector{Core.Compiler.MethodMatchInfo}, flag::UInt8, sig::Core.Compiler.Signature, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core...
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:1292; handle_match!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterprete...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:1293; handle_match!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterprete...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\inlining.jl:861; analyze_method!(match::Core.MethodMatch, argtypes::Vector{Any}, flag::UInt8, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpre...
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\inlining.jl:804; resolve_todo(todo::Core.Compiler.InliningTodo, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, flag::UInt8)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\inlining.jl:870; InliningTodo
     4╎    ╎   127    C:\dev\advent_of_code\2022\day19\part1.jl:93; main(loglevel::Base.CoreLogging.LogLevel)
    86╎    ╎    86     @Base\array.jl:215; length
      ╎    ╎    37     @Base\operators.jl:382; >
    37╎    ╎     37     @Base\int.jl:83; <
      ╎    ╎   1392   C:\dev\advent_of_code\2022\day19\part1.jl:94; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    885    @Base\array.jl:1316; pop!
     6╎    ╎     6      @Base\array.jl:0; getindex
   879╎    ╎     879    @Base\array.jl:924; getindex
      ╎    ╎    507    @Base\array.jl:1317; pop!
   507╎    ╎     507    @Base\array.jl:1020; _deleteend!
      ╎    ╎   19     C:\dev\advent_of_code\2022\day19\part1.jl:95; main(loglevel::Base.CoreLogging.LogLevel)
    19╎    ╎    19     @Base\int.jl:87; +
     7╎    ╎   130    C:\dev\advent_of_code\2022\day19\part1.jl:96; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    96     @Base\int.jl:280; mod
      ╎    ╎     86     @Base\div.jl:292; fld
      ╎    ╎    ╎ 38     @Base\div.jl:326; div
      ╎    ╎    ╎  38     @Base\div.jl:281; div
    38╎    ╎    ╎   38     @Base\int.jl:288; div
      ╎    ╎    ╎ 48     @Base\div.jl:327; div
    19╎    ╎    ╎  19     @Base\bool.jl:38; &
    14╎    ╎    ╎  14     @Base\int.jl:88; *
      ╎    ╎    ╎  8      @Base\int.jl:991; -
     8╎    ╎    ╎   8      @Base\int.jl:86; -
      ╎    ╎    ╎  7      @Base\operators.jl:282; !=
     7╎    ╎    ╎   7      @Base\promotion.jl:477; ==
    10╎    ╎     10     @Base\int.jl:88; *
    27╎    ╎    27     @Base\promotion.jl:477; ==
      ╎    ╎   214    C:\dev\advent_of_code\2022\day19\part1.jl:97; main(loglevel::Base.CoreLogging.LogLevel)
   149╎    ╎    149    @Base\logging.jl:0; macro expansion
     1╎    ╎    1      @Base\logging.jl:359; macro expansion
     1╎    ╎    60     @Base\logging.jl:365; macro expansion
      ╎    ╎     59     C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:106; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any)
      ╎    ╎    ╎ 2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:119; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  1      @Base\strings\util.jl:316; chomp(s::String)
      ╎    ╎    ╎   1      @Base\strings\substring.jl:38; SubString
      ╎    ╎    ╎    1      @Base\strings\substring.jl:34; SubString
      ╎    ╎    ╎     1      @Base\strings\string.jl:154; nextind
     1╎    ╎    ╎    ╎ 1      @Base\strings\string.jl:157; _nextind_str(s::String, i::Int64)
      ╎    ╎    ╎  1      @Base\strings\util.jl:592; split
      ╎    ╎    ╎   1      @Base\strings\util.jl:595; #split#438
      ╎    ╎    ╎    1      @Base\array.jl:647; collect
      ╎    ╎    ╎     1      @Base\array.jl:653; _collect(#unused#::Type{SubString{String}}, itr::Base.SplitIterator{SubString{String}, Base.Fix2{typeof(isequal), Char}}, isz::Base.SizeUnknown)
      ╎    ╎    ╎    ╎ 1      @Base\strings\util.jl:532; iterate
      ╎    ╎    ╎    ╎  1      @Base\strings\util.jl:533; iterate
     1╎    ╎    ╎    ╎   1      @Base\strings\search.jl:152; findnext(testf::Base.Fix2{typeof(isequal), Char}, s::SubString{String}, i::Int64)
      ╎    ╎    ╎ 5      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:124; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  1      @Base\stream.jl:569; displaysize(io::Base.TTY)
      ╎    ╎    ╎   1      @Base\stream.jl:561; displaysize
      ╎    ╎    ╎    1      @Base\env.jl:80; get
      ╎    ╎    ╎     1      @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
     1╎    ╎    ╎    ╎ 1      @Base\env.jl:6; _getenvlen
     4╎    ╎    ╎  4      @Base\stream.jl:588; displaysize(io::Base.TTY)
     1╎    ╎    ╎ 4      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:147; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:69; default_metafmt(level::Base.CoreLogging.LogLevel, _module::Any, group::Any, id::Any, file::Any, line::Any)
      ╎    ╎    ╎   1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:61; default_logcolor
      ╎    ╎    ╎    1      @Base\client.jl:23; warn_color
      ╎    ╎    ╎     1      @Base\client.jl:16; repl_color(key::String, default::Symbol)
      ╎    ╎    ╎    ╎ 1      @Base\env.jl:80; get
      ╎    ╎    ╎    ╎  1      @Base\env.jl:12; access_env(onError::Returns{String}, str::String)
     1╎    ╎    ╎    ╎   1      @Base\env.jl:6; _getenvlen
     1╎    ╎    ╎  2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:78; default_metafmt(level::Base.CoreLogging.LogLevel, _module::Any, group::Any, id::Any, file::Any, line::Any)
     1╎    ╎    ╎   1      @Base\strings\io.jl:185; string(::String, ::Int64, ::Vararg{Any})
     1╎    ╎    ╎ 2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:165; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
     1╎    ╎    ╎  1      @Base\util.jl:130; (::Base.var"#printstyled##kw")(::NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, ::typeof(printstyled), ::IOContext{IOBuffer}, ::String, ::Vararg{String})
      ╎    ╎    ╎ 2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:167; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  2      @Base\util.jl:130; (::Base.var"#printstyled##kw")(::NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, ::typeof(printstyled), ::IOContext{IOBuffer}, ::String, ::Vararg{String})
      ╎    ╎    ╎   2      @Base\util.jl:130; printstyled(::IOContext{IOBuffer}, ::String, ::Vararg{Any}; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool, color::Symbol)
     2╎    ╎    ╎    2      @Base\util.jl:71; (::Base.var"#with_output_color##kw")(::NamedTuple{(:bold, :underline, :blink, :reverse, :hidden), NTuple{5, Bool}}, ::typeof(Base.with_output_color), ::Function, ::Symbol, ::IOContext{IOBuffer}, ::String, ::Vararg{String})
      ╎    ╎    ╎ 44     C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:178; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  44     @Base\io.jl:706; write(s::Base.TTY, a::Vector{UInt8})
      ╎    ╎    ╎   44     @Base\io.jl:683; unsafe_write
      ╎    ╎    ╎    44     @Base\stream.jl:1118; unsafe_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎     41     @Base\stream.jl:1035; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
     1╎    ╎    ╎    ╎ 1      @Base\stream.jl:1071; uv_write_async(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎    ╎ 2      @Base\stream.jl:1074; uv_write_async(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
     2╎    ╎    ╎    ╎  2      @Base\libc.jl:355; malloc
    38╎    ╎    ╎    ╎ 38     @Base\stream.jl:1078; uv_write_async(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
     1╎    ╎    ╎     1      @Base\stream.jl:1041; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎     1      @Base\stream.jl:1046; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎    ╎ 1      @Base\task.jl:930; wait()
     1╎    ╎    ╎    ╎  1      @Base\task.jl:921; poptask(W::Base.InvasiveLinkedListSynchronized{Task})
      ╎    ╎    ╎     1      @Base\stream.jl:1050; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
     1╎    ╎    ╎    ╎ 1      @Base\libuv.jl:48; iolock_begin
      ╎    ╎    2      @Base\logging.jl:376; macro expansion
     1╎    ╎     1      @Base\logging.jl:497; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
      ╎    ╎     1      @Base\logging.jl:498; current_logger_for_env(std_level::Base.CoreLogging.LogLevel, group::Symbol, _module::Module)
     1╎    ╎    ╎ 1      @Base\logging.jl:493; current_logstate
      ╎    ╎    2      @Base\logging.jl:381; macro expansion
     1╎    ╎     2      @Base\logging.jl:78; _invoked_shouldlog
      ╎    ╎    ╎ 1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:47; shouldlog(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, _module::Module, group::Symbol, id::Symbol)
      ╎    ╎    ╎  1      @Base\dict.jl:524; get
      ╎    ╎    ╎   1      @Base\dict.jl:281; ht_keyindex(h::Dict{Any, Int64}, key::Symbol)
     1╎    ╎    ╎    1      @Base\array.jl:215; length
      ╎    ╎   39     C:\dev\advent_of_code\2022\day19\part1.jl:98; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    39     @Base\logging.jl:365; macro expansion
      ╎    ╎     39     C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:106; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any)
      ╎    ╎    ╎ 3      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:119; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  3      @Base\strings\io.jl:185; string(xs::Tuple{Int64, Vector{Int64}, Vector{Int64}})
      ╎    ╎    ╎   3      @Base\strings\io.jl:144; print_to_string(xs::Tuple{Int64, Vector{Int64}, Vector{Int64}})
      ╎    ╎    ╎    3      @Base\strings\io.jl:35; print(io::IOBuffer, x::Tuple{Int64, Vector{Int64}, Vector{Int64}})
      ╎    ╎    ╎     3      @Base\show.jl:1262; show
      ╎    ╎    ╎    ╎ 3      @Base\show.jl:1229; show_delim_array
      ╎    ╎    ╎    ╎  2      @Base\show.jl:1244; show_delim_array(io::IOBuffer, itr::Tuple{Int64, Vector{Int64}, Vector{Int64}}, op::Char, delim::Char, cl::Char, delim_one::Bool, i1::Int64, n::Int64)
      ╎    ╎    ╎    ╎   2      @Base\arrayshow.jl:484; show
      ╎    ╎    ╎    ╎    2      @Base\arrayshow.jl:513; show_vector
      ╎    ╎    ╎    ╎     2      @Base\arrayshow.jl:528; show_vector(io::IOContext{IOBuffer}, v::Vector{Int64}, opn::Char, cls::Char)
      ╎    ╎    ╎    ╎    ╎ 2      @Base\show.jl:1201; show_delim_array
      ╎    ╎    ╎    ╎    ╎  2      @Base\show.jl:1202; show_delim_array(io::IOContext{IOBuffer}, itr::Vector{Int64}, op::Char, delim::String, cl::Char, delim_one::Bool, i1::Int64, l::Int64)
     2╎    ╎    ╎    ╎    ╎   2      @Base\show.jl:351; show_circular(io::IOContext{IOBuffer}, x::Any)
      ╎    ╎    ╎    ╎  1      @Base\show.jl:1254; show_delim_array(io::IOBuffer, itr::Tuple{Int64, Vector{Int64}, Vector{Int64}}, op::Char, delim::Char, cl::Char, delim_one::Bool, i1::Int64, n::Int64)
      ╎    ╎    ╎    ╎   1      @Base\char.jl:252; print
      ╎    ╎    ╎    ╎    1      @Base\io.jl:737; write(io::IOBuffer, c::Char)
      ╎    ╎    ╎    ╎     1      @Base\iobuffer.jl:448; write
     1╎    ╎    ╎    ╎    ╎ 1      @Base\array.jl:966; setindex!
      ╎    ╎    ╎ 4      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:124; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
     4╎    ╎    ╎  4      @Base\stream.jl:588; displaysize(io::Base.TTY)
      ╎    ╎    ╎ 3      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:147; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:73; default_metafmt(level::Base.CoreLogging.LogLevel, _module::Any, group::Any, id::Any, file::Any, line::Any)
      ╎    ╎    ╎   2      @Base\strings\io.jl:185; string(xs::Module)
      ╎    ╎    ╎    1      @Base\strings\io.jl:142; print_to_string(xs::Module)
      ╎    ╎    ╎     1      @Base\iobuffer.jl:105; Type##kw
      ╎    ╎    ╎    ╎ 1      @Base\iobuffer.jl:114; #IOBuffer#423
      ╎    ╎    ╎    ╎  1      @Base\iobuffer.jl:83; Type##kw
      ╎    ╎    ╎    ╎   1      @Base\iobuffer.jl:100; #IOBuffer#422
     1╎    ╎    ╎    ╎    1      @Base\Base.jl:39; setproperty!
      ╎    ╎    ╎    1      @Base\strings\io.jl:144; print_to_string(xs::Module)
      ╎    ╎    ╎     1      @Base\strings\io.jl:35; print(io::IOBuffer, x::Module)
      ╎    ╎    ╎    ╎ 1      @Base\show.jl:1103; show(io::IOBuffer, m::Module)
      ╎    ╎    ╎    ╎  1      @Base\loading.jl:1217; is_root_module(m::Module)
      ╎    ╎    ╎    ╎   1      @Base\lock.jl:221; macro expansion
      ╎    ╎    ╎    ╎    1      @Base\lock.jl:103; lock
     1╎    ╎    ╎    ╎     1      @Base\lock.jl:73; trylock
      ╎    ╎    ╎  1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:78; default_metafmt(level::Base.CoreLogging.LogLevel, _module::Any, group::Any, id::Any, file::Any, line::Any)
     1╎    ╎    ╎   1      @Base\strings\io.jl:185; string(::String, ::Int64, ::Vararg{Any})
     1╎    ╎    ╎ 3      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:165; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  2      @Base\util.jl:130; (::Base.var"#printstyled##kw")(::NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, ::typeof(printstyled), ::IOContext{IOBuffer}, ::String, ::Vararg{String})
      ╎    ╎    ╎   2      @Base\util.jl:130; printstyled(io::IOContext{IOBuffer}, msg::String; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool, color::Symbol)
      ╎    ╎    ╎    2      @Base\util.jl:71; with_output_color##kw
      ╎    ╎    ╎     1      @Base\util.jl:78; with_output_color(f::Function, color::Symbol, io::IOContext{IOBuffer}, args::String; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool)
      ╎    ╎    ╎    ╎ 1      @Base\iobuffer.jl:396; take!(io::IOBuffer)
      ╎    ╎    ╎    ╎  1      @Base\iobuffer.jl:31; StringVector
     1╎    ╎    ╎    ╎   1      @Base\strings\string.jl:89; unsafe_wrap
      ╎    ╎    ╎     1      @Base\util.jl:105; with_output_color(f::Function, color::Symbol, io::IOContext{IOBuffer}, args::String; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool)
     1╎    ╎    ╎    ╎ 1      @Base\strings\io.jl:46; print(::IOBuffer, ::String, ::SubString{String}, ::Vararg{Any})
      ╎    ╎    ╎ 2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:167; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  2      @Base\util.jl:130; (::Base.var"#printstyled##kw")(::NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, ::typeof(printstyled), ::IOContext{IOBuffer}, ::String, ::Vararg{String})
     1╎    ╎    ╎   2      @Base\util.jl:130; printstyled(::IOContext{IOBuffer}, ::String, ::Vararg{Any}; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool, color::Symbol)
      ╎    ╎    ╎    1      @Base\util.jl:71; (::Base.var"#with_output_color##kw")(::NamedTuple{(:bold, :underline, :blink, :reverse, :hidden), NTuple{5, Bool}}, ::typeof(Base.with_output_color), ::Function, ::Symbol, ::IOContext{IOBuffer}, ::String, ::Vararg{String})
      ╎    ╎    ╎     1      @Base\util.jl:74; with_output_color(::Function, ::Symbol, ::IOContext{IOBuffer}, ::String, ::Vararg{String}; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool)
      ╎    ╎    ╎    ╎ 1      @Base\iobuffer.jl:105; GenericIOBuffer
      ╎    ╎    ╎    ╎  1      @Base\iobuffer.jl:114; #IOBuffer#423
      ╎    ╎    ╎    ╎   1      @Base\iobuffer.jl:31; StringVector
     1╎    ╎    ╎    ╎    1      @Base\strings\string.jl:78; _string_n
      ╎    ╎    ╎ 1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:173; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  1      @Base\util.jl:130; printstyled##kw
      ╎    ╎    ╎   1      @Base\util.jl:130; #printstyled#917
      ╎    ╎    ╎    1      @Base\util.jl:71; with_output_color##kw
      ╎    ╎    ╎     1      @Base\util.jl:107; with_output_color(f::Function, color::Symbol, io::IOContext{IOBuffer}, args::String; bold::Bool, underline::Bool, blink::Bool, reverse::Bool, hidden::Bool)
      ╎    ╎    ╎    ╎ 1      @Base\strings\io.jl:246; print
      ╎    ╎    ╎    ╎  1      @Base\strings\io.jl:244; write
      ╎    ╎    ╎    ╎   1      @Base\io.jl:419; unsafe_write
      ╎    ╎    ╎    ╎    1      @Base\iobuffer.jl:424; unsafe_write(to::IOBuffer, p::Ptr{UInt8}, nb::UInt64)
      ╎    ╎    ╎    ╎     1      @Base\iobuffer.jl:330; ensureroom
     1╎    ╎    ╎    ╎    ╎ 1      @Base\array.jl:1011; _growend!
      ╎    ╎    ╎ 1      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:175; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  1      @Base\coreio.jl:5; println
      ╎    ╎    ╎   1      @Base\char.jl:252; print
      ╎    ╎    ╎    1      @Base\io.jl:737; write(io::IOContext{IOBuffer}, c::Char)
      ╎    ╎    ╎     1      @Base\io.jl:417; write
      ╎    ╎    ╎    ╎ 1      @Base\iobuffer.jl:443; write
      ╎    ╎    ╎    ╎  1      @Base\iobuffer.jl:328; ensureroom
     1╎    ╎    ╎    ╎   1      @Base\Base.jl:38; getproperty
      ╎    ╎    ╎ 22     C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:178; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  22     @Base\io.jl:706; write(s::Base.TTY, a::Vector{UInt8})
      ╎    ╎    ╎   22     @Base\io.jl:683; unsafe_write
      ╎    ╎    ╎    22     @Base\stream.jl:1118; unsafe_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎     20     @Base\stream.jl:1035; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
    20╎    ╎    ╎    ╎ 20     @Base\stream.jl:1078; uv_write_async(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎     2      @Base\stream.jl:1046; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎    ╎ 1      @Base\task.jl:930; wait()
     1╎    ╎    ╎    ╎  1      @Base\task.jl:921; poptask(W::Base.InvasiveLinkedListSynchronized{Task})
      ╎    ╎    ╎    ╎ 1      @Base\task.jl:932; wait()
     1╎    ╎    ╎    ╎  1      @Base\libuv.jl:104; process_events
      ╎    ╎   2      C:\dev\advent_of_code\2022\day19\part1.jl:101; main(loglevel::Base.CoreLogging.LogLevel)
     2╎    ╎    2      @Base\promotion.jl:477; ==
      ╎    ╎   18     C:\dev\advent_of_code\2022\day19\part1.jl:103; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    16     @Base\logging.jl:360; macro expansion
      ╎    ╎     16     @Base\strings\io.jl:185; string
    16╎    ╎    ╎ 16     @Base\strings\io.jl:144; print_to_string(::String, ::Vararg{Any})
      ╎    ╎    2      @Base\logging.jl:365; macro expansion
      ╎    ╎     2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:106; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any)
      ╎    ╎    ╎ 2      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:178; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  2      @Base\io.jl:706; write(s::Base.TTY, a::Vector{UInt8})
      ╎    ╎    ╎   2      @Base\io.jl:683; unsafe_write
      ╎    ╎    ╎    2      @Base\stream.jl:1118; unsafe_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
      ╎    ╎    ╎     2      @Base\stream.jl:1035; uv_write(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
     2╎    ╎    ╎    ╎ 2      @Base\stream.jl:1078; uv_write_async(s::Base.TTY, p::Ptr{UInt8}, n::UInt64)
     1╎    ╎   1      C:\dev\advent_of_code\2022\day19\part1.jl:104; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎   1      C:\dev\advent_of_code\2022\day19\part1.jl:106; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    1      @Base\logging.jl:360; macro expansion
      ╎    ╎     1      @Base\strings\io.jl:185; string
     1╎    ╎    ╎ 1      @Base\strings\io.jl:144; print_to_string(::String, ::Vararg{Any})
      ╎    ╎   7      C:\dev\advent_of_code\2022\day19\part1.jl:107; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    7      @Base\logging.jl:365; macro expansion
      ╎    ╎     7      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:106; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any)
     5╎    ╎    ╎ 7      C:\workdir\usr\share\julia\stdlib\v1.8\Logging\src\ConsoleLogger.jl:119; handle_message(logger::ConsoleLogger, level::Base.CoreLogging.LogLevel, message::Any, _module::Any, group::Any, id::Any, filepath::Any, line::Any; kwargs::Base.Pairs{Symbol, V, Tuple{Vararg{Symbol, N}}, NamedTuple{names, T}} where {V, N, names, T<:Tuple{Vararg{Any, N}}})
      ╎    ╎    ╎  2      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎    ╎   2      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎ 2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:1620; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\abstractinterpretation.jl:1357; abstract_apply(interp::Core.Compiler.NativeInterpreter, argtypes::Vector{Any}, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎  2      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎   2      @Base\compiler\typeinfer.jl:877; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    2      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎     2      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎ 2      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:230; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:2482; typeinf_nocycle(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:2360; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:148; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:835; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:868; abstract_call_method_with_const_args(interp::Core.Compiler.NativeInterpreter, result::Core.Compiler.MethodCallResult, f::Any, arginfo::Core.Compiler.ArgInfo, match::Core.MethodMatch, sv::Core.Compiler.InferenceState, invokecall::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\optimize.jl:536; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\optimize.jl:645; slot2reg
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\slot2ssa.jl:761; construct_ssa!(ci::Core.CodeInfo, ir::Core.Compiler.IRCode, domtree::Core.Compiler.DomTree, defuses::Vector{Core.Compiler.SlotInfo}, slottypes::Vector{Any})
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\slot2ssa.jl:173; rename_uses!
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\ssair\slot2ssa.jl:162; fixemup!(cond::Core.Compiler.var"#365#367", rename::Core.Compiler.var"#366#368"{Vector{Any}}, ir::Core.Compiler.IRCode, ci::Core.CodeInfo, idx::Int64, stmt::Any)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\ssair\ir.jl:460; iterate(it::Core.Compiler.UseRefIterator, #unused#::Nothing)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:2386; typeinf_local(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:1910; abstract_eval_statement(interp::Core.Compiler.NativeInterpreter, e::Any, vtypes::Vector{Core.Compiler.VarState}, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\abstractinterpretation.jl:1753; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\abstractinterpretation.jl:1786; abstract_call(interp::Core.Compiler.NativeInterpreter, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\abstractinterpretation.jl:1716; abstract_call_known(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎  1      @Base\compiler\abstractinterpretation.jl:139; abstract_call_gf_by_type(interp::Core.Compiler.NativeInterpreter, f::Any, arginfo::Core.Compiler.ArgInfo, atype::Any, sv::Core.Compiler.InferenceState, max_methods::Int64)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎   1      @Base\compiler\abstractinterpretation.jl:647; abstract_call_method(interp::Core.Compiler.NativeInterpreter, method::Method, sig::Any, sparams::Core.SimpleVector, hardlimit::Bool, sv::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    1      @Base\compiler\typeinfer.jl:868; typeinf_edge(interp::Core.Compiler.NativeInterpreter, method::Method, atype::Any, sparams::Core.SimpleVector, caller::Core.Compiler.InferenceState)
      ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎     1      @Base\compiler\inferencestate.jl:284; Core.Compiler.InferenceState(result::Core.Compiler.InferenceResult, cache::Symbol, interp::Core.Compiler.NativeInterpreter)
     1╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎    ╎ 1      @Base\compiler\utilities.jl:134; retrieve_code_info
      ╎    ╎   7323   C:\dev\advent_of_code\2022\day19\part1.jl:141; main(loglevel::Base.CoreLogging.LogLevel)
     8╎    ╎    8      @Base\array.jl:0; getindex
  5202╎    ╎    5202   @Base\array.jl:924; getindex
    16╎    ╎    16     @Base\int.jl:88; *
  1113╎    ╎    1113   @Base\int.jl:86; -
      ╎    ╎    185    @Base\int.jl:97; /
   104╎    ╎     104    @Base\float.jl:386; /
      ╎    ╎     81     @Base\float.jl:269; float
      ╎    ╎    ╎ 81     @Base\float.jl:243; AbstractFloat
    81╎    ╎    ╎  81     @Base\float.jl:146; Float64
      ╎    ╎    799    @Base\operators.jl:591; +
   551╎    ╎     551    @Base\int.jl:87; +
      ╎    ╎     248    @Base\promotion.jl:388; +
   113╎    ╎    ╎ 113    @Base\float.jl:383; +
      ╎    ╎    ╎ 135    @Base\promotion.jl:359; promote
      ╎    ╎    ╎  135    @Base\promotion.jl:336; _promote
      ╎    ╎    ╎   135    @Base\number.jl:7; convert
   135╎    ╎    ╎    135    @Base\float.jl:146; Float64
  9717╎    ╎   9862   C:\dev\advent_of_code\2022\day19\part1.jl:142; main(loglevel::Base.CoreLogging.LogLevel)
    31╎    ╎    31     C:\dev\advent_of_code\2022\day19\part1.jl:51; calcscore(id::Int64, geodes::Float64)
    78╎    ╎    114    C:\dev\advent_of_code\2022\day19\part1.jl:52; calcscore(id::Int64, geodes::Float64)
      ╎    ╎     36     @Base\promotion.jl:389; *
    36╎    ╎    ╎ 36     @Base\float.jl:385; *
  3104╎    ╎   3499   C:\dev\advent_of_code\2022\day19\part1.jl:143; main(loglevel::Base.CoreLogging.LogLevel)
    46╎    ╎    46     @Base\float.jl:465; <=(x::Float64, y::Int64)
    47╎    ╎    349    @Base\float.jl:467; <=(x::Float64, y::Int64)
    41╎    ╎     41     @Base\bool.jl:38; &
    23╎    ╎     23     @Base\bool.jl:39; |
    56╎    ╎     56     @Base\float.jl:412; <
   161╎    ╎     161    @Base\float.jl:410; ==
     1╎    ╎     1      @Base\float.jl:310; unsafe_trunc
    20╎    ╎     20     @Base\int.jl:481; <=
      ╎    ╎   155    C:\dev\advent_of_code\2022\day19\part1.jl:145; main(loglevel::Base.CoreLogging.LogLevel)
   119╎    ╎    119    @Base\array.jl:924; getindex
    36╎    ╎    36     @Base\array.jl:966; setindex!
    44╎    ╎   710    C:\dev\advent_of_code\2022\day19\part1.jl:157; main(loglevel::Base.CoreLogging.LogLevel)
    24╎    ╎    24     @Base\array.jl:0; getindex
   262╎    ╎    262    @Base\array.jl:924; getindex
      ╎    ╎    380    @Base\operators.jl:382; >
      ╎    ╎     66     @Base\float.jl:462; <
    66╎    ╎    ╎ 66     @Base\float.jl:146; Float64
      ╎    ╎     314    @Base\float.jl:463; <
   108╎    ╎    ╎ 108    @Base\float.jl:412; <
    95╎    ╎    ╎ 95     @Base\float.jl:410; ==
    47╎    ╎    ╎ 47     @Base\float.jl:310; unsafe_trunc
    64╎    ╎    ╎ 64     @Base\int.jl:83; <
      ╎    ╎   35     C:\dev\advent_of_code\2022\day19\part1.jl:160; main(loglevel::Base.CoreLogging.LogLevel)
    29╎    ╎    29     @Base\array.jl:924; getindex
     6╎    ╎    6      @Base\array.jl:966; setindex!
107538╎    ╎   209650 C:\dev\advent_of_code\2022\day19\part1.jl:165; main(loglevel::Base.CoreLogging.LogLevel)
 10646╎    ╎    10646  @Base\Base.jl:38; getproperty(x::Robot, f::Symbol)
   167╎    ╎    167    @Base\array.jl:924; getindex(A::Vector{Robot}, i1::Int64)
    50╎    ╎    50     @Base\dict.jl:704; iterate(t::Dict{Resource, Int64})
   216╎    ╎    1215   @Base\dict.jl:705; iterate(t::Dict{Resource, Int64})
     4╎    ╎     4      @Base\Base.jl:38; getproperty
     6╎    ╎     370    @Base\dict.jl:703; _iterate
   329╎    ╎    ╎ 329    @Base\array.jl:924; getindex
    35╎    ╎    ╎ 35     @Base\promotion.jl:477; ==
     2╎    ╎     2      @Base\dict.jl:704; getproperty
      ╎    ╎     7      @Base\dict.jl:687; skip_deleted
     7╎    ╎    ╎ 7      @Base\array.jl:215; length
     3╎    ╎     78     @Base\dict.jl:688; skip_deleted
      ╎    ╎    ╎ 75     @Base\range.jl:5; Colon
      ╎    ╎    ╎  75     @Base\range.jl:393; UnitRange
    74╎    ╎    ╎   75     @Base\range.jl:400; unitrange_last
      ╎    ╎    ╎    1      @Base\operators.jl:429; >=
     1╎    ╎    ╎     1      @Base\int.jl:481; <=
   192╎    ╎     194    @Base\dict.jl:689; skip_deleted
      ╎    ╎    ╎ 2      @Base\dict.jl:172; isslotfilled
     2╎    ╎    ╎  2      @Base\promotion.jl:477; ==
    17╎    ╎     344    @Base\dict.jl:692; skip_deleted
   326╎    ╎    ╎ 327    @Base\range.jl:883; iterate
     1╎    ╎    ╎  1      @Base\promotion.jl:477; ==
 32072╎    ╎    90034  @Base\pair.jl:37; indexed_iterate(p::Pair{Resource, Int64}, i::Int64)
     8╎    ╎     8      @Base\int.jl:87; +
 57937╎    ╎     57954  @Base\pair.jl:37; indexed_iterate
    17╎    ╎    ╎ 17     @Base\int.jl:87; +
 24817╎    ╎   24859  C:\dev\advent_of_code\2022\day19\part1.jl:166; main(loglevel::Base.CoreLogging.LogLevel)
    42╎    ╎    42     @Base\Enums.jl:19; Int64(x::Resource)
  7279╎    ╎   7683   C:\dev\advent_of_code\2022\day19\part1.jl:167; main(loglevel::Base.CoreLogging.LogLevel)
   314╎    ╎    314    @Base\array.jl:924; getindex(A::Vector{Int64}, i1::Int64)
    90╎    ╎    90     @Base\int.jl:83; <(x::Int64, y::Int64)
  5506╎    ╎   6701   C:\dev\advent_of_code\2022\day19\part1.jl:172; main(loglevel::Base.CoreLogging.LogLevel)
   337╎    ╎    1195   @Base\dict.jl:707; iterate(t::Dict{Resource, Int64}, i::Int64)
      ╎    ╎     537    @Base\dict.jl:703; _iterate
   306╎    ╎    ╎ 306    @Base\array.jl:924; getindex
   231╎    ╎    ╎ 231    @Base\promotion.jl:477; ==
      ╎    ╎     1      @Base\dict.jl:687; skip_deleted
     1╎    ╎    ╎ 1      @Base\array.jl:215; length
     8╎    ╎     66     @Base\dict.jl:688; skip_deleted
      ╎    ╎    ╎ 58     @Base\range.jl:5; Colon
      ╎    ╎    ╎  58     @Base\range.jl:393; UnitRange
    45╎    ╎    ╎   58     @Base\range.jl:400; unitrange_last
      ╎    ╎    ╎    13     @Base\operators.jl:429; >=
    13╎    ╎    ╎     13     @Base\int.jl:481; <=
   115╎    ╎     116    @Base\dict.jl:689; skip_deleted
      ╎    ╎    ╎ 1      @Base\dict.jl:172; isslotfilled
     1╎    ╎    ╎  1      @Base\promotion.jl:477; ==
     3╎    ╎     138    @Base\dict.jl:692; skip_deleted
    58╎    ╎    ╎ 135    @Base\range.jl:883; iterate
    77╎    ╎    ╎  77     @Base\promotion.jl:477; ==
 27975╎    ╎   58702  C:\dev\advent_of_code\2022\day19\part1.jl:175; main(loglevel::Base.CoreLogging.LogLevel)
    66╎    ╎    66     @Base\array.jl:0; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
      ╎    ╎    1      @Base\compiler\typeinfer.jl:996; typeinf_ext_toplevel(mi::Core.MethodInstance, world::UInt64)
      ╎    ╎     1      @Base\compiler\typeinfer.jl:1000; typeinf_ext_toplevel(interp::Core.Compiler.NativeInterpreter, linfo::Core.MethodInstance)
      ╎    ╎    ╎ 1      @Base\compiler\typeinfer.jl:967; typeinf_ext(interp::Core.Compiler.NativeInterpreter, mi::Core.MethodInstance)
      ╎    ╎    ╎  1      @Base\compiler\typeinfer.jl:213; typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎   1      @Base\compiler\typeinfer.jl:257; _typeinf(interp::Core.Compiler.NativeInterpreter, frame::Core.Compiler.InferenceState)
      ╎    ╎    ╎    1      @Base\compiler\optimize.jl:504; optimize
      ╎    ╎    ╎     1      @Base\compiler\optimize.jl:539; run_passes(ci::Core.CodeInfo, sv::Core.Compiler.OptimizationState, caller::Core.Compiler.InferenceResult)
      ╎    ╎    ╎    ╎ 1      @Base\compiler\ssair\inlining.jl:85; ssa_inlining_pass!(ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, state::Core.Compiler.InliningState{Core.Compiler.EdgeTracker, Core.Compiler.WorldView{Core.Compiler.InternalCodeCache}, Core.Compiler.NativeInterpreter}, propagate_inbounds::Bool)
      ╎    ╎    ╎    ╎  1      @Base\compiler\ssair\inlining.jl:575; batch_inline!(todo::Vector{Pair{Int64, Any}}, ir::Core.Compiler.IRCode, linetable::Vector{Core.LineInfoNode}, propagate_inbounds::Bool, params::Core.Compiler.OptimizationParams)
      ╎    ╎    ╎    ╎   1      @Base\compiler\ssair\inlining.jl:166; cfg_inline_item!(ir::Core.Compiler.IRCode, idx::Int64, spec::Core.Compiler.ResolvedInliningSpec, state::Core.Compiler.CFGInliningState, from_unionsplit::Bool)
      ╎    ╎    ╎    ╎    1      @Base\array.jl:1108; append!(a::Vector{Core.Compiler.BasicBlock}, items::Vector{Core.Compiler.BasicBlock})
     1╎    ╎    ╎    ╎     1      @Base\array.jl:1011; _growend!
   328╎    ╎    330    @Base\tuple.jl:88; indexed_iterate
     2╎    ╎     2      @Base\tuple.jl:88; indexed_iterate
   372╎    ╎    372    C:\dev\advent_of_code\2022\day19\part1.jl:29; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
      ╎    ╎    10228  C:\dev\advent_of_code\2022\day19\part1.jl:30; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
 10228╎    ╎     10228  @Base\array.jl:369; copy
      ╎    ╎    18315  C:\dev\advent_of_code\2022\day19\part1.jl:31; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
 18315╎    ╎     18315  @Base\array.jl:369; copy
      ╎    ╎    477    C:\dev\advent_of_code\2022\day19\part1.jl:33; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
    44╎    ╎     44     @Base\array.jl:924; getindex
      ╎    ╎     433    @Base\dict.jl:705; iterate
     7╎    ╎    ╎ 7      @Base\Base.jl:38; getproperty
     5╎    ╎    ╎ 126    @Base\dict.jl:703; _iterate
     5╎    ╎    ╎  5      @Base\Base.jl:38; getproperty
   108╎    ╎    ╎  108    @Base\array.jl:924; getindex
     8╎    ╎    ╎  8      @Base\promotion.jl:477; ==
     1╎    ╎    ╎ 1      @Base\dict.jl:0; skip_deleted
      ╎    ╎    ╎ 2      @Base\dict.jl:687; skip_deleted
     2╎    ╎    ╎  2      @Base\array.jl:215; length
     2╎    ╎    ╎ 46     @Base\dict.jl:688; skip_deleted
      ╎    ╎    ╎  39     @Base\range.jl:5; Colon
      ╎    ╎    ╎   39     @Base\range.jl:393; UnitRange
    39╎    ╎    ╎    39     @Base\range.jl:400; unitrange_last
      ╎    ╎    ╎  5      @Base\range.jl:879; iterate
      ╎    ╎    ╎   5      @Base\range.jl:654; isempty
      ╎    ╎    ╎    5      @Base\operators.jl:382; >
     5╎    ╎    ╎     5      @Base\int.jl:83; <
   196╎    ╎    ╎ 196    @Base\dict.jl:689; skip_deleted
    13╎    ╎    ╎ 55     @Base\dict.jl:692; skip_deleted
    40╎    ╎    ╎  42     @Base\range.jl:883; iterate
     2╎    ╎    ╎   2      @Base\promotion.jl:477; ==
      ╎    ╎    49     C:\dev\advent_of_code\2022\day19\part1.jl:35; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
    49╎    ╎     49     @Base\array.jl:924; getindex
      ╎    ╎    801    C:\dev\advent_of_code\2022\day19\part1.jl:36; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
      ╎    ╎     801    @Base\dict.jl:707; iterate
     1╎    ╎    ╎ 15     @Base\dict.jl:703; _iterate
     3╎    ╎    ╎  3      @Base\array.jl:924; getindex
    11╎    ╎    ╎  11     @Base\promotion.jl:477; ==
     6╎    ╎    ╎ 706    @Base\dict.jl:688; skip_deleted
      ╎    ╎    ╎  700    @Base\range.jl:5; Colon
      ╎    ╎    ╎   700    @Base\range.jl:393; UnitRange
     1╎    ╎    ╎    700    @Base\range.jl:400; unitrange_last
      ╎    ╎    ╎     699    @Base\operators.jl:429; >=
   699╎    ╎    ╎    ╎ 699    @Base\int.jl:481; <=
     8╎    ╎    ╎ 8      @Base\dict.jl:689; skip_deleted
      ╎    ╎    ╎ 72     @Base\dict.jl:692; skip_deleted
      ╎    ╎    ╎  72     @Base\range.jl:883; iterate
    72╎    ╎    ╎   72     @Base\promotion.jl:477; ==
      ╎    ╎    28     C:\dev\advent_of_code\2022\day19\part1.jl:39; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
    18╎    ╎     18     @Base\array.jl:924; getindex
    10╎    ╎     10     @Base\array.jl:966; setindex!
    60╎    ╎    60     C:\dev\advent_of_code\2022\day19\part1.jl:40; makebot(bots::Vector{Int64}, resources::Vector{Int64}, makeresid::Int64, botbps::Vector{Robot})
      ╎    ╎   13721  C:\dev\advent_of_code\2022\day19\part1.jl:176; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    12878  C:\dev\advent_of_code\2022\day19\part1.jl:44; collectresources
 12878╎    ╎     12878  @Base\array.jl:369; copy
    21╎    ╎    24     C:\dev\advent_of_code\2022\day19\part1.jl:45; collectresources
     3╎    ╎     3      @Base\array.jl:215; length
      ╎    ╎    115    C:\dev\advent_of_code\2022\day19\part1.jl:46; collectresources
    83╎    ╎     83     @Base\array.jl:924; getindex
    32╎    ╎     32     @Base\array.jl:966; setindex!
   704╎    ╎    704    C:\dev\advent_of_code\2022\day19\part1.jl:47; collectresources
      ╎    ╎   1554   C:\dev\advent_of_code\2022\day19\part1.jl:177; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    1443   @Base\array.jl:1058; push!
  1443╎    ╎     1443   @Base\array.jl:1011; _growend!
      ╎    ╎    111    @Base\array.jl:1059; push!
   111╎    ╎     111    @Base\array.jl:966; setindex!
      ╎    ╎   44     C:\dev\advent_of_code\2022\day19\part1.jl:180; main(loglevel::Base.CoreLogging.LogLevel)
     5╎    ╎    5      @Base\tuple.jl:0; iterate
    33╎    ╎    39     @Base\tuple.jl:68; iterate
     6╎    ╎     6      @Base\int.jl:87; +
      ╎    ╎   10446  C:\dev\advent_of_code\2022\day19\part1.jl:184; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    10009  C:\dev\advent_of_code\2022\day19\part1.jl:44; collectresources
 10009╎    ╎     10009  @Base\array.jl:369; copy
     1╎    ╎    17     C:\dev\advent_of_code\2022\day19\part1.jl:45; collectresources
     6╎    ╎     6      @Base\array.jl:215; length
      ╎    ╎     10     @Base\range.jl:879; iterate
      ╎    ╎    ╎ 10     @Base\range.jl:654; isempty
      ╎    ╎    ╎  10     @Base\operators.jl:382; >
    10╎    ╎    ╎   10     @Base\int.jl:83; <
      ╎    ╎    79     C:\dev\advent_of_code\2022\day19\part1.jl:46; collectresources
    50╎    ╎     50     @Base\array.jl:924; getindex
    29╎    ╎     29     @Base\array.jl:966; setindex!
   341╎    ╎    341    C:\dev\advent_of_code\2022\day19\part1.jl:47; collectresources
     3╎    ╎   3      C:\dev\advent_of_code\2022\day19\part1.jl:185; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎   7192   C:\dev\advent_of_code\2022\day19\part1.jl:186; main(loglevel::Base.CoreLogging.LogLevel)
      ╎    ╎    7139   @Base\array.jl:1390; pushfirst!
  7139╎    ╎     7139   @Base\array.jl:1009; _growbeg!
      ╎    ╎    53     @Base\array.jl:1391; pushfirst!
    53╎    ╎     53     @Base\array.jl:966; setindex!
     2╎    ╎   2      C:\dev\advent_of_code\2022\day19\part1.jl:199; main(loglevel::Base.CoreLogging.LogLevel)
Total snapshots: 368259. Utilization: 100% across all threads and tasks. Use the `groupby` kwarg to break down by thread and/or task
