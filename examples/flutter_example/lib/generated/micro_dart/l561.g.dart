import 'package:material_color_utilities/hct/viewing_conditions.dart';
import 'dart:math';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@#as': (m.Scope scope, target)=>()=>target as ViewingConditions,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@#is': (m.Scope scope, target)=>()=>target is ViewingConditions,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@standard': (m.Scope scope)=>ViewingConditions.standard,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@sRgb': (m.Scope scope)=>ViewingConditions.sRgb,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@whitePoint': (m.Scope scope, ViewingConditions target)=>target.whitePoint,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@adaptingLuminance': (m.Scope scope, ViewingConditions target)=>target.adaptingLuminance,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@backgroundLstar': (m.Scope scope, ViewingConditions target)=>target.backgroundLstar,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@surround': (m.Scope scope, ViewingConditions target)=>target.surround,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@discountingIlluminant': (m.Scope scope, ViewingConditions target)=>target.discountingIlluminant,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@backgroundYTowhitePointY': (m.Scope scope, ViewingConditions target)=>target.backgroundYTowhitePointY,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@aw': (m.Scope scope, ViewingConditions target)=>target.aw,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@nbb': (m.Scope scope, ViewingConditions target)=>target.nbb,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@ncb': (m.Scope scope, ViewingConditions target)=>target.ncb,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@c': (m.Scope scope, ViewingConditions target)=>target.c,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@nC': (m.Scope scope, ViewingConditions target)=>target.nC,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@drgbInverse': (m.Scope scope, ViewingConditions target)=>target.drgbInverse,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@rgbD': (m.Scope scope, ViewingConditions target)=>target.rgbD,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@fl': (m.Scope scope, ViewingConditions target)=>target.fl,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@fLRoot': (m.Scope scope, ViewingConditions target)=>target.fLRoot,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@z': (m.Scope scope, ViewingConditions target)=>target.z,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@': (m.Scope scope)=>ViewingConditions,
'package:material_color_utilities/hct/viewing_conditions.dart@ViewingConditions@make': (m.Scope scope)=>ViewingConditions.make,

};
}