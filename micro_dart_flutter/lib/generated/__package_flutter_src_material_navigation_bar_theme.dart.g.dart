import 'package:flutter/src/material/navigation_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/navigation_bar.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@#as': (m.Scope scope, target)=>()=>target as NavigationBarThemeData,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@#is': (m.Scope scope, target)=>()=>target is NavigationBarThemeData,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@height': (m.Scope scope, NavigationBarThemeData target)=>target.height,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@backgroundColor': (m.Scope scope, NavigationBarThemeData target)=>target.backgroundColor,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@elevation': (m.Scope scope, NavigationBarThemeData target)=>target.elevation,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@shadowColor': (m.Scope scope, NavigationBarThemeData target)=>target.shadowColor,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@surfaceTintColor': (m.Scope scope, NavigationBarThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@indicatorColor': (m.Scope scope, NavigationBarThemeData target)=>target.indicatorColor,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@indicatorShape': (m.Scope scope, NavigationBarThemeData target)=>target.indicatorShape,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@labelTextStyle': (m.Scope scope, NavigationBarThemeData target)=>target.labelTextStyle,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@iconTheme': (m.Scope scope, NavigationBarThemeData target)=>target.iconTheme,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@labelBehavior': (m.Scope scope, NavigationBarThemeData target)=>target.labelBehavior,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@hashCode': (m.Scope scope, NavigationBarThemeData target)=>target.hashCode,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@': (m.Scope scope)=>({ backgroundColor,  elevation,  height,  iconTheme,  indicatorColor,  indicatorShape,  labelBehavior,  labelTextStyle,  shadowColor,  surfaceTintColor}){
return NavigationBarThemeData(backgroundColor:backgroundColor, elevation:elevation, height:height, iconTheme:iconTheme, indicatorColor:indicatorColor, indicatorShape:indicatorShape, labelBehavior:labelBehavior, labelTextStyle:labelTextStyle, shadowColor:shadowColor, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@copyWith': (m.Scope scope, NavigationBarThemeData target)=>target.copyWith,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@lerp': (m.Scope scope)=>NavigationBarThemeData.lerp,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@==': (m.Scope scope, NavigationBarThemeData target)=>(other)=> target == other,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarThemeData@debugFillProperties': (m.Scope scope, NavigationBarThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@#as': (m.Scope scope, target)=>()=>target as NavigationBarTheme,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@#is': (m.Scope scope, target)=>()=>target is NavigationBarTheme,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@data': (m.Scope scope, NavigationBarTheme target)=>target.data,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@': (m.Scope scope)=>NavigationBarTheme,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@of': (m.Scope scope)=>NavigationBarTheme.of,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@wrap': (m.Scope scope, NavigationBarTheme target)=>target.wrap,
'package:flutter/src/material/navigation_bar_theme.dart@NavigationBarTheme@updateShouldNotify': (m.Scope scope, NavigationBarTheme target)=>target.updateShouldNotify,

};
}