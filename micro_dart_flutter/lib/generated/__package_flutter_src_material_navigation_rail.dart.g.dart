import 'package:flutter/src/material/navigation_rail.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/navigation_bar.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/navigation_rail.dart@NavigationRail@#as': (m.Scope scope, target)=>()=>target as NavigationRail,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@#is': (m.Scope scope, target)=>()=>target is NavigationRail,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@backgroundColor': (m.Scope scope, NavigationRail target)=>target.backgroundColor,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@extended': (m.Scope scope, NavigationRail target)=>target.extended,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@leading': (m.Scope scope, NavigationRail target)=>target.leading,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@trailing': (m.Scope scope, NavigationRail target)=>target.trailing,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@destinations': (m.Scope scope, NavigationRail target)=>target.destinations,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@selectedIndex': (m.Scope scope, NavigationRail target)=>target.selectedIndex,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@onDestinationSelected': (m.Scope scope, NavigationRail target)=>target.onDestinationSelected,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@elevation': (m.Scope scope, NavigationRail target)=>target.elevation,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@groupAlignment': (m.Scope scope, NavigationRail target)=>target.groupAlignment,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@labelType': (m.Scope scope, NavigationRail target)=>target.labelType,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@unselectedLabelTextStyle': (m.Scope scope, NavigationRail target)=>target.unselectedLabelTextStyle,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@selectedLabelTextStyle': (m.Scope scope, NavigationRail target)=>target.selectedLabelTextStyle,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@unselectedIconTheme': (m.Scope scope, NavigationRail target)=>target.unselectedIconTheme,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@selectedIconTheme': (m.Scope scope, NavigationRail target)=>target.selectedIconTheme,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@minWidth': (m.Scope scope, NavigationRail target)=>target.minWidth,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@minExtendedWidth': (m.Scope scope, NavigationRail target)=>target.minExtendedWidth,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@useIndicator': (m.Scope scope, NavigationRail target)=>target.useIndicator,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@indicatorColor': (m.Scope scope, NavigationRail target)=>target.indicatorColor,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@indicatorShape': (m.Scope scope, NavigationRail target)=>target.indicatorShape,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@': (m.Scope scope)=>({ backgroundColor,  destinations,  elevation,  extended,  groupAlignment,  indicatorColor,  indicatorShape,  key,  labelType,  leading,  minExtendedWidth,  minWidth,  onDestinationSelected,  selectedIconTheme,  selectedIndex,  selectedLabelTextStyle,  trailing,  unselectedIconTheme,  unselectedLabelTextStyle,  useIndicator}){
void onDestinationSelectedProxy( value) {
 engine.callFunctionPointer(scope, onDestinationSelected!,[value], {});
}

return NavigationRail(backgroundColor:backgroundColor, destinations:destinations, elevation:elevation, extended:extended ?? false, groupAlignment:groupAlignment, indicatorColor:indicatorColor, indicatorShape:indicatorShape, key:key, labelType:labelType, leading:leading, minExtendedWidth:minExtendedWidth, minWidth:minWidth, onDestinationSelected:onDestinationSelected == null ? null :onDestinationSelectedProxy, selectedIconTheme:selectedIconTheme, selectedIndex:selectedIndex, selectedLabelTextStyle:selectedLabelTextStyle, trailing:trailing, unselectedIconTheme:unselectedIconTheme, unselectedLabelTextStyle:unselectedLabelTextStyle, useIndicator:useIndicator);
},
'package:flutter/src/material/navigation_rail.dart@NavigationRail@extendedAnimation': (m.Scope scope)=>NavigationRail.extendedAnimation,
'package:flutter/src/material/navigation_rail.dart@NavigationRail@createState': (m.Scope scope, NavigationRail target)=>target.createState,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@#as': (m.Scope scope, target)=>()=>target as NavigationRailDestination,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@#is': (m.Scope scope, target)=>()=>target is NavigationRailDestination,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@icon': (m.Scope scope, NavigationRailDestination target)=>target.icon,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@selectedIcon': (m.Scope scope, NavigationRailDestination target)=>target.selectedIcon,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@indicatorColor': (m.Scope scope, NavigationRailDestination target)=>target.indicatorColor,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@indicatorShape': (m.Scope scope, NavigationRailDestination target)=>target.indicatorShape,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@label': (m.Scope scope, NavigationRailDestination target)=>target.label,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@padding': (m.Scope scope, NavigationRailDestination target)=>target.padding,
'package:flutter/src/material/navigation_rail.dart@NavigationRailDestination@': (m.Scope scope)=>NavigationRailDestination,

};
}