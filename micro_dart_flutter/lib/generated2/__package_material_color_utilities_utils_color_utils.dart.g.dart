import 'package:material_color_utilities/utils/color_utils.dart';
import 'dart:math';
import 'package:material_color_utilities/utils/math_utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@#as': (m.Scope scope, target)=>()=>target as ColorUtils,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@#is': (m.Scope scope, target)=>()=>target is ColorUtils,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@': (m.Scope scope)=>(){
return ColorUtils();
},
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@argbFromRgb': (m.Scope scope)=>ColorUtils.argbFromRgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@argbFromLinrgb': (m.Scope scope)=>ColorUtils.argbFromLinrgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@alphaFromArgb': (m.Scope scope)=>ColorUtils.alphaFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@redFromArgb': (m.Scope scope)=>ColorUtils.redFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@greenFromArgb': (m.Scope scope)=>ColorUtils.greenFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@blueFromArgb': (m.Scope scope)=>ColorUtils.blueFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@isOpaque': (m.Scope scope)=>ColorUtils.isOpaque,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@argbFromXyz': (m.Scope scope)=>ColorUtils.argbFromXyz,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@xyzFromArgb': (m.Scope scope)=>ColorUtils.xyzFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@argbFromLab': (m.Scope scope)=>ColorUtils.argbFromLab,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@labFromArgb': (m.Scope scope)=>ColorUtils.labFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@argbFromLstar': (m.Scope scope)=>ColorUtils.argbFromLstar,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@lstarFromArgb': (m.Scope scope)=>ColorUtils.lstarFromArgb,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@yFromLstar': (m.Scope scope)=>ColorUtils.yFromLstar,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@linearized': (m.Scope scope)=>ColorUtils.linearized,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@delinearized': (m.Scope scope)=>ColorUtils.delinearized,
'package:material_color_utilities/utils/color_utils.dart@ColorUtils@whitePointD65': (m.Scope scope)=>ColorUtils.whitePointD65,

};
}