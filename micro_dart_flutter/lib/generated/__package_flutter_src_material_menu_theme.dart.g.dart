import 'package:flutter/src/material/menu_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/menu_anchor.dart';
import 'package:flutter/src/material/menu_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/menu_theme.dart@MenuThemeData@#as': (m.Scope scope, target)=>()=>target as MenuThemeData,
'package:flutter/src/material/menu_theme.dart@MenuThemeData@#is': (m.Scope scope, target)=>()=>target is MenuThemeData,
'package:flutter/src/material/menu_theme.dart@MenuThemeData@style': (m.Scope scope, MenuThemeData target)=>target.style,
'package:flutter/src/material/menu_theme.dart@MenuThemeData@hashCode': (m.Scope scope, MenuThemeData target)=>target.hashCode,
'package:flutter/src/material/menu_theme.dart@MenuThemeData@': (m.Scope scope)=>({ style}){
return MenuThemeData(style:style);
},
'package:flutter/src/material/menu_theme.dart@MenuThemeData@lerp': (m.Scope scope)=>MenuThemeData.lerp,
'package:flutter/src/material/menu_theme.dart@MenuThemeData@==': (m.Scope scope, MenuThemeData target)=>(other)=> target == other,
'package:flutter/src/material/menu_theme.dart@MenuThemeData@debugFillProperties': (m.Scope scope, MenuThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/menu_theme.dart@MenuTheme@#as': (m.Scope scope, target)=>()=>target as MenuTheme,
'package:flutter/src/material/menu_theme.dart@MenuTheme@#is': (m.Scope scope, target)=>()=>target is MenuTheme,
'package:flutter/src/material/menu_theme.dart@MenuTheme@data': (m.Scope scope, MenuTheme target)=>target.data,
'package:flutter/src/material/menu_theme.dart@MenuTheme@': (m.Scope scope)=>MenuTheme,
'package:flutter/src/material/menu_theme.dart@MenuTheme@of': (m.Scope scope)=>MenuTheme.of,
'package:flutter/src/material/menu_theme.dart@MenuTheme@wrap': (m.Scope scope, MenuTheme target)=>target.wrap,
'package:flutter/src/material/menu_theme.dart@MenuTheme@updateShouldNotify': (m.Scope scope, MenuTheme target)=>target.updateShouldNotify,

};
}