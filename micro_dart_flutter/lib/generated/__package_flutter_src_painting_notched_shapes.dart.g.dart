import 'package:flutter/src/painting/notched_shapes.dart';
import 'dart:math';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/notched_shapes.dart@NotchedShape@#as': (m.Scope scope, target)=>()=>target as NotchedShape,
'package:flutter/src/painting/notched_shapes.dart@NotchedShape@#is': (m.Scope scope, target)=>()=>target is NotchedShape,
'package:flutter/src/painting/notched_shapes.dart@NotchedShape@getOuterPath': (m.Scope scope, NotchedShape target)=>target.getOuterPath,
'package:flutter/src/painting/notched_shapes.dart@CircularNotchedRectangle@#as': (m.Scope scope, target)=>()=>target as CircularNotchedRectangle,
'package:flutter/src/painting/notched_shapes.dart@CircularNotchedRectangle@#is': (m.Scope scope, target)=>()=>target is CircularNotchedRectangle,
'package:flutter/src/painting/notched_shapes.dart@CircularNotchedRectangle@': (m.Scope scope)=>(){
return CircularNotchedRectangle();
},
'package:flutter/src/painting/notched_shapes.dart@CircularNotchedRectangle@getOuterPath': (m.Scope scope, CircularNotchedRectangle target)=>target.getOuterPath,
'package:flutter/src/painting/notched_shapes.dart@AutomaticNotchedShape@#as': (m.Scope scope, target)=>()=>target as AutomaticNotchedShape,
'package:flutter/src/painting/notched_shapes.dart@AutomaticNotchedShape@#is': (m.Scope scope, target)=>()=>target is AutomaticNotchedShape,
'package:flutter/src/painting/notched_shapes.dart@AutomaticNotchedShape@host': (m.Scope scope, AutomaticNotchedShape target)=>target.host,
'package:flutter/src/painting/notched_shapes.dart@AutomaticNotchedShape@guest': (m.Scope scope, AutomaticNotchedShape target)=>target.guest,
'package:flutter/src/painting/notched_shapes.dart@AutomaticNotchedShape@': (m.Scope scope)=>AutomaticNotchedShape,
'package:flutter/src/painting/notched_shapes.dart@AutomaticNotchedShape@getOuterPath': (m.Scope scope, AutomaticNotchedShape target)=>target.getOuterPath,

};
}