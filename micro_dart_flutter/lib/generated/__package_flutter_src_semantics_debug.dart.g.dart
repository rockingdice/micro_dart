import 'package:flutter/src/semantics/debug.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/semantics/debug.dart@@debugSemanticsDisableAnimations': (m.Scope scope)=>debugSemanticsDisableAnimations,
'package:flutter/src/semantics/debug.dart@@debugSemanticsDisableAnimations:set': (m.Scope scope)=>(other)=>debugSemanticsDisableAnimations=other,

};
}