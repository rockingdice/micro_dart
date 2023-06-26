import 'package:flutter/src/material/outlined_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@#as': (m.Scope scope, target)=>()=>target as OutlinedButtonThemeData,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@#is': (m.Scope scope, target)=>()=>target is OutlinedButtonThemeData,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@style': (m.Scope scope, OutlinedButtonThemeData target)=>target.style,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@hashCode': (m.Scope scope, OutlinedButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@': (m.Scope scope)=>({ style}){
return OutlinedButtonThemeData(style:style);
},
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@lerp': (m.Scope scope)=>OutlinedButtonThemeData.lerp,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@==': (m.Scope scope, OutlinedButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonThemeData@debugFillProperties': (m.Scope scope, OutlinedButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@#as': (m.Scope scope, target)=>()=>target as OutlinedButtonTheme,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@#is': (m.Scope scope, target)=>()=>target is OutlinedButtonTheme,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@data': (m.Scope scope, OutlinedButtonTheme target)=>target.data,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@': (m.Scope scope)=>OutlinedButtonTheme,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@of': (m.Scope scope)=>OutlinedButtonTheme.of,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@wrap': (m.Scope scope, OutlinedButtonTheme target)=>target.wrap,
'package:flutter/src/material/outlined_button_theme.dart@OutlinedButtonTheme@updateShouldNotify': (m.Scope scope, OutlinedButtonTheme target)=>target.updateShouldNotify,

};
}