import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/hct/cam16.dart';
import 'package:material_color_utilities/hct/hct_solver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/hct/hct.dart@Hct@#as': (m.Scope scope, target)=>()=>target as Hct,
'package:material_color_utilities/hct/hct.dart@Hct@#is': (m.Scope scope, target)=>()=>target is Hct,
'package:material_color_utilities/hct/hct.dart@Hct@hue': (m.Scope scope, Hct target)=>target.hue,
'package:material_color_utilities/hct/hct.dart@Hct@hue:set': (m.Scope scope, Hct target)=>(other)=>target.hue=other,
'package:material_color_utilities/hct/hct.dart@Hct@chroma': (m.Scope scope, Hct target)=>target.chroma,
'package:material_color_utilities/hct/hct.dart@Hct@chroma:set': (m.Scope scope, Hct target)=>(other)=>target.chroma=other,
'package:material_color_utilities/hct/hct.dart@Hct@tone': (m.Scope scope, Hct target)=>target.tone,
'package:material_color_utilities/hct/hct.dart@Hct@tone:set': (m.Scope scope, Hct target)=>(other)=>target.tone=other,
'package:material_color_utilities/hct/hct.dart@Hct@from': (m.Scope scope)=>Hct.from,
'package:material_color_utilities/hct/hct.dart@Hct@==': (m.Scope scope, Hct target)=>(other)=> target == other,
'package:material_color_utilities/hct/hct.dart@Hct@toString': (m.Scope scope, Hct target)=>target.toString,
'package:material_color_utilities/hct/hct.dart@Hct@fromInt': (m.Scope scope)=>Hct.fromInt,
'package:material_color_utilities/hct/hct.dart@Hct@toInt': (m.Scope scope, Hct target)=>target.toInt,

};
}