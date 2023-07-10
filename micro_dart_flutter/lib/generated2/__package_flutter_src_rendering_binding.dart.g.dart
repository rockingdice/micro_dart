import 'package:flutter/src/rendering/binding.dart';
import 'dart:developer';
import 'dart:ui' show SemanticsUpdate;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/mouse_tracker.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/service_extensions.dart';
import 'package:flutter/src/rendering/view.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/binding.dart@RenderingFlutterBinding@#as': (m.Scope scope, target)=>()=>target as RenderingFlutterBinding,
'package:flutter/src/rendering/binding.dart@RenderingFlutterBinding@#is': (m.Scope scope, target)=>()=>target is RenderingFlutterBinding,
'package:flutter/src/rendering/binding.dart@RenderingFlutterBinding@': (m.Scope scope)=>({ root}){
return RenderingFlutterBinding(root:root);
},
'package:flutter/src/rendering/binding.dart@RenderingFlutterBinding@ensureInitialized': (m.Scope scope)=>RenderingFlutterBinding.ensureInitialized,
'package:flutter/src/rendering/binding.dart@@debugDumpRenderTree': (m.Scope scope)=>debugDumpRenderTree,
'package:flutter/src/rendering/binding.dart@@debugDumpLayerTree': (m.Scope scope)=>debugDumpLayerTree,
'package:flutter/src/rendering/binding.dart@@debugDumpSemanticsTree': (m.Scope scope)=>debugDumpSemanticsTree,

};
}