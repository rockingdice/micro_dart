import 'package:animations/src/open_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:animations/src/open_container.dart@OpenContainer@#as': (m.Scope scope, target)=>()=>target as OpenContainer,
'package:animations/src/open_container.dart@OpenContainer@#is': (m.Scope scope, target)=>()=>target is OpenContainer,
'package:animations/src/open_container.dart@OpenContainer@closedColor': (m.Scope scope, OpenContainer target)=>target.closedColor,
'package:animations/src/open_container.dart@OpenContainer@openColor': (m.Scope scope, OpenContainer target)=>target.openColor,
'package:animations/src/open_container.dart@OpenContainer@middleColor': (m.Scope scope, OpenContainer target)=>target.middleColor,
'package:animations/src/open_container.dart@OpenContainer@closedElevation': (m.Scope scope, OpenContainer target)=>target.closedElevation,
'package:animations/src/open_container.dart@OpenContainer@openElevation': (m.Scope scope, OpenContainer target)=>target.openElevation,
'package:animations/src/open_container.dart@OpenContainer@closedShape': (m.Scope scope, OpenContainer target)=>target.closedShape,
'package:animations/src/open_container.dart@OpenContainer@openShape': (m.Scope scope, OpenContainer target)=>target.openShape,
'package:animations/src/open_container.dart@OpenContainer@onClosed': (m.Scope scope, OpenContainer target)=>target.onClosed,
'package:animations/src/open_container.dart@OpenContainer@closedBuilder': (m.Scope scope, OpenContainer target)=>target.closedBuilder,
'package:animations/src/open_container.dart@OpenContainer@openBuilder': (m.Scope scope, OpenContainer target)=>target.openBuilder,
'package:animations/src/open_container.dart@OpenContainer@tappable': (m.Scope scope, OpenContainer target)=>target.tappable,
'package:animations/src/open_container.dart@OpenContainer@transitionDuration': (m.Scope scope, OpenContainer target)=>target.transitionDuration,
'package:animations/src/open_container.dart@OpenContainer@transitionType': (m.Scope scope, OpenContainer target)=>target.transitionType,
'package:animations/src/open_container.dart@OpenContainer@useRootNavigator': (m.Scope scope, OpenContainer target)=>target.useRootNavigator,
'package:animations/src/open_container.dart@OpenContainer@routeSettings': (m.Scope scope, OpenContainer target)=>target.routeSettings,
'package:animations/src/open_container.dart@OpenContainer@clipBehavior': (m.Scope scope, OpenContainer target)=>target.clipBehavior,
'package:animations/src/open_container.dart@OpenContainer@': (m.Scope scope)=>({ clipBehavior,  closedBuilder,  closedColor,  closedElevation,  closedShape,  key,  middleColor,  onClosed,  openBuilder,  openColor,  openElevation,  openShape,  routeSettings,  tappable,  transitionDuration,  transitionType,  useRootNavigator}){
Widget closedBuilderProxy( context,  action) {
return  engine.callFunctionPointer(scope, closedBuilder!,[context, action], {});
}

void onClosedProxy<T>( data) {
 engine.callFunctionPointer(scope, onClosed!,[data], {});
}

Widget openBuilderProxy<T>( context,  action) {
return  engine.callFunctionPointer(scope, openBuilder!,[context, action], {});
}

return OpenContainer(clipBehavior:clipBehavior ?? Clip.antiAlias, closedBuilder:closedBuilderProxy, closedColor:closedColor ?? Colors.white, closedElevation:closedElevation ?? 1.0, closedShape:closedShape ?? const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))), key:key, middleColor:middleColor, onClosed:onClosed == null ? null :onClosedProxy, openBuilder:openBuilderProxy, openColor:openColor ?? Colors.white, openElevation:openElevation ?? 4.0, openShape:openShape ?? const RoundedRectangleBorder(), routeSettings:routeSettings, tappable:tappable ?? true, transitionDuration:transitionDuration ?? const Duration(milliseconds: 300), transitionType:transitionType ?? ContainerTransitionType.fade, useRootNavigator:useRootNavigator ?? false);
},
'package:animations/src/open_container.dart@OpenContainer@createState': (m.Scope scope, OpenContainer target)=>target.createState,

};
}