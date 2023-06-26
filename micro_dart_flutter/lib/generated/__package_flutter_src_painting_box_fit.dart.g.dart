import 'package:flutter/src/painting/box_fit.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/box_fit.dart@FittedSizes@#as': (m.Scope scope, target)=>()=>target as FittedSizes,
'package:flutter/src/painting/box_fit.dart@FittedSizes@#is': (m.Scope scope, target)=>()=>target is FittedSizes,
'package:flutter/src/painting/box_fit.dart@FittedSizes@source': (m.Scope scope, FittedSizes target)=>target.source,
'package:flutter/src/painting/box_fit.dart@FittedSizes@destination': (m.Scope scope, FittedSizes target)=>target.destination,
'package:flutter/src/painting/box_fit.dart@FittedSizes@': (m.Scope scope)=>FittedSizes,
'package:flutter/src/painting/box_fit.dart@@applyBoxFit': (m.Scope scope)=>applyBoxFit,

};
}