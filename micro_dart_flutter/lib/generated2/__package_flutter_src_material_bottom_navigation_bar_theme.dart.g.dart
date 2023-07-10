import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@#as': (m.Scope scope, target)=>()=>target as BottomNavigationBarThemeData,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@#is': (m.Scope scope, target)=>()=>target is BottomNavigationBarThemeData,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@backgroundColor': (m.Scope scope, BottomNavigationBarThemeData target)=>target.backgroundColor,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@elevation': (m.Scope scope, BottomNavigationBarThemeData target)=>target.elevation,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@selectedIconTheme': (m.Scope scope, BottomNavigationBarThemeData target)=>target.selectedIconTheme,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@unselectedIconTheme': (m.Scope scope, BottomNavigationBarThemeData target)=>target.unselectedIconTheme,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@selectedItemColor': (m.Scope scope, BottomNavigationBarThemeData target)=>target.selectedItemColor,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@unselectedItemColor': (m.Scope scope, BottomNavigationBarThemeData target)=>target.unselectedItemColor,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@selectedLabelStyle': (m.Scope scope, BottomNavigationBarThemeData target)=>target.selectedLabelStyle,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@unselectedLabelStyle': (m.Scope scope, BottomNavigationBarThemeData target)=>target.unselectedLabelStyle,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@showSelectedLabels': (m.Scope scope, BottomNavigationBarThemeData target)=>target.showSelectedLabels,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@showUnselectedLabels': (m.Scope scope, BottomNavigationBarThemeData target)=>target.showUnselectedLabels,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@type': (m.Scope scope, BottomNavigationBarThemeData target)=>target.type,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@enableFeedback': (m.Scope scope, BottomNavigationBarThemeData target)=>target.enableFeedback,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@landscapeLayout': (m.Scope scope, BottomNavigationBarThemeData target)=>target.landscapeLayout,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@mouseCursor': (m.Scope scope, BottomNavigationBarThemeData target)=>target.mouseCursor,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@hashCode': (m.Scope scope, BottomNavigationBarThemeData target)=>target.hashCode,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@': (m.Scope scope)=>({ backgroundColor,  elevation,  enableFeedback,  landscapeLayout,  mouseCursor,  selectedIconTheme,  selectedItemColor,  selectedLabelStyle,  showSelectedLabels,  showUnselectedLabels,  type,  unselectedIconTheme,  unselectedItemColor,  unselectedLabelStyle}){
return BottomNavigationBarThemeData(backgroundColor:backgroundColor, elevation:elevation, enableFeedback:enableFeedback, landscapeLayout:landscapeLayout, mouseCursor:mouseCursor, selectedIconTheme:selectedIconTheme, selectedItemColor:selectedItemColor, selectedLabelStyle:selectedLabelStyle, showSelectedLabels:showSelectedLabels, showUnselectedLabels:showUnselectedLabels, type:type, unselectedIconTheme:unselectedIconTheme, unselectedItemColor:unselectedItemColor, unselectedLabelStyle:unselectedLabelStyle);
},
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@copyWith': (m.Scope scope, BottomNavigationBarThemeData target)=>target.copyWith,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@lerp': (m.Scope scope)=>BottomNavigationBarThemeData.lerp,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@==': (m.Scope scope, BottomNavigationBarThemeData target)=>(other)=> target == other,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarThemeData@debugFillProperties': (m.Scope scope, BottomNavigationBarThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarTheme@#as': (m.Scope scope, target)=>()=>target as BottomNavigationBarTheme,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarTheme@#is': (m.Scope scope, target)=>()=>target is BottomNavigationBarTheme,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarTheme@data': (m.Scope scope, BottomNavigationBarTheme target)=>target.data,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarTheme@': (m.Scope scope)=>({ child,  data,  key}){
return BottomNavigationBarTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarTheme@of': (m.Scope scope)=>BottomNavigationBarTheme.of,
'package:flutter/src/material/bottom_navigation_bar_theme.dart@BottomNavigationBarTheme@updateShouldNotify': (m.Scope scope, BottomNavigationBarTheme target)=>target.updateShouldNotify,

};
}