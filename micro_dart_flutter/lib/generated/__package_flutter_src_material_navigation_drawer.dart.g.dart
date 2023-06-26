import 'package:flutter/src/material/navigation_drawer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/navigation_bar.dart';
import 'package:flutter/src/material/navigation_drawer_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@#as': (m.Scope scope, target)=>()=>target as NavigationDrawer,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@#is': (m.Scope scope, target)=>()=>target is NavigationDrawer,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@backgroundColor': (m.Scope scope, NavigationDrawer target)=>target.backgroundColor,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@shadowColor': (m.Scope scope, NavigationDrawer target)=>target.shadowColor,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@surfaceTintColor': (m.Scope scope, NavigationDrawer target)=>target.surfaceTintColor,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@elevation': (m.Scope scope, NavigationDrawer target)=>target.elevation,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@indicatorColor': (m.Scope scope, NavigationDrawer target)=>target.indicatorColor,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@indicatorShape': (m.Scope scope, NavigationDrawer target)=>target.indicatorShape,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@children': (m.Scope scope, NavigationDrawer target)=>target.children,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@selectedIndex': (m.Scope scope, NavigationDrawer target)=>target.selectedIndex,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@onDestinationSelected': (m.Scope scope, NavigationDrawer target)=>target.onDestinationSelected,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@': (m.Scope scope)=>({ backgroundColor,  children,  elevation,  indicatorColor,  indicatorShape,  key,  onDestinationSelected,  selectedIndex,  shadowColor,  surfaceTintColor}){
void onDestinationSelectedProxy( value) {
 engine.callFunctionPointer(scope, onDestinationSelected!,[value], {});
}

return NavigationDrawer(backgroundColor:backgroundColor, children:children, elevation:elevation, indicatorColor:indicatorColor, indicatorShape:indicatorShape, key:key, onDestinationSelected:onDestinationSelected == null ? null :onDestinationSelectedProxy, selectedIndex:selectedIndex ?? 0, shadowColor:shadowColor, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawer@build': (m.Scope scope, NavigationDrawer target)=>target.build,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@#as': (m.Scope scope, target)=>()=>target as NavigationDrawerDestination,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@#is': (m.Scope scope, target)=>()=>target is NavigationDrawerDestination,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@backgroundColor': (m.Scope scope, NavigationDrawerDestination target)=>target.backgroundColor,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@icon': (m.Scope scope, NavigationDrawerDestination target)=>target.icon,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@selectedIcon': (m.Scope scope, NavigationDrawerDestination target)=>target.selectedIcon,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@label': (m.Scope scope, NavigationDrawerDestination target)=>target.label,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@': (m.Scope scope)=>NavigationDrawerDestination,
'package:flutter/src/material/navigation_drawer.dart@NavigationDrawerDestination@build': (m.Scope scope, NavigationDrawerDestination target)=>target.build,

};
}