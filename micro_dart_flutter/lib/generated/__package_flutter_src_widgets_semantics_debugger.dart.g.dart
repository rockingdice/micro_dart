import 'package:flutter/src/widgets/semantics_debugger.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/view.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/semantics_debugger.dart@SemanticsDebugger@#as': (m.Scope scope, target)=>()=>target as SemanticsDebugger,
'package:flutter/src/widgets/semantics_debugger.dart@SemanticsDebugger@#is': (m.Scope scope, target)=>()=>target is SemanticsDebugger,
'package:flutter/src/widgets/semantics_debugger.dart@SemanticsDebugger@child': (m.Scope scope, SemanticsDebugger target)=>target.child,
'package:flutter/src/widgets/semantics_debugger.dart@SemanticsDebugger@labelStyle': (m.Scope scope, SemanticsDebugger target)=>target.labelStyle,
'package:flutter/src/widgets/semantics_debugger.dart@SemanticsDebugger@': (m.Scope scope)=>SemanticsDebugger,
'package:flutter/src/widgets/semantics_debugger.dart@SemanticsDebugger@createState': (m.Scope scope, SemanticsDebugger target)=>target.createState,

};
}