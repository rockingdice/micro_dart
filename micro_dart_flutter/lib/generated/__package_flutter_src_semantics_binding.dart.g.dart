import 'package:flutter/src/semantics/binding.dart';
import 'dart:ui' show AccessibilityFeatures,SemanticsAction,SemanticsUpdateBuilder;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/semantics/debug.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/semantics/binding.dart@SemanticsActionEvent@#as': (m.Scope scope, target)=>()=>target as SemanticsActionEvent,
'package:flutter/src/semantics/binding.dart@SemanticsActionEvent@#is': (m.Scope scope, target)=>()=>target is SemanticsActionEvent,
'package:flutter/src/semantics/binding.dart@SemanticsActionEvent@type': (m.Scope scope, SemanticsActionEvent target)=>target.type,
'package:flutter/src/semantics/binding.dart@SemanticsActionEvent@nodeId': (m.Scope scope, SemanticsActionEvent target)=>target.nodeId,
'package:flutter/src/semantics/binding.dart@SemanticsActionEvent@arguments': (m.Scope scope, SemanticsActionEvent target)=>target.arguments,
'package:flutter/src/semantics/binding.dart@SemanticsActionEvent@': (m.Scope scope)=>SemanticsActionEvent,
'package:flutter/src/semantics/binding.dart@SemanticsHandle@#as': (m.Scope scope, target)=>()=>target as SemanticsHandle,
'package:flutter/src/semantics/binding.dart@SemanticsHandle@#is': (m.Scope scope, target)=>()=>target is SemanticsHandle,
'package:flutter/src/semantics/binding.dart@SemanticsHandle@dispose': (m.Scope scope, SemanticsHandle target)=>target.dispose,

};
}