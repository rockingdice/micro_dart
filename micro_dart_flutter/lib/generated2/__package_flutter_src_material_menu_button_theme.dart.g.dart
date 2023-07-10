import 'package:flutter/src/material/menu_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/menu_anchor.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@#as': (m.Scope scope, target)=>()=>target as MenuButtonThemeData,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@#is': (m.Scope scope, target)=>()=>target is MenuButtonThemeData,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@style': (m.Scope scope, MenuButtonThemeData target)=>target.style,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@hashCode': (m.Scope scope, MenuButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@': (m.Scope scope)=>({ style}){
return MenuButtonThemeData(style:style);
},
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@lerp': (m.Scope scope)=>MenuButtonThemeData.lerp,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@==': (m.Scope scope, MenuButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonThemeData@debugFillProperties': (m.Scope scope, MenuButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@#as': (m.Scope scope, target)=>()=>target as MenuButtonTheme,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@#is': (m.Scope scope, target)=>()=>target is MenuButtonTheme,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@data': (m.Scope scope, MenuButtonTheme target)=>target.data,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@': (m.Scope scope)=>({ child,  data,  key}){
return MenuButtonTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@of': (m.Scope scope)=>MenuButtonTheme.of,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@wrap': (m.Scope scope, MenuButtonTheme target)=>target.wrap,
'package:flutter/src/material/menu_button_theme.dart@MenuButtonTheme@updateShouldNotify': (m.Scope scope, MenuButtonTheme target)=>target.updateShouldNotify,

};
}