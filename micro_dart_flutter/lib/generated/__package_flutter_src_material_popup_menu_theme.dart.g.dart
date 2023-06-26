import 'package:flutter/src/material/popup_menu_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@#as': (m.Scope scope, target)=>()=>target as PopupMenuThemeData,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@#is': (m.Scope scope, target)=>()=>target is PopupMenuThemeData,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@color': (m.Scope scope, PopupMenuThemeData target)=>target.color,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@shape': (m.Scope scope, PopupMenuThemeData target)=>target.shape,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@elevation': (m.Scope scope, PopupMenuThemeData target)=>target.elevation,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@shadowColor': (m.Scope scope, PopupMenuThemeData target)=>target.shadowColor,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@surfaceTintColor': (m.Scope scope, PopupMenuThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@textStyle': (m.Scope scope, PopupMenuThemeData target)=>target.textStyle,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@labelTextStyle': (m.Scope scope, PopupMenuThemeData target)=>target.labelTextStyle,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@enableFeedback': (m.Scope scope, PopupMenuThemeData target)=>target.enableFeedback,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@mouseCursor': (m.Scope scope, PopupMenuThemeData target)=>target.mouseCursor,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@position': (m.Scope scope, PopupMenuThemeData target)=>target.position,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@hashCode': (m.Scope scope, PopupMenuThemeData target)=>target.hashCode,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@': (m.Scope scope)=>({ color,  elevation,  enableFeedback,  labelTextStyle,  mouseCursor,  position,  shadowColor,  shape,  surfaceTintColor,  textStyle}){
return PopupMenuThemeData(color:color, elevation:elevation, enableFeedback:enableFeedback, labelTextStyle:labelTextStyle, mouseCursor:mouseCursor, position:position, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, textStyle:textStyle);
},
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@copyWith': (m.Scope scope, PopupMenuThemeData target)=>target.copyWith,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@lerp': (m.Scope scope)=>PopupMenuThemeData.lerp,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@==': (m.Scope scope, PopupMenuThemeData target)=>(other)=> target == other,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuThemeData@debugFillProperties': (m.Scope scope, PopupMenuThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@#as': (m.Scope scope, target)=>()=>target as PopupMenuTheme,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@#is': (m.Scope scope, target)=>()=>target is PopupMenuTheme,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@data': (m.Scope scope, PopupMenuTheme target)=>target.data,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@': (m.Scope scope)=>PopupMenuTheme,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@of': (m.Scope scope)=>PopupMenuTheme.of,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@wrap': (m.Scope scope, PopupMenuTheme target)=>target.wrap,
'package:flutter/src/material/popup_menu_theme.dart@PopupMenuTheme@updateShouldNotify': (m.Scope scope, PopupMenuTheme target)=>target.updateShouldNotify,

};
}