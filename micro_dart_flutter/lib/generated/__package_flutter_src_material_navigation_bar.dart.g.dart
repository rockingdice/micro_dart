import 'package:flutter/src/material/navigation_bar.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/navigation_bar_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/navigation_bar.dart@NavigationBar@#as': (m.Scope scope, target)=>()=>target as NavigationBar,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@#is': (m.Scope scope, target)=>()=>target is NavigationBar,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@animationDuration': (m.Scope scope, NavigationBar target)=>target.animationDuration,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@selectedIndex': (m.Scope scope, NavigationBar target)=>target.selectedIndex,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@destinations': (m.Scope scope, NavigationBar target)=>target.destinations,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@onDestinationSelected': (m.Scope scope, NavigationBar target)=>target.onDestinationSelected,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@backgroundColor': (m.Scope scope, NavigationBar target)=>target.backgroundColor,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@elevation': (m.Scope scope, NavigationBar target)=>target.elevation,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@shadowColor': (m.Scope scope, NavigationBar target)=>target.shadowColor,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@surfaceTintColor': (m.Scope scope, NavigationBar target)=>target.surfaceTintColor,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@indicatorColor': (m.Scope scope, NavigationBar target)=>target.indicatorColor,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@indicatorShape': (m.Scope scope, NavigationBar target)=>target.indicatorShape,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@height': (m.Scope scope, NavigationBar target)=>target.height,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@labelBehavior': (m.Scope scope, NavigationBar target)=>target.labelBehavior,
'package:flutter/src/material/navigation_bar.dart@NavigationBar@': (m.Scope scope)=>({ animationDuration,  backgroundColor,  destinations,  elevation,  height,  indicatorColor,  indicatorShape,  key,  labelBehavior,  onDestinationSelected,  selectedIndex,  shadowColor,  surfaceTintColor}){
void onDestinationSelectedProxy( value) {
 engine.callFunctionPointer(scope, onDestinationSelected!,[value], {});
}

return NavigationBar(animationDuration:animationDuration, backgroundColor:backgroundColor, destinations:destinations, elevation:elevation, height:height, indicatorColor:indicatorColor, indicatorShape:indicatorShape, key:key, labelBehavior:labelBehavior, onDestinationSelected:onDestinationSelected == null ? null :onDestinationSelectedProxy, selectedIndex:selectedIndex ?? 0, shadowColor:shadowColor, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/navigation_bar.dart@NavigationBar@build': (m.Scope scope, NavigationBar target)=>target.build,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@#as': (m.Scope scope, target)=>()=>target as NavigationDestination,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@#is': (m.Scope scope, target)=>()=>target is NavigationDestination,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@icon': (m.Scope scope, NavigationDestination target)=>target.icon,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@selectedIcon': (m.Scope scope, NavigationDestination target)=>target.selectedIcon,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@label': (m.Scope scope, NavigationDestination target)=>target.label,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@tooltip': (m.Scope scope, NavigationDestination target)=>target.tooltip,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@': (m.Scope scope)=>NavigationDestination,
'package:flutter/src/material/navigation_bar.dart@NavigationDestination@build': (m.Scope scope, NavigationDestination target)=>target.build,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@#as': (m.Scope scope, target)=>()=>target as NavigationIndicator,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@#is': (m.Scope scope, target)=>()=>target is NavigationIndicator,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@animation': (m.Scope scope, NavigationIndicator target)=>target.animation,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@color': (m.Scope scope, NavigationIndicator target)=>target.color,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@width': (m.Scope scope, NavigationIndicator target)=>target.width,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@height': (m.Scope scope, NavigationIndicator target)=>target.height,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@borderRadius': (m.Scope scope, NavigationIndicator target)=>target.borderRadius,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@shape': (m.Scope scope, NavigationIndicator target)=>target.shape,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@': (m.Scope scope)=>NavigationIndicator,
'package:flutter/src/material/navigation_bar.dart@NavigationIndicator@build': (m.Scope scope, NavigationIndicator target)=>target.build,

};
}