import 'package:material_color_utilities/hct/hct_solver.dart';
import 'dart:math';
import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/hct/cam16.dart';
import 'package:material_color_utilities/hct/viewing_conditions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/hct/hct_solver.dart@HctSolver@#as': (m.Scope scope, target)=>()=>target as HctSolver,
'package:material_color_utilities/hct/hct_solver.dart@HctSolver@#is': (m.Scope scope, target)=>()=>target is HctSolver,
'package:material_color_utilities/hct/hct_solver.dart@HctSolver@': (m.Scope scope)=>(){
return HctSolver();
},
'package:material_color_utilities/hct/hct_solver.dart@HctSolver@solveToInt': (m.Scope scope)=>HctSolver.solveToInt,
'package:material_color_utilities/hct/hct_solver.dart@HctSolver@solveToCam': (m.Scope scope)=>HctSolver.solveToCam,

};
}