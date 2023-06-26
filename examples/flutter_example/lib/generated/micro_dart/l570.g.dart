import 'package:material_color_utilities/score/score.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/score/score.dart@ArgbAndScore@#as': (m.Scope scope, target)=>()=>target as ArgbAndScore,
'package:material_color_utilities/score/score.dart@ArgbAndScore@#is': (m.Scope scope, target)=>()=>target is ArgbAndScore,
'package:material_color_utilities/score/score.dart@ArgbAndScore@argb': (m.Scope scope, ArgbAndScore target)=>target.argb,
'package:material_color_utilities/score/score.dart@ArgbAndScore@argb:set': (m.Scope scope, ArgbAndScore target)=>(other)=>target.argb=other,
'package:material_color_utilities/score/score.dart@ArgbAndScore@score': (m.Scope scope, ArgbAndScore target)=>target.score,
'package:material_color_utilities/score/score.dart@ArgbAndScore@score:set': (m.Scope scope, ArgbAndScore target)=>(other)=>target.score=other,
'package:material_color_utilities/score/score.dart@ArgbAndScore@': (m.Scope scope)=>ArgbAndScore,
'package:material_color_utilities/score/score.dart@ArgbAndScore@compareTo': (m.Scope scope, ArgbAndScore target)=>target.compareTo,
'package:material_color_utilities/score/score.dart@Score@#as': (m.Scope scope, target)=>()=>target as Score,
'package:material_color_utilities/score/score.dart@Score@#is': (m.Scope scope, target)=>()=>target is Score,
'package:material_color_utilities/score/score.dart@Score@': (m.Scope scope)=>(){
return Score();
},
'package:material_color_utilities/score/score.dart@Score@score': (m.Scope scope)=>Score.score,
'package:material_color_utilities/score/score.dart@Score@argbToProportion': (m.Scope scope)=>Score.argbToProportion,

};
}