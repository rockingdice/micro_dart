import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/utils/math_utils.dart@MathUtils@#as': (m.Scope scope, target)=>()=>target as MathUtils,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@#is': (m.Scope scope, target)=>()=>target is MathUtils,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@': (m.Scope scope)=>(){
return MathUtils();
},
'package:material_color_utilities/utils/math_utils.dart@MathUtils@signum': (m.Scope scope)=>MathUtils.signum,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@lerp': (m.Scope scope)=>MathUtils.lerp,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@clampInt': (m.Scope scope)=>MathUtils.clampInt,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@clampDouble': (m.Scope scope)=>MathUtils.clampDouble,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@sanitizeDegreesInt': (m.Scope scope)=>MathUtils.sanitizeDegreesInt,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@sanitizeDegreesDouble': (m.Scope scope)=>MathUtils.sanitizeDegreesDouble,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@rotationDirection': (m.Scope scope)=>MathUtils.rotationDirection,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@differenceDegrees': (m.Scope scope)=>MathUtils.differenceDegrees,
'package:material_color_utilities/utils/math_utils.dart@MathUtils@matrixMultiply': (m.Scope scope)=>MathUtils.matrixMultiply,

};
}