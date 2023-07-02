import 'package:flutter/src/material/elevated_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@#as': (m.Scope scope, target)=>()=>target as ElevatedButtonThemeData,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@#is': (m.Scope scope, target)=>()=>target is ElevatedButtonThemeData,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@style': (m.Scope scope, ElevatedButtonThemeData target)=>target.style,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@hashCode': (m.Scope scope, ElevatedButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@': (m.Scope scope)=>({ style}){
return ElevatedButtonThemeData(style:style);
},
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@lerp': (m.Scope scope)=>ElevatedButtonThemeData.lerp,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@==': (m.Scope scope, ElevatedButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonThemeData@debugFillProperties': (m.Scope scope, ElevatedButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@#as': (m.Scope scope, target)=>()=>target as ElevatedButtonTheme,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@#is': (m.Scope scope, target)=>()=>target is ElevatedButtonTheme,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@data': (m.Scope scope, ElevatedButtonTheme target)=>target.data,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@': (m.Scope scope)=>({ child,  data,  key}){
return ElevatedButtonTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@of': (m.Scope scope)=>ElevatedButtonTheme.of,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@wrap': (m.Scope scope, ElevatedButtonTheme target)=>target.wrap,
'package:flutter/src/material/elevated_button_theme.dart@ElevatedButtonTheme@updateShouldNotify': (m.Scope scope, ElevatedButtonTheme target)=>target.updateShouldNotify,

};
}