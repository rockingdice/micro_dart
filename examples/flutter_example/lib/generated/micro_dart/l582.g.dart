import 'package:flutter/src/painting/clip.dart';
import 'dart:ui' show Canvas,Clip,Paint,Path,RRect,Rect,VoidCallback;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/clip.dart@ClipContext@#as': (m.Scope scope, target)=>()=>target as ClipContext,
'package:flutter/src/painting/clip.dart@ClipContext@#is': (m.Scope scope, target)=>()=>target is ClipContext,
'package:flutter/src/painting/clip.dart@ClipContext@canvas': (m.Scope scope, ClipContext target)=>target.canvas,
'package:flutter/src/painting/clip.dart@ClipContext@clipPathAndPaint': (m.Scope scope, ClipContext target)=>( path,  clipBehavior,  bounds,  painter){
void painterProxy() {
 engine.callFunctionPointer(scope, painter!,[], {});
}

target.clipPathAndPaint(path, clipBehavior, bounds, painterProxy);
},
'package:flutter/src/painting/clip.dart@ClipContext@clipRRectAndPaint': (m.Scope scope, ClipContext target)=>( rrect,  clipBehavior,  bounds,  painter){
void painterProxy() {
 engine.callFunctionPointer(scope, painter!,[], {});
}

target.clipRRectAndPaint(rrect, clipBehavior, bounds, painterProxy);
},
'package:flutter/src/painting/clip.dart@ClipContext@clipRectAndPaint': (m.Scope scope, ClipContext target)=>( rect,  clipBehavior,  bounds,  painter){
void painterProxy() {
 engine.callFunctionPointer(scope, painter!,[], {});
}

target.clipRectAndPaint(rect, clipBehavior, bounds, painterProxy);
},

};
}