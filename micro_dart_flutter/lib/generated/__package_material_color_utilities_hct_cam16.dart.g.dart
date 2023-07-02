import 'package:material_color_utilities/hct/cam16.dart';
import 'dart:math';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:material_color_utilities/hct/viewing_conditions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/hct/cam16.dart@Cam16@#as': (m.Scope scope, target)=>()=>target as Cam16,
'package:material_color_utilities/hct/cam16.dart@Cam16@#is': (m.Scope scope, target)=>()=>target is Cam16,
'package:material_color_utilities/hct/cam16.dart@Cam16@hue': (m.Scope scope, Cam16 target)=>target.hue,
'package:material_color_utilities/hct/cam16.dart@Cam16@chroma': (m.Scope scope, Cam16 target)=>target.chroma,
'package:material_color_utilities/hct/cam16.dart@Cam16@j': (m.Scope scope, Cam16 target)=>target.j,
'package:material_color_utilities/hct/cam16.dart@Cam16@q': (m.Scope scope, Cam16 target)=>target.q,
'package:material_color_utilities/hct/cam16.dart@Cam16@m': (m.Scope scope, Cam16 target)=>target.m,
'package:material_color_utilities/hct/cam16.dart@Cam16@s': (m.Scope scope, Cam16 target)=>target.s,
'package:material_color_utilities/hct/cam16.dart@Cam16@jstar': (m.Scope scope, Cam16 target)=>target.jstar,
'package:material_color_utilities/hct/cam16.dart@Cam16@astar': (m.Scope scope, Cam16 target)=>target.astar,
'package:material_color_utilities/hct/cam16.dart@Cam16@bstar': (m.Scope scope, Cam16 target)=>target.bstar,
'package:material_color_utilities/hct/cam16.dart@Cam16@': (m.Scope scope)=>( hue,  chroma,  j,  q,  m,  s,  jstar,  astar,  bstar){
return Cam16(hue, chroma, j, q, m, s, jstar, astar, bstar);
},
'package:material_color_utilities/hct/cam16.dart@Cam16@distance': (m.Scope scope, Cam16 target)=>target.distance,
'package:material_color_utilities/hct/cam16.dart@Cam16@fromInt': (m.Scope scope)=>Cam16.fromInt,
'package:material_color_utilities/hct/cam16.dart@Cam16@fromIntInViewingConditions': (m.Scope scope)=>Cam16.fromIntInViewingConditions,
'package:material_color_utilities/hct/cam16.dart@Cam16@fromJch': (m.Scope scope)=>Cam16.fromJch,
'package:material_color_utilities/hct/cam16.dart@Cam16@fromJchInViewingConditions': (m.Scope scope)=>Cam16.fromJchInViewingConditions,
'package:material_color_utilities/hct/cam16.dart@Cam16@fromUcs': (m.Scope scope)=>Cam16.fromUcs,
'package:material_color_utilities/hct/cam16.dart@Cam16@fromUcsInViewingConditions': (m.Scope scope)=>Cam16.fromUcsInViewingConditions,
'package:material_color_utilities/hct/cam16.dart@Cam16@toInt': (m.Scope scope, Cam16 target)=>target.toInt,
'package:material_color_utilities/hct/cam16.dart@Cam16@viewed': (m.Scope scope, Cam16 target)=>target.viewed,

};
}