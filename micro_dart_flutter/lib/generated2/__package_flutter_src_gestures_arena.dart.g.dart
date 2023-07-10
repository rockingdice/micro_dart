import 'package:flutter/src/gestures/arena.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/debug.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/arena.dart@GestureArenaMember@#as': (m.Scope scope, target)=>()=>target as GestureArenaMember,
'package:flutter/src/gestures/arena.dart@GestureArenaMember@#is': (m.Scope scope, target)=>()=>target is GestureArenaMember,
'package:flutter/src/gestures/arena.dart@GestureArenaMember@acceptGesture': (m.Scope scope, GestureArenaMember target)=>target.acceptGesture,
'package:flutter/src/gestures/arena.dart@GestureArenaMember@rejectGesture': (m.Scope scope, GestureArenaMember target)=>target.rejectGesture,
'package:flutter/src/gestures/arena.dart@GestureArenaEntry@#as': (m.Scope scope, target)=>()=>target as GestureArenaEntry,
'package:flutter/src/gestures/arena.dart@GestureArenaEntry@#is': (m.Scope scope, target)=>()=>target is GestureArenaEntry,
'package:flutter/src/gestures/arena.dart@GestureArenaEntry@resolve': (m.Scope scope, GestureArenaEntry target)=>target.resolve,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@#as': (m.Scope scope, target)=>()=>target as GestureArenaManager,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@#is': (m.Scope scope, target)=>()=>target is GestureArenaManager,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@': (m.Scope scope)=>(){
return GestureArenaManager();
},
'package:flutter/src/gestures/arena.dart@GestureArenaManager@add': (m.Scope scope, GestureArenaManager target)=>target.add,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@close': (m.Scope scope, GestureArenaManager target)=>target.close,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@sweep': (m.Scope scope, GestureArenaManager target)=>target.sweep,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@hold': (m.Scope scope, GestureArenaManager target)=>target.hold,
'package:flutter/src/gestures/arena.dart@GestureArenaManager@release': (m.Scope scope, GestureArenaManager target)=>target.release,

};
}