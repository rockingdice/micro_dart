import 'package:material_color_utilities/blend/blend.dart';
import 'dart:math';
import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/hct/cam16.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/blend/blend.dart@Blend@#as': (m.Scope scope, target)=>()=>target as Blend,
'package:material_color_utilities/blend/blend.dart@Blend@#is': (m.Scope scope, target)=>()=>target is Blend,
'package:material_color_utilities/blend/blend.dart@Blend@': (m.Scope scope)=>(){
return Blend();
},
'package:material_color_utilities/blend/blend.dart@Blend@harmonize': (m.Scope scope)=>Blend.harmonize,
'package:material_color_utilities/blend/blend.dart@Blend@hctHue': (m.Scope scope)=>Blend.hctHue,
'package:material_color_utilities/blend/blend.dart@Blend@cam16Ucs': (m.Scope scope)=>Blend.cam16Ucs,

};
}