import 'package:flutter/src/material/scaffold.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/banner.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/bottom_sheet.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/snack_bar.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@#as': (m.Scope scope, target)=>()=>target as ScaffoldMessenger,
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@#is': (m.Scope scope, target)=>()=>target is ScaffoldMessenger,
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@child': (m.Scope scope, ScaffoldMessenger target)=>target.child,
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@': (m.Scope scope)=>ScaffoldMessenger,
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@of': (m.Scope scope)=>ScaffoldMessenger.of,
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@maybeOf': (m.Scope scope)=>ScaffoldMessenger.maybeOf,
'package:flutter/src/material/scaffold.dart@ScaffoldMessenger@createState': (m.Scope scope, ScaffoldMessenger target)=>target.createState,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@#as': (m.Scope scope, target)=>()=>target as ScaffoldMessengerState,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@#is': (m.Scope scope, target)=>()=>target is ScaffoldMessengerState,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@': (m.Scope scope)=>(){
return ScaffoldMessengerState();
},
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@didChangeDependencies': (m.Scope scope, ScaffoldMessengerState target)=>target.didChangeDependencies,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@showSnackBar': (m.Scope scope, ScaffoldMessengerState target)=>target.showSnackBar,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@removeCurrentSnackBar': (m.Scope scope, ScaffoldMessengerState target)=>target.removeCurrentSnackBar,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@hideCurrentSnackBar': (m.Scope scope, ScaffoldMessengerState target)=>target.hideCurrentSnackBar,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@clearSnackBars': (m.Scope scope, ScaffoldMessengerState target)=>target.clearSnackBars,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@showMaterialBanner': (m.Scope scope, ScaffoldMessengerState target)=>target.showMaterialBanner,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@removeCurrentMaterialBanner': (m.Scope scope, ScaffoldMessengerState target)=>target.removeCurrentMaterialBanner,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@hideCurrentMaterialBanner': (m.Scope scope, ScaffoldMessengerState target)=>target.hideCurrentMaterialBanner,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@clearMaterialBanners': (m.Scope scope, ScaffoldMessengerState target)=>target.clearMaterialBanners,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@build': (m.Scope scope, ScaffoldMessengerState target)=>target.build,
'package:flutter/src/material/scaffold.dart@ScaffoldMessengerState@dispose': (m.Scope scope, ScaffoldMessengerState target)=>target.dispose,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@#as': (m.Scope scope, target)=>()=>target as ScaffoldPrelayoutGeometry,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@#is': (m.Scope scope, target)=>()=>target is ScaffoldPrelayoutGeometry,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@floatingActionButtonSize': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.floatingActionButtonSize,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@bottomSheetSize': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.bottomSheetSize,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@contentBottom': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.contentBottom,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@contentTop': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.contentTop,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@minInsets': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.minInsets,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@minViewPadding': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.minViewPadding,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@scaffoldSize': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.scaffoldSize,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@snackBarSize': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.snackBarSize,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@materialBannerSize': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.materialBannerSize,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@textDirection': (m.Scope scope, ScaffoldPrelayoutGeometry target)=>target.textDirection,
'package:flutter/src/material/scaffold.dart@ScaffoldPrelayoutGeometry@': (m.Scope scope)=>ScaffoldPrelayoutGeometry,
'package:flutter/src/material/scaffold.dart@ScaffoldGeometry@#as': (m.Scope scope, target)=>()=>target as ScaffoldGeometry,
'package:flutter/src/material/scaffold.dart@ScaffoldGeometry@#is': (m.Scope scope, target)=>()=>target is ScaffoldGeometry,
'package:flutter/src/material/scaffold.dart@ScaffoldGeometry@bottomNavigationBarTop': (m.Scope scope, ScaffoldGeometry target)=>target.bottomNavigationBarTop,
'package:flutter/src/material/scaffold.dart@ScaffoldGeometry@floatingActionButtonArea': (m.Scope scope, ScaffoldGeometry target)=>target.floatingActionButtonArea,
'package:flutter/src/material/scaffold.dart@ScaffoldGeometry@': (m.Scope scope)=>({ bottomNavigationBarTop,  floatingActionButtonArea}){
return ScaffoldGeometry(bottomNavigationBarTop:bottomNavigationBarTop, floatingActionButtonArea:floatingActionButtonArea);
},
'package:flutter/src/material/scaffold.dart@ScaffoldGeometry@copyWith': (m.Scope scope, ScaffoldGeometry target)=>target.copyWith,
'package:flutter/src/material/scaffold.dart@Scaffold@#as': (m.Scope scope, target)=>()=>target as Scaffold,
'package:flutter/src/material/scaffold.dart@Scaffold@#is': (m.Scope scope, target)=>()=>target is Scaffold,
'package:flutter/src/material/scaffold.dart@Scaffold@extendBody': (m.Scope scope, Scaffold target)=>target.extendBody,
'package:flutter/src/material/scaffold.dart@Scaffold@extendBodyBehindAppBar': (m.Scope scope, Scaffold target)=>target.extendBodyBehindAppBar,
'package:flutter/src/material/scaffold.dart@Scaffold@appBar': (m.Scope scope, Scaffold target)=>target.appBar,
'package:flutter/src/material/scaffold.dart@Scaffold@body': (m.Scope scope, Scaffold target)=>target.body,
'package:flutter/src/material/scaffold.dart@Scaffold@floatingActionButton': (m.Scope scope, Scaffold target)=>target.floatingActionButton,
'package:flutter/src/material/scaffold.dart@Scaffold@floatingActionButtonLocation': (m.Scope scope, Scaffold target)=>target.floatingActionButtonLocation,
'package:flutter/src/material/scaffold.dart@Scaffold@floatingActionButtonAnimator': (m.Scope scope, Scaffold target)=>target.floatingActionButtonAnimator,
'package:flutter/src/material/scaffold.dart@Scaffold@persistentFooterButtons': (m.Scope scope, Scaffold target)=>target.persistentFooterButtons,
'package:flutter/src/material/scaffold.dart@Scaffold@persistentFooterAlignment': (m.Scope scope, Scaffold target)=>target.persistentFooterAlignment,
'package:flutter/src/material/scaffold.dart@Scaffold@drawer': (m.Scope scope, Scaffold target)=>target.drawer,
'package:flutter/src/material/scaffold.dart@Scaffold@onDrawerChanged': (m.Scope scope, Scaffold target)=>target.onDrawerChanged,
'package:flutter/src/material/scaffold.dart@Scaffold@endDrawer': (m.Scope scope, Scaffold target)=>target.endDrawer,
'package:flutter/src/material/scaffold.dart@Scaffold@onEndDrawerChanged': (m.Scope scope, Scaffold target)=>target.onEndDrawerChanged,
'package:flutter/src/material/scaffold.dart@Scaffold@drawerScrimColor': (m.Scope scope, Scaffold target)=>target.drawerScrimColor,
'package:flutter/src/material/scaffold.dart@Scaffold@backgroundColor': (m.Scope scope, Scaffold target)=>target.backgroundColor,
'package:flutter/src/material/scaffold.dart@Scaffold@bottomNavigationBar': (m.Scope scope, Scaffold target)=>target.bottomNavigationBar,
'package:flutter/src/material/scaffold.dart@Scaffold@bottomSheet': (m.Scope scope, Scaffold target)=>target.bottomSheet,
'package:flutter/src/material/scaffold.dart@Scaffold@resizeToAvoidBottomInset': (m.Scope scope, Scaffold target)=>target.resizeToAvoidBottomInset,
'package:flutter/src/material/scaffold.dart@Scaffold@primary': (m.Scope scope, Scaffold target)=>target.primary,
'package:flutter/src/material/scaffold.dart@Scaffold@drawerDragStartBehavior': (m.Scope scope, Scaffold target)=>target.drawerDragStartBehavior,
'package:flutter/src/material/scaffold.dart@Scaffold@drawerEdgeDragWidth': (m.Scope scope, Scaffold target)=>target.drawerEdgeDragWidth,
'package:flutter/src/material/scaffold.dart@Scaffold@drawerEnableOpenDragGesture': (m.Scope scope, Scaffold target)=>target.drawerEnableOpenDragGesture,
'package:flutter/src/material/scaffold.dart@Scaffold@endDrawerEnableOpenDragGesture': (m.Scope scope, Scaffold target)=>target.endDrawerEnableOpenDragGesture,
'package:flutter/src/material/scaffold.dart@Scaffold@restorationId': (m.Scope scope, Scaffold target)=>target.restorationId,
'package:flutter/src/material/scaffold.dart@Scaffold@': (m.Scope scope)=>({ appBar,  backgroundColor,  body,  bottomNavigationBar,  bottomSheet,  drawer,  drawerDragStartBehavior,  drawerEdgeDragWidth,  drawerEnableOpenDragGesture,  drawerScrimColor,  endDrawer,  endDrawerEnableOpenDragGesture,  extendBody,  extendBodyBehindAppBar,  floatingActionButton,  floatingActionButtonAnimator,  floatingActionButtonLocation,  key,  onDrawerChanged,  onEndDrawerChanged,  persistentFooterAlignment,  persistentFooterButtons,  primary,  resizeToAvoidBottomInset,  restorationId}){
void onDrawerChangedProxy( isOpened) {
 engine.callFunctionPointer(scope, onDrawerChanged!,[isOpened], {});
}

void onEndDrawerChangedProxy( isOpened) {
 engine.callFunctionPointer(scope, onEndDrawerChanged!,[isOpened], {});
}

return Scaffold(appBar:appBar, backgroundColor:backgroundColor, body:body, bottomNavigationBar:bottomNavigationBar, bottomSheet:bottomSheet, drawer:drawer, drawerDragStartBehavior:drawerDragStartBehavior ?? DragStartBehavior.start, drawerEdgeDragWidth:drawerEdgeDragWidth, drawerEnableOpenDragGesture:drawerEnableOpenDragGesture ?? true, drawerScrimColor:drawerScrimColor, endDrawer:endDrawer, endDrawerEnableOpenDragGesture:endDrawerEnableOpenDragGesture ?? true, extendBody:extendBody ?? false, extendBodyBehindAppBar:extendBodyBehindAppBar ?? false, floatingActionButton:floatingActionButton, floatingActionButtonAnimator:floatingActionButtonAnimator, floatingActionButtonLocation:floatingActionButtonLocation, key:key, onDrawerChanged:onDrawerChanged == null ? null :onDrawerChangedProxy, onEndDrawerChanged:onEndDrawerChanged == null ? null :onEndDrawerChangedProxy, persistentFooterAlignment:persistentFooterAlignment ?? AlignmentDirectional.centerEnd, persistentFooterButtons:persistentFooterButtons, primary:primary ?? true, resizeToAvoidBottomInset:resizeToAvoidBottomInset, restorationId:restorationId);
},
'package:flutter/src/material/scaffold.dart@Scaffold@of': (m.Scope scope)=>Scaffold.of,
'package:flutter/src/material/scaffold.dart@Scaffold@maybeOf': (m.Scope scope)=>Scaffold.maybeOf,
'package:flutter/src/material/scaffold.dart@Scaffold@geometryOf': (m.Scope scope)=>Scaffold.geometryOf,
'package:flutter/src/material/scaffold.dart@Scaffold@hasDrawer': (m.Scope scope)=>Scaffold.hasDrawer,
'package:flutter/src/material/scaffold.dart@Scaffold@createState': (m.Scope scope, Scaffold target)=>target.createState,
'package:flutter/src/material/scaffold.dart@ScaffoldState@#as': (m.Scope scope, target)=>()=>target as ScaffoldState,
'package:flutter/src/material/scaffold.dart@ScaffoldState@#is': (m.Scope scope, target)=>()=>target is ScaffoldState,
'package:flutter/src/material/scaffold.dart@ScaffoldState@restorationId': (m.Scope scope, ScaffoldState target)=>target.restorationId,
'package:flutter/src/material/scaffold.dart@ScaffoldState@hasAppBar': (m.Scope scope, ScaffoldState target)=>target.hasAppBar,
'package:flutter/src/material/scaffold.dart@ScaffoldState@hasDrawer': (m.Scope scope, ScaffoldState target)=>target.hasDrawer,
'package:flutter/src/material/scaffold.dart@ScaffoldState@hasEndDrawer': (m.Scope scope, ScaffoldState target)=>target.hasEndDrawer,
'package:flutter/src/material/scaffold.dart@ScaffoldState@hasFloatingActionButton': (m.Scope scope, ScaffoldState target)=>target.hasFloatingActionButton,
'package:flutter/src/material/scaffold.dart@ScaffoldState@appBarMaxHeight': (m.Scope scope, ScaffoldState target)=>target.appBarMaxHeight,
'package:flutter/src/material/scaffold.dart@ScaffoldState@isDrawerOpen': (m.Scope scope, ScaffoldState target)=>target.isDrawerOpen,
'package:flutter/src/material/scaffold.dart@ScaffoldState@isEndDrawerOpen': (m.Scope scope, ScaffoldState target)=>target.isEndDrawerOpen,
'package:flutter/src/material/scaffold.dart@ScaffoldState@': (m.Scope scope)=>(){
return ScaffoldState();
},
'package:flutter/src/material/scaffold.dart@ScaffoldState@restoreState': (m.Scope scope, ScaffoldState target)=>target.restoreState,
'package:flutter/src/material/scaffold.dart@ScaffoldState@openDrawer': (m.Scope scope, ScaffoldState target)=>target.openDrawer,
'package:flutter/src/material/scaffold.dart@ScaffoldState@openEndDrawer': (m.Scope scope, ScaffoldState target)=>target.openEndDrawer,
'package:flutter/src/material/scaffold.dart@ScaffoldState@closeDrawer': (m.Scope scope, ScaffoldState target)=>target.closeDrawer,
'package:flutter/src/material/scaffold.dart@ScaffoldState@closeEndDrawer': (m.Scope scope, ScaffoldState target)=>target.closeEndDrawer,
'package:flutter/src/material/scaffold.dart@ScaffoldState@showBottomSheet': (m.Scope scope, ScaffoldState target)=>( builder, { backgroundColor,  clipBehavior,  constraints,  elevation,  enableDrag,  shape,  transitionAnimationController}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return target.showBottomSheet(builderProxy, backgroundColor:backgroundColor, clipBehavior:clipBehavior, constraints:constraints, elevation:elevation, enableDrag:enableDrag, shape:shape, transitionAnimationController:transitionAnimationController);
},
'package:flutter/src/material/scaffold.dart@ScaffoldState@initState': (m.Scope scope, ScaffoldState target)=>target.initState,
'package:flutter/src/material/scaffold.dart@ScaffoldState@didUpdateWidget': (m.Scope scope, ScaffoldState target)=>target.didUpdateWidget,
'package:flutter/src/material/scaffold.dart@ScaffoldState@didChangeDependencies': (m.Scope scope, ScaffoldState target)=>target.didChangeDependencies,
'package:flutter/src/material/scaffold.dart@ScaffoldState@dispose': (m.Scope scope, ScaffoldState target)=>target.dispose,
'package:flutter/src/material/scaffold.dart@ScaffoldState@showBodyScrim': (m.Scope scope, ScaffoldState target)=>target.showBodyScrim,
'package:flutter/src/material/scaffold.dart@ScaffoldState@build': (m.Scope scope, ScaffoldState target)=>target.build,
'package:flutter/src/material/scaffold.dart@ScaffoldFeatureController@#as': (m.Scope scope, target)=>()=>target as ScaffoldFeatureController,
'package:flutter/src/material/scaffold.dart@ScaffoldFeatureController@#is': (m.Scope scope, target)=>()=>target is ScaffoldFeatureController,
'package:flutter/src/material/scaffold.dart@ScaffoldFeatureController@close': (m.Scope scope, ScaffoldFeatureController target)=>target.close,
'package:flutter/src/material/scaffold.dart@ScaffoldFeatureController@setState': (m.Scope scope, ScaffoldFeatureController target)=>target.setState,
'package:flutter/src/material/scaffold.dart@ScaffoldFeatureController@closed': (m.Scope scope, ScaffoldFeatureController target)=>target.closed,
'package:flutter/src/material/scaffold.dart@PersistentBottomSheetController@#as': (m.Scope scope, target)=>()=>target as PersistentBottomSheetController,
'package:flutter/src/material/scaffold.dart@PersistentBottomSheetController@#is': (m.Scope scope, target)=>()=>target is PersistentBottomSheetController,

};
}