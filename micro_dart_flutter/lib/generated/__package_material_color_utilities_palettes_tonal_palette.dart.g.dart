import 'package:material_color_utilities/palettes/tonal_palette.dart';
import 'dart:math';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@#as': (m.Scope scope, target)=>()=>target as TonalPalette,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@#is': (m.Scope scope, target)=>()=>target is TonalPalette,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@commonTones': (m.Scope scope)=>TonalPalette.commonTones,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@commonSize': (m.Scope scope)=>TonalPalette.commonSize,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@asList': (m.Scope scope, TonalPalette target)=>target.asList,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@hashCode': (m.Scope scope, TonalPalette target)=>target.hashCode,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@of': (m.Scope scope)=>TonalPalette.of,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@fromList': (m.Scope scope)=>TonalPalette.fromList,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@get': (m.Scope scope, TonalPalette target)=>target.get,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@==': (m.Scope scope, TonalPalette target)=>(other)=> target == other,
'package:material_color_utilities/palettes/tonal_palette.dart@TonalPalette@toString': (m.Scope scope, TonalPalette target)=>target.toString,

};
}