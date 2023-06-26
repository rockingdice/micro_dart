import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'dart:collection' show Queue;
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@#as': (m.Scope scope, target)=>()=>target as BottomNavigationBar,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@#is': (m.Scope scope, target)=>()=>target is BottomNavigationBar,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@items': (m.Scope scope, BottomNavigationBar target)=>target.items,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@onTap': (m.Scope scope, BottomNavigationBar target)=>target.onTap,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@currentIndex': (m.Scope scope, BottomNavigationBar target)=>target.currentIndex,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@elevation': (m.Scope scope, BottomNavigationBar target)=>target.elevation,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@type': (m.Scope scope, BottomNavigationBar target)=>target.type,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@backgroundColor': (m.Scope scope, BottomNavigationBar target)=>target.backgroundColor,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@iconSize': (m.Scope scope, BottomNavigationBar target)=>target.iconSize,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@selectedItemColor': (m.Scope scope, BottomNavigationBar target)=>target.selectedItemColor,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@unselectedItemColor': (m.Scope scope, BottomNavigationBar target)=>target.unselectedItemColor,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@selectedIconTheme': (m.Scope scope, BottomNavigationBar target)=>target.selectedIconTheme,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@unselectedIconTheme': (m.Scope scope, BottomNavigationBar target)=>target.unselectedIconTheme,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@selectedLabelStyle': (m.Scope scope, BottomNavigationBar target)=>target.selectedLabelStyle,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@unselectedLabelStyle': (m.Scope scope, BottomNavigationBar target)=>target.unselectedLabelStyle,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@selectedFontSize': (m.Scope scope, BottomNavigationBar target)=>target.selectedFontSize,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@unselectedFontSize': (m.Scope scope, BottomNavigationBar target)=>target.unselectedFontSize,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@showUnselectedLabels': (m.Scope scope, BottomNavigationBar target)=>target.showUnselectedLabels,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@showSelectedLabels': (m.Scope scope, BottomNavigationBar target)=>target.showSelectedLabels,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@mouseCursor': (m.Scope scope, BottomNavigationBar target)=>target.mouseCursor,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@enableFeedback': (m.Scope scope, BottomNavigationBar target)=>target.enableFeedback,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@landscapeLayout': (m.Scope scope, BottomNavigationBar target)=>target.landscapeLayout,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@useLegacyColorScheme': (m.Scope scope, BottomNavigationBar target)=>target.useLegacyColorScheme,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@fixedColor': (m.Scope scope, BottomNavigationBar target)=>target.fixedColor,
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@': (m.Scope scope)=>({ backgroundColor,  currentIndex,  elevation,  enableFeedback,  fixedColor,  iconSize,  items,  key,  landscapeLayout,  mouseCursor,  onTap,  selectedFontSize,  selectedIconTheme,  selectedItemColor,  selectedLabelStyle,  showSelectedLabels,  showUnselectedLabels,  type,  unselectedFontSize,  unselectedIconTheme,  unselectedItemColor,  unselectedLabelStyle,  useLegacyColorScheme}){
void onTapProxy( value) {
 engine.callFunctionPointer(scope, onTap!,[value], {});
}

return BottomNavigationBar(backgroundColor:backgroundColor, currentIndex:currentIndex ?? 0, elevation:elevation, enableFeedback:enableFeedback, fixedColor:fixedColor, iconSize:iconSize ?? 24.0, items:items, key:key, landscapeLayout:landscapeLayout, mouseCursor:mouseCursor, onTap:onTap == null ? null :onTapProxy, selectedFontSize:selectedFontSize ?? 14.0, selectedIconTheme:selectedIconTheme, selectedItemColor:selectedItemColor, selectedLabelStyle:selectedLabelStyle, showSelectedLabels:showSelectedLabels, showUnselectedLabels:showUnselectedLabels, type:type, unselectedFontSize:unselectedFontSize ?? 12.0, unselectedIconTheme:unselectedIconTheme, unselectedItemColor:unselectedItemColor, unselectedLabelStyle:unselectedLabelStyle, useLegacyColorScheme:useLegacyColorScheme ?? true);
},
'package:flutter/src/material/bottom_navigation_bar.dart@BottomNavigationBar@createState': (m.Scope scope, BottomNavigationBar target)=>target.createState,

};
}