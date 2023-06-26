import 'package:flutter/src/painting/basic_types.dart';
import 'dart:ui' show TextDirection;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/basic_types.dart@@flipAxis': (m.Scope scope)=>flipAxis,
'package:flutter/src/painting/basic_types.dart@@axisDirectionToAxis': (m.Scope scope)=>axisDirectionToAxis,
'package:flutter/src/painting/basic_types.dart@@textDirectionToAxisDirection': (m.Scope scope)=>textDirectionToAxisDirection,
'package:flutter/src/painting/basic_types.dart@@flipAxisDirection': (m.Scope scope)=>flipAxisDirection,
'package:flutter/src/painting/basic_types.dart@@axisDirectionIsReversed': (m.Scope scope)=>axisDirectionIsReversed,

};
}