import 'package:flutter/src/material/navigation_drawer_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/navigation_drawer.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@#as': (m.Scope scope, target)=>()=>target as NavigationDrawerThemeData,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@#is': (m.Scope scope, target)=>()=>target is NavigationDrawerThemeData,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@tileHeight': (m.Scope scope, NavigationDrawerThemeData target)=>target.tileHeight,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@backgroundColor': (m.Scope scope, NavigationDrawerThemeData target)=>target.backgroundColor,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@elevation': (m.Scope scope, NavigationDrawerThemeData target)=>target.elevation,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@shadowColor': (m.Scope scope, NavigationDrawerThemeData target)=>target.shadowColor,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@surfaceTintColor': (m.Scope scope, NavigationDrawerThemeData target)=>target.surfaceTintColor,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@indicatorColor': (m.Scope scope, NavigationDrawerThemeData target)=>target.indicatorColor,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@indicatorShape': (m.Scope scope, NavigationDrawerThemeData target)=>target.indicatorShape,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@indicatorSize': (m.Scope scope, NavigationDrawerThemeData target)=>target.indicatorSize,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@labelTextStyle': (m.Scope scope, NavigationDrawerThemeData target)=>target.labelTextStyle,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@iconTheme': (m.Scope scope, NavigationDrawerThemeData target)=>target.iconTheme,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@hashCode': (m.Scope scope, NavigationDrawerThemeData target)=>target.hashCode,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@': (m.Scope scope)=>({ backgroundColor,  elevation,  iconTheme,  indicatorColor,  indicatorShape,  indicatorSize,  labelTextStyle,  shadowColor,  surfaceTintColor,  tileHeight}){
return NavigationDrawerThemeData(backgroundColor:backgroundColor, elevation:elevation, iconTheme:iconTheme, indicatorColor:indicatorColor, indicatorShape:indicatorShape, indicatorSize:indicatorSize, labelTextStyle:labelTextStyle, shadowColor:shadowColor, surfaceTintColor:surfaceTintColor, tileHeight:tileHeight);
},
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@copyWith': (m.Scope scope, NavigationDrawerThemeData target)=>target.copyWith,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@lerp': (m.Scope scope)=>NavigationDrawerThemeData.lerp,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@==': (m.Scope scope, NavigationDrawerThemeData target)=>(other)=> target == other,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerThemeData@debugFillProperties': (m.Scope scope, NavigationDrawerThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@#as': (m.Scope scope, target)=>()=>target as NavigationDrawerTheme,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@#is': (m.Scope scope, target)=>()=>target is NavigationDrawerTheme,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@data': (m.Scope scope, NavigationDrawerTheme target)=>target.data,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@': (m.Scope scope)=>({ child,  data,  key}){
return NavigationDrawerTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@of': (m.Scope scope)=>NavigationDrawerTheme.of,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@wrap': (m.Scope scope, NavigationDrawerTheme target)=>target.wrap,
'package:flutter/src/material/navigation_drawer_theme.dart@NavigationDrawerTheme@updateShouldNotify': (m.Scope scope, NavigationDrawerTheme target)=>target.updateShouldNotify,

};
}