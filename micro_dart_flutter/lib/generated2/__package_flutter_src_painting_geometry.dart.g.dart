import 'package:flutter/src/painting/geometry.dart';
import 'dart:math';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/src/painting/basic_types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/geometry.dart@@positionDependentBox': (m.Scope scope)=>positionDependentBox,

};
}