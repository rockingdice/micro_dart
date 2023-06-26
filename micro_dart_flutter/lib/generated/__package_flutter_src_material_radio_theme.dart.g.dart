import 'package:flutter/src/material/radio_theme.dart';
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
'package:flutter/src/material/radio_theme.dart@RadioThemeData@#as': (m.Scope scope, target)=>()=>target as RadioThemeData,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@#is': (m.Scope scope, target)=>()=>target is RadioThemeData,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@mouseCursor': (m.Scope scope, RadioThemeData target)=>target.mouseCursor,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@fillColor': (m.Scope scope, RadioThemeData target)=>target.fillColor,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@overlayColor': (m.Scope scope, RadioThemeData target)=>target.overlayColor,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@splashRadius': (m.Scope scope, RadioThemeData target)=>target.splashRadius,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@materialTapTargetSize': (m.Scope scope, RadioThemeData target)=>target.materialTapTargetSize,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@visualDensity': (m.Scope scope, RadioThemeData target)=>target.visualDensity,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@hashCode': (m.Scope scope, RadioThemeData target)=>target.hashCode,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@': (m.Scope scope)=>({ fillColor,  materialTapTargetSize,  mouseCursor,  overlayColor,  splashRadius,  visualDensity}){
return RadioThemeData(fillColor:fillColor, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, overlayColor:overlayColor, splashRadius:splashRadius, visualDensity:visualDensity);
},
'package:flutter/src/material/radio_theme.dart@RadioThemeData@copyWith': (m.Scope scope, RadioThemeData target)=>target.copyWith,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@lerp': (m.Scope scope)=>RadioThemeData.lerp,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@==': (m.Scope scope, RadioThemeData target)=>(other)=> target == other,
'package:flutter/src/material/radio_theme.dart@RadioThemeData@debugFillProperties': (m.Scope scope, RadioThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/radio_theme.dart@RadioTheme@#as': (m.Scope scope, target)=>()=>target as RadioTheme,
'package:flutter/src/material/radio_theme.dart@RadioTheme@#is': (m.Scope scope, target)=>()=>target is RadioTheme,
'package:flutter/src/material/radio_theme.dart@RadioTheme@data': (m.Scope scope, RadioTheme target)=>target.data,
'package:flutter/src/material/radio_theme.dart@RadioTheme@': (m.Scope scope)=>RadioTheme,
'package:flutter/src/material/radio_theme.dart@RadioTheme@of': (m.Scope scope)=>RadioTheme.of,
'package:flutter/src/material/radio_theme.dart@RadioTheme@updateShouldNotify': (m.Scope scope, RadioTheme target)=>target.updateShouldNotify,

};
}