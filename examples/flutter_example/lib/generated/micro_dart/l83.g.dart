import 'package:flutter/src/material/drawer_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@#as': (m.Scope scope, target)=>()=>target as DrawerThemeData,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@#is': (m.Scope scope, target)=>()=>target is DrawerThemeData,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@backgroundColor': (m.Scope scope, DrawerThemeData target)=>target.backgroundColor,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@scrimColor': (m.Scope scope, DrawerThemeData target)=>target.scrimColor,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@elevation': (m.Scope scope, DrawerThemeData target)=>target.elevation,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@shadowColor': (m.Scope scope, DrawerThemeData target)=>target.shadowColor,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@surfaceTintColor': (m.Scope scope, DrawerThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@shape': (m.Scope scope, DrawerThemeData target)=>target.shape,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@endShape': (m.Scope scope, DrawerThemeData target)=>target.endShape,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@width': (m.Scope scope, DrawerThemeData target)=>target.width,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@hashCode': (m.Scope scope, DrawerThemeData target)=>target.hashCode,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@': (m.Scope scope)=>({ backgroundColor,  elevation,  endShape,  scrimColor,  shadowColor,  shape,  surfaceTintColor,  width}){
return DrawerThemeData(backgroundColor:backgroundColor, elevation:elevation, endShape:endShape, scrimColor:scrimColor, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, width:width);
},
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@copyWith': (m.Scope scope, DrawerThemeData target)=>target.copyWith,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@lerp': (m.Scope scope)=>DrawerThemeData.lerp,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@==': (m.Scope scope, DrawerThemeData target)=>(other)=> target == other,
'package:flutter/src/material/drawer_theme.dart@DrawerThemeData@debugFillProperties': (m.Scope scope, DrawerThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@#as': (m.Scope scope, target)=>()=>target as DrawerTheme,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@#is': (m.Scope scope, target)=>()=>target is DrawerTheme,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@data': (m.Scope scope, DrawerTheme target)=>target.data,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@': (m.Scope scope)=>DrawerTheme,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@of': (m.Scope scope)=>DrawerTheme.of,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@wrap': (m.Scope scope, DrawerTheme target)=>target.wrap,
'package:flutter/src/material/drawer_theme.dart@DrawerTheme@updateShouldNotify': (m.Scope scope, DrawerTheme target)=>target.updateShouldNotify,

};
}