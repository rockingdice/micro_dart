import 'package:flutter/src/gestures/converter.dart';
import 'dart:ui' show PointerChange,PointerData,PointerSignalKind;
import 'package:flutter/src/gestures/events.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/converter.dart@PointerEventConverter@#as': (m.Scope scope, target)=>()=>target as PointerEventConverter,
'package:flutter/src/gestures/converter.dart@PointerEventConverter@#is': (m.Scope scope, target)=>()=>target is PointerEventConverter,
'package:flutter/src/gestures/converter.dart@PointerEventConverter@expand': (m.Scope scope)=>PointerEventConverter.expand,

};
}