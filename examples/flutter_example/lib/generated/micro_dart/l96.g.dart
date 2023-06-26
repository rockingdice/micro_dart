import 'package:flutter/src/material/filled_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@#as': (m.Scope scope, target)=>()=>target as FilledButtonThemeData,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@#is': (m.Scope scope, target)=>()=>target is FilledButtonThemeData,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@style': (m.Scope scope, FilledButtonThemeData target)=>target.style,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@hashCode': (m.Scope scope, FilledButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@': (m.Scope scope)=>({ style}){
return FilledButtonThemeData(style:style);
},
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@lerp': (m.Scope scope)=>FilledButtonThemeData.lerp,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@==': (m.Scope scope, FilledButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonThemeData@debugFillProperties': (m.Scope scope, FilledButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@#as': (m.Scope scope, target)=>()=>target as FilledButtonTheme,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@#is': (m.Scope scope, target)=>()=>target is FilledButtonTheme,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@data': (m.Scope scope, FilledButtonTheme target)=>target.data,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@': (m.Scope scope)=>FilledButtonTheme,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@of': (m.Scope scope)=>FilledButtonTheme.of,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@wrap': (m.Scope scope, FilledButtonTheme target)=>target.wrap,
'package:flutter/src/material/filled_button_theme.dart@FilledButtonTheme@updateShouldNotify': (m.Scope scope, FilledButtonTheme target)=>target.updateShouldNotify,

};
}