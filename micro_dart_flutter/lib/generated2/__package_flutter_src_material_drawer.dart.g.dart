import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/drawer_theme.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/drawer.dart@Drawer@#as': (m.Scope scope, target)=>()=>target as Drawer,
'package:flutter/src/material/drawer.dart@Drawer@#is': (m.Scope scope, target)=>()=>target is Drawer,
'package:flutter/src/material/drawer.dart@Drawer@backgroundColor': (m.Scope scope, Drawer target)=>target.backgroundColor,
'package:flutter/src/material/drawer.dart@Drawer@elevation': (m.Scope scope, Drawer target)=>target.elevation,
'package:flutter/src/material/drawer.dart@Drawer@shadowColor': (m.Scope scope, Drawer target)=>target.shadowColor,
'package:flutter/src/material/drawer.dart@Drawer@surfaceTintColor': (m.Scope scope, Drawer target)=>target.surfaceTintColor,
'package:flutter/src/material/drawer.dart@Drawer@shape': (m.Scope scope, Drawer target)=>target.shape,
'package:flutter/src/material/drawer.dart@Drawer@width': (m.Scope scope, Drawer target)=>target.width,
'package:flutter/src/material/drawer.dart@Drawer@child': (m.Scope scope, Drawer target)=>target.child,
'package:flutter/src/material/drawer.dart@Drawer@semanticLabel': (m.Scope scope, Drawer target)=>target.semanticLabel,
'package:flutter/src/material/drawer.dart@Drawer@clipBehavior': (m.Scope scope, Drawer target)=>target.clipBehavior,
'package:flutter/src/material/drawer.dart@Drawer@': (m.Scope scope)=>({ backgroundColor,  child,  clipBehavior,  elevation,  key,  semanticLabel,  shadowColor,  shape,  surfaceTintColor,  width}){
return Drawer(backgroundColor:backgroundColor, child:child, clipBehavior:clipBehavior, elevation:elevation, key:key, semanticLabel:semanticLabel, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, width:width);
},
'package:flutter/src/material/drawer.dart@Drawer@build': (m.Scope scope, Drawer target)=>target.build,
'package:flutter/src/material/drawer.dart@DrawerController@#as': (m.Scope scope, target)=>()=>target as DrawerController,
'package:flutter/src/material/drawer.dart@DrawerController@#is': (m.Scope scope, target)=>()=>target is DrawerController,
'package:flutter/src/material/drawer.dart@DrawerController@child': (m.Scope scope, DrawerController target)=>target.child,
'package:flutter/src/material/drawer.dart@DrawerController@alignment': (m.Scope scope, DrawerController target)=>target.alignment,
'package:flutter/src/material/drawer.dart@DrawerController@drawerCallback': (m.Scope scope, DrawerController target)=>target.drawerCallback,
'package:flutter/src/material/drawer.dart@DrawerController@dragStartBehavior': (m.Scope scope, DrawerController target)=>target.dragStartBehavior,
'package:flutter/src/material/drawer.dart@DrawerController@scrimColor': (m.Scope scope, DrawerController target)=>target.scrimColor,
'package:flutter/src/material/drawer.dart@DrawerController@enableOpenDragGesture': (m.Scope scope, DrawerController target)=>target.enableOpenDragGesture,
'package:flutter/src/material/drawer.dart@DrawerController@edgeDragWidth': (m.Scope scope, DrawerController target)=>target.edgeDragWidth,
'package:flutter/src/material/drawer.dart@DrawerController@isDrawerOpen': (m.Scope scope, DrawerController target)=>target.isDrawerOpen,
'package:flutter/src/material/drawer.dart@DrawerController@': (m.Scope scope)=>({ alignment,  child,  dragStartBehavior,  drawerCallback,  edgeDragWidth,  enableOpenDragGesture,  isDrawerOpen,  key,  scrimColor}){
void drawerCallbackProxy( isOpened) {
 engine.callFunctionPointer(scope, drawerCallback!,[isOpened], {});
}

return DrawerController(alignment:alignment, child:child, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, drawerCallback:drawerCallback == null ? null :drawerCallbackProxy, edgeDragWidth:edgeDragWidth, enableOpenDragGesture:enableOpenDragGesture ?? true, isDrawerOpen:isDrawerOpen ?? false, key:key, scrimColor:scrimColor);
},
'package:flutter/src/material/drawer.dart@DrawerController@maybeOf': (m.Scope scope)=>DrawerController.maybeOf,
'package:flutter/src/material/drawer.dart@DrawerController@of': (m.Scope scope)=>DrawerController.of,
'package:flutter/src/material/drawer.dart@DrawerController@createState': (m.Scope scope, DrawerController target)=>target.createState,
'package:flutter/src/material/drawer.dart@DrawerControllerState@#as': (m.Scope scope, target)=>()=>target as DrawerControllerState,
'package:flutter/src/material/drawer.dart@DrawerControllerState@#is': (m.Scope scope, target)=>()=>target is DrawerControllerState,
'package:flutter/src/material/drawer.dart@DrawerControllerState@': (m.Scope scope)=>(){
return DrawerControllerState();
},
'package:flutter/src/material/drawer.dart@DrawerControllerState@initState': (m.Scope scope, DrawerControllerState target)=>target.initState,
'package:flutter/src/material/drawer.dart@DrawerControllerState@dispose': (m.Scope scope, DrawerControllerState target)=>target.dispose,
'package:flutter/src/material/drawer.dart@DrawerControllerState@didChangeDependencies': (m.Scope scope, DrawerControllerState target)=>target.didChangeDependencies,
'package:flutter/src/material/drawer.dart@DrawerControllerState@didUpdateWidget': (m.Scope scope, DrawerControllerState target)=>target.didUpdateWidget,
'package:flutter/src/material/drawer.dart@DrawerControllerState@open': (m.Scope scope, DrawerControllerState target)=>target.open,
'package:flutter/src/material/drawer.dart@DrawerControllerState@close': (m.Scope scope, DrawerControllerState target)=>target.close,
'package:flutter/src/material/drawer.dart@DrawerControllerState@build': (m.Scope scope, DrawerControllerState target)=>target.build,

};
}