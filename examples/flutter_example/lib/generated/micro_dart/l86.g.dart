import 'package:flutter/src/material/dropdown_menu_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/menu_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@#as': (m.Scope scope, target)=>()=>target as DropdownMenuThemeData,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@#is': (m.Scope scope, target)=>()=>target is DropdownMenuThemeData,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@textStyle': (m.Scope scope, DropdownMenuThemeData target)=>target.textStyle,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@inputDecorationTheme': (m.Scope scope, DropdownMenuThemeData target)=>target.inputDecorationTheme,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@menuStyle': (m.Scope scope, DropdownMenuThemeData target)=>target.menuStyle,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@hashCode': (m.Scope scope, DropdownMenuThemeData target)=>target.hashCode,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@': (m.Scope scope)=>({ inputDecorationTheme,  menuStyle,  textStyle}){
return DropdownMenuThemeData(inputDecorationTheme:inputDecorationTheme, menuStyle:menuStyle, textStyle:textStyle);
},
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@copyWith': (m.Scope scope, DropdownMenuThemeData target)=>target.copyWith,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@lerp': (m.Scope scope)=>DropdownMenuThemeData.lerp,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@==': (m.Scope scope, DropdownMenuThemeData target)=>(other)=> target == other,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuThemeData@debugFillProperties': (m.Scope scope, DropdownMenuThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@#as': (m.Scope scope, target)=>()=>target as DropdownMenuTheme,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@#is': (m.Scope scope, target)=>()=>target is DropdownMenuTheme,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@data': (m.Scope scope, DropdownMenuTheme target)=>target.data,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@': (m.Scope scope)=>DropdownMenuTheme,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@of': (m.Scope scope)=>DropdownMenuTheme.of,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@maybeOf': (m.Scope scope)=>DropdownMenuTheme.maybeOf,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@wrap': (m.Scope scope, DropdownMenuTheme target)=>target.wrap,
'package:flutter/src/material/dropdown_menu_theme.dart@DropdownMenuTheme@updateShouldNotify': (m.Scope scope, DropdownMenuTheme target)=>target.updateShouldNotify,

};
}