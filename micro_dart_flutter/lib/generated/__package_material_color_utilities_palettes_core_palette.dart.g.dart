import 'package:material_color_utilities/palettes/core_palette.dart';
import 'dart:math';
import 'package:material_color_utilities/hct/cam16.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@#as': (m.Scope scope, target)=>()=>target as CorePalette,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@#is': (m.Scope scope, target)=>()=>target is CorePalette,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@size': (m.Scope scope)=>CorePalette.size,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@primary': (m.Scope scope, CorePalette target)=>target.primary,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@secondary': (m.Scope scope, CorePalette target)=>target.secondary,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@tertiary': (m.Scope scope, CorePalette target)=>target.tertiary,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@neutral': (m.Scope scope, CorePalette target)=>target.neutral,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@neutralVariant': (m.Scope scope, CorePalette target)=>target.neutralVariant,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@error': (m.Scope scope, CorePalette target)=>target.error,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@hashCode': (m.Scope scope, CorePalette target)=>target.hashCode,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@fromList': (m.Scope scope)=>CorePalette.fromList,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@of': (m.Scope scope)=>CorePalette.of,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@contentOf': (m.Scope scope)=>CorePalette.contentOf,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@asList': (m.Scope scope, CorePalette target)=>target.asList,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@==': (m.Scope scope, CorePalette target)=>(other)=> target == other,
'package:material_color_utilities/palettes/core_palette.dart@CorePalette@toString': (m.Scope scope, CorePalette target)=>target.toString,

};
}