import 'package:flutter/src/material/bottom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@#as': (m.Scope scope, target)=>()=>target as BottomAppBar,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@#is': (m.Scope scope, target)=>()=>target is BottomAppBar,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@child': (m.Scope scope, BottomAppBar target)=>target.child,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@padding': (m.Scope scope, BottomAppBar target)=>target.padding,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@color': (m.Scope scope, BottomAppBar target)=>target.color,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@elevation': (m.Scope scope, BottomAppBar target)=>target.elevation,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@shape': (m.Scope scope, BottomAppBar target)=>target.shape,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@clipBehavior': (m.Scope scope, BottomAppBar target)=>target.clipBehavior,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@notchMargin': (m.Scope scope, BottomAppBar target)=>target.notchMargin,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@surfaceTintColor': (m.Scope scope, BottomAppBar target)=>target.surfaceTintColor,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@shadowColor': (m.Scope scope, BottomAppBar target)=>target.shadowColor,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@height': (m.Scope scope, BottomAppBar target)=>target.height,
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@': (m.Scope scope)=>({ child,  clipBehavior,  color,  elevation,  height,  key,  notchMargin,  padding,  shadowColor,  shape,  surfaceTintColor}){
return BottomAppBar(child:child, clipBehavior:clipBehavior ?? Clip.none, color:color, elevation:elevation, height:height, key:key, notchMargin:notchMargin ?? 4.0, padding:padding, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/bottom_app_bar.dart@BottomAppBar@createState': (m.Scope scope, BottomAppBar target)=>target.createState,

};
}