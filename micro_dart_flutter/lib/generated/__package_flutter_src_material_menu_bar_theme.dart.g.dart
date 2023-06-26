import 'package:flutter/src/material/menu_bar_theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/menu_anchor.dart';
import 'package:flutter/src/material/menu_style.dart';
import 'package:flutter/src/material/menu_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/menu_bar_theme.dart@MenuBarThemeData@#as': (m.Scope scope, target)=>()=>target as MenuBarThemeData,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarThemeData@#is': (m.Scope scope, target)=>()=>target is MenuBarThemeData,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarThemeData@': (m.Scope scope)=>({ style}){
return MenuBarThemeData(style:style);
},
'package:flutter/src/material/menu_bar_theme.dart@MenuBarThemeData@lerp': (m.Scope scope)=>MenuBarThemeData.lerp,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@#as': (m.Scope scope, target)=>()=>target as MenuBarTheme,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@#is': (m.Scope scope, target)=>()=>target is MenuBarTheme,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@data': (m.Scope scope, MenuBarTheme target)=>target.data,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@': (m.Scope scope)=>MenuBarTheme,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@of': (m.Scope scope)=>MenuBarTheme.of,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@wrap': (m.Scope scope, MenuBarTheme target)=>target.wrap,
'package:flutter/src/material/menu_bar_theme.dart@MenuBarTheme@updateShouldNotify': (m.Scope scope, MenuBarTheme target)=>target.updateShouldNotify,

};
}