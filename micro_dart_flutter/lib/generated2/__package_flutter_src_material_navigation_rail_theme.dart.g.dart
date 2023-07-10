import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/navigation_rail.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@#as': (m.Scope scope, target)=>()=>target as NavigationRailThemeData,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@#is': (m.Scope scope, target)=>()=>target is NavigationRailThemeData,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@backgroundColor': (m.Scope scope, NavigationRailThemeData target)=>target.backgroundColor,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@elevation': (m.Scope scope, NavigationRailThemeData target)=>target.elevation,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@unselectedLabelTextStyle': (m.Scope scope, NavigationRailThemeData target)=>target.unselectedLabelTextStyle,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@selectedLabelTextStyle': (m.Scope scope, NavigationRailThemeData target)=>target.selectedLabelTextStyle,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@unselectedIconTheme': (m.Scope scope, NavigationRailThemeData target)=>target.unselectedIconTheme,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@selectedIconTheme': (m.Scope scope, NavigationRailThemeData target)=>target.selectedIconTheme,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@groupAlignment': (m.Scope scope, NavigationRailThemeData target)=>target.groupAlignment,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@labelType': (m.Scope scope, NavigationRailThemeData target)=>target.labelType,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@useIndicator': (m.Scope scope, NavigationRailThemeData target)=>target.useIndicator,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@indicatorColor': (m.Scope scope, NavigationRailThemeData target)=>target.indicatorColor,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@indicatorShape': (m.Scope scope, NavigationRailThemeData target)=>target.indicatorShape,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@minWidth': (m.Scope scope, NavigationRailThemeData target)=>target.minWidth,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@minExtendedWidth': (m.Scope scope, NavigationRailThemeData target)=>target.minExtendedWidth,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@hashCode': (m.Scope scope, NavigationRailThemeData target)=>target.hashCode,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@': (m.Scope scope)=>({ backgroundColor,  elevation,  groupAlignment,  indicatorColor,  indicatorShape,  labelType,  minExtendedWidth,  minWidth,  selectedIconTheme,  selectedLabelTextStyle,  unselectedIconTheme,  unselectedLabelTextStyle,  useIndicator}){
return NavigationRailThemeData(backgroundColor:backgroundColor, elevation:elevation, groupAlignment:groupAlignment, indicatorColor:indicatorColor, indicatorShape:indicatorShape, labelType:labelType, minExtendedWidth:minExtendedWidth, minWidth:minWidth, selectedIconTheme:selectedIconTheme, selectedLabelTextStyle:selectedLabelTextStyle, unselectedIconTheme:unselectedIconTheme, unselectedLabelTextStyle:unselectedLabelTextStyle, useIndicator:useIndicator);
},
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@copyWith': (m.Scope scope, NavigationRailThemeData target)=>target.copyWith,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@lerp': (m.Scope scope)=>NavigationRailThemeData.lerp,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@==': (m.Scope scope, NavigationRailThemeData target)=>(other)=> target == other,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailThemeData@debugFillProperties': (m.Scope scope, NavigationRailThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@#as': (m.Scope scope, target)=>()=>target as NavigationRailTheme,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@#is': (m.Scope scope, target)=>()=>target is NavigationRailTheme,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@data': (m.Scope scope, NavigationRailTheme target)=>target.data,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@': (m.Scope scope)=>({ child,  data,  key}){
return NavigationRailTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@of': (m.Scope scope)=>NavigationRailTheme.of,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@wrap': (m.Scope scope, NavigationRailTheme target)=>target.wrap,
'package:flutter/src/material/navigation_rail_theme.dart@NavigationRailTheme@updateShouldNotify': (m.Scope scope, NavigationRailTheme target)=>target.updateShouldNotify,

};
}