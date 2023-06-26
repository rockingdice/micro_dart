import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart';
import 'dart:ui' show Color;
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@#as': (m.Scope scope, target)=>()=>target as BottomNavigationBarItem,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@#is': (m.Scope scope, target)=>()=>target is BottomNavigationBarItem,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@icon': (m.Scope scope, BottomNavigationBarItem target)=>target.icon,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@activeIcon': (m.Scope scope, BottomNavigationBarItem target)=>target.activeIcon,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@label': (m.Scope scope, BottomNavigationBarItem target)=>target.label,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@backgroundColor': (m.Scope scope, BottomNavigationBarItem target)=>target.backgroundColor,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@tooltip': (m.Scope scope, BottomNavigationBarItem target)=>target.tooltip,
'package:flutter/src/widgets/bottom_navigation_bar_item.dart@BottomNavigationBarItem@': (m.Scope scope)=>BottomNavigationBarItem,

};
}