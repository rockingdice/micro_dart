import 'package:flutter/src/material/checkbox_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@#as': (m.Scope scope, target)=>()=>target as CheckboxThemeData,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@#is': (m.Scope scope, target)=>()=>target is CheckboxThemeData,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@mouseCursor': (m.Scope scope, CheckboxThemeData target)=>target.mouseCursor,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@fillColor': (m.Scope scope, CheckboxThemeData target)=>target.fillColor,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@checkColor': (m.Scope scope, CheckboxThemeData target)=>target.checkColor,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@overlayColor': (m.Scope scope, CheckboxThemeData target)=>target.overlayColor,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@splashRadius': (m.Scope scope, CheckboxThemeData target)=>target.splashRadius,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@materialTapTargetSize': (m.Scope scope, CheckboxThemeData target)=>target.materialTapTargetSize,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@visualDensity': (m.Scope scope, CheckboxThemeData target)=>target.visualDensity,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@shape': (m.Scope scope, CheckboxThemeData target)=>target.shape,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@side': (m.Scope scope, CheckboxThemeData target)=>target.side,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@hashCode': (m.Scope scope, CheckboxThemeData target)=>target.hashCode,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@': (m.Scope scope)=>({ checkColor,  fillColor,  materialTapTargetSize,  mouseCursor,  overlayColor,  shape,  side,  splashRadius,  visualDensity}){
return CheckboxThemeData(checkColor:checkColor, fillColor:fillColor, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, overlayColor:overlayColor, shape:shape, side:side, splashRadius:splashRadius, visualDensity:visualDensity);
},
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@copyWith': (m.Scope scope, CheckboxThemeData target)=>target.copyWith,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@lerp': (m.Scope scope)=>CheckboxThemeData.lerp,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@==': (m.Scope scope, CheckboxThemeData target)=>(other)=> target == other,
'package:flutter/src/material/checkbox_theme.dart@CheckboxThemeData@debugFillProperties': (m.Scope scope, CheckboxThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/checkbox_theme.dart@CheckboxTheme@#as': (m.Scope scope, target)=>()=>target as CheckboxTheme,
'package:flutter/src/material/checkbox_theme.dart@CheckboxTheme@#is': (m.Scope scope, target)=>()=>target is CheckboxTheme,
'package:flutter/src/material/checkbox_theme.dart@CheckboxTheme@data': (m.Scope scope, CheckboxTheme target)=>target.data,
'package:flutter/src/material/checkbox_theme.dart@CheckboxTheme@': (m.Scope scope)=>({ child,  data,  key}){
return CheckboxTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/checkbox_theme.dart@CheckboxTheme@of': (m.Scope scope)=>CheckboxTheme.of,
'package:flutter/src/material/checkbox_theme.dart@CheckboxTheme@updateShouldNotify': (m.Scope scope, CheckboxTheme target)=>target.updateShouldNotify,

};
}