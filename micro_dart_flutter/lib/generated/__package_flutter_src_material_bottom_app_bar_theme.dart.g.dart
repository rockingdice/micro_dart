import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@#as': (m.Scope scope, target)=>()=>target as BottomAppBarTheme,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@#is': (m.Scope scope, target)=>()=>target is BottomAppBarTheme,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@color': (m.Scope scope, BottomAppBarTheme target)=>target.color,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@elevation': (m.Scope scope, BottomAppBarTheme target)=>target.elevation,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@shape': (m.Scope scope, BottomAppBarTheme target)=>target.shape,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@height': (m.Scope scope, BottomAppBarTheme target)=>target.height,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@surfaceTintColor': (m.Scope scope, BottomAppBarTheme target)=>target.surfaceTintColor,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@shadowColor': (m.Scope scope, BottomAppBarTheme target)=>target.shadowColor,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@padding': (m.Scope scope, BottomAppBarTheme target)=>target.padding,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@hashCode': (m.Scope scope, BottomAppBarTheme target)=>target.hashCode,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@': (m.Scope scope)=>({ color,  elevation,  height,  padding,  shadowColor,  shape,  surfaceTintColor}){
return BottomAppBarTheme(color:color, elevation:elevation, height:height, padding:padding, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@copyWith': (m.Scope scope, BottomAppBarTheme target)=>target.copyWith,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@of': (m.Scope scope)=>BottomAppBarTheme.of,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@lerp': (m.Scope scope)=>BottomAppBarTheme.lerp,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@==': (m.Scope scope, BottomAppBarTheme target)=>(other)=> target == other,
'package:flutter/src/material/bottom_app_bar_theme.dart@BottomAppBarTheme@debugFillProperties': (m.Scope scope, BottomAppBarTheme target)=>target.debugFillProperties,

};
}