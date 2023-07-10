import 'package:flutter/src/material/bottom_sheet.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@#as': (m.Scope scope, target)=>()=>target as BottomSheet,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@#is': (m.Scope scope, target)=>()=>target is BottomSheet,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@animationController': (m.Scope scope, BottomSheet target)=>target.animationController,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@onClosing': (m.Scope scope, BottomSheet target)=>target.onClosing,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@builder': (m.Scope scope, BottomSheet target)=>target.builder,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@enableDrag': (m.Scope scope, BottomSheet target)=>target.enableDrag,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@showDragHandle': (m.Scope scope, BottomSheet target)=>target.showDragHandle,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@dragHandleColor': (m.Scope scope, BottomSheet target)=>target.dragHandleColor,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@dragHandleSize': (m.Scope scope, BottomSheet target)=>target.dragHandleSize,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@onDragStart': (m.Scope scope, BottomSheet target)=>target.onDragStart,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@onDragEnd': (m.Scope scope, BottomSheet target)=>target.onDragEnd,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@backgroundColor': (m.Scope scope, BottomSheet target)=>target.backgroundColor,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@shadowColor': (m.Scope scope, BottomSheet target)=>target.shadowColor,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@elevation': (m.Scope scope, BottomSheet target)=>target.elevation,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@shape': (m.Scope scope, BottomSheet target)=>target.shape,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@clipBehavior': (m.Scope scope, BottomSheet target)=>target.clipBehavior,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@constraints': (m.Scope scope, BottomSheet target)=>target.constraints,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@': (m.Scope scope)=>({ animationController,  backgroundColor,  builder,  clipBehavior,  constraints,  dragHandleColor,  dragHandleSize,  elevation,  enableDrag,  key,  onClosing,  onDragEnd,  onDragStart,  shadowColor,  shape,  showDragHandle}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

void onClosingProxy() {
 engine.callFunctionPointer(scope, onClosing!,[], {});
}

void onDragEndProxy( details, { isClosing}) {
 engine.callFunctionPointer(scope, onDragEnd!,[details], {'isClosing':isClosing});
}

void onDragStartProxy( details) {
 engine.callFunctionPointer(scope, onDragStart!,[details], {});
}

return BottomSheet(animationController:animationController, backgroundColor:backgroundColor, builder:builderProxy, clipBehavior:clipBehavior, constraints:constraints, dragHandleColor:dragHandleColor, dragHandleSize:dragHandleSize, elevation:elevation, enableDrag:enableDrag ?? true, key:key, onClosing:onClosingProxy, onDragEnd:onDragEnd == null ? null :onDragEndProxy, onDragStart:onDragStart == null ? null :onDragStartProxy, shadowColor:shadowColor, shape:shape, showDragHandle:showDragHandle);
},
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@createState': (m.Scope scope, BottomSheet target)=>target.createState,
'package:flutter/src/material/bottom_sheet.dart@BottomSheet@createAnimationController': (m.Scope scope)=>BottomSheet.createAnimationController,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@#as': (m.Scope scope, target)=>()=>target as ModalBottomSheetRoute,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@#is': (m.Scope scope, target)=>()=>target is ModalBottomSheetRoute,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@builder': (m.Scope scope, ModalBottomSheetRoute target)=>target.builder,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@capturedThemes': (m.Scope scope, ModalBottomSheetRoute target)=>target.capturedThemes,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@isScrollControlled': (m.Scope scope, ModalBottomSheetRoute target)=>target.isScrollControlled,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@backgroundColor': (m.Scope scope, ModalBottomSheetRoute target)=>target.backgroundColor,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@elevation': (m.Scope scope, ModalBottomSheetRoute target)=>target.elevation,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@shape': (m.Scope scope, ModalBottomSheetRoute target)=>target.shape,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@clipBehavior': (m.Scope scope, ModalBottomSheetRoute target)=>target.clipBehavior,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@constraints': (m.Scope scope, ModalBottomSheetRoute target)=>target.constraints,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@modalBarrierColor': (m.Scope scope, ModalBottomSheetRoute target)=>target.modalBarrierColor,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@isDismissible': (m.Scope scope, ModalBottomSheetRoute target)=>target.isDismissible,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@enableDrag': (m.Scope scope, ModalBottomSheetRoute target)=>target.enableDrag,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@showDragHandle': (m.Scope scope, ModalBottomSheetRoute target)=>target.showDragHandle,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@transitionAnimationController': (m.Scope scope, ModalBottomSheetRoute target)=>target.transitionAnimationController,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@anchorPoint': (m.Scope scope, ModalBottomSheetRoute target)=>target.anchorPoint,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@useSafeArea': (m.Scope scope, ModalBottomSheetRoute target)=>target.useSafeArea,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@barrierOnTapHint': (m.Scope scope, ModalBottomSheetRoute target)=>target.barrierOnTapHint,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@barrierLabel': (m.Scope scope, ModalBottomSheetRoute target)=>target.barrierLabel,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@transitionDuration': (m.Scope scope, ModalBottomSheetRoute target)=>target.transitionDuration,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@reverseTransitionDuration': (m.Scope scope, ModalBottomSheetRoute target)=>target.reverseTransitionDuration,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@barrierDismissible': (m.Scope scope, ModalBottomSheetRoute target)=>target.barrierDismissible,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@barrierColor': (m.Scope scope, ModalBottomSheetRoute target)=>target.barrierColor,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@': (m.Scope scope)=>({ anchorPoint,  backgroundColor,  barrierLabel,  barrierOnTapHint,  builder,  capturedThemes,  clipBehavior,  constraints,  elevation,  enableDrag,  isDismissible,  isScrollControlled,  modalBarrierColor,  settings,  shape,  showDragHandle,  transitionAnimationController,  useSafeArea}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return ModalBottomSheetRoute(anchorPoint:anchorPoint, backgroundColor:backgroundColor, barrierLabel:barrierLabel, barrierOnTapHint:barrierOnTapHint, builder:builderProxy, capturedThemes:capturedThemes, clipBehavior:clipBehavior, constraints:constraints, elevation:elevation, enableDrag:enableDrag ?? true, isDismissible:isDismissible ?? true, isScrollControlled:isScrollControlled, modalBarrierColor:modalBarrierColor, settings:settings, shape:shape, showDragHandle:showDragHandle, transitionAnimationController:transitionAnimationController, useSafeArea:useSafeArea ?? false);
},
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@createAnimationController': (m.Scope scope, ModalBottomSheetRoute target)=>target.createAnimationController,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@buildPage': (m.Scope scope, ModalBottomSheetRoute target)=>target.buildPage,
'package:flutter/src/material/bottom_sheet.dart@ModalBottomSheetRoute@buildModalBarrier': (m.Scope scope, ModalBottomSheetRoute target)=>target.buildModalBarrier,
'package:flutter/src/material/bottom_sheet.dart@@showModalBottomSheet': (m.Scope scope)=>({ anchorPoint,  backgroundColor,  barrierColor,  builder,  clipBehavior,  constraints,  context,  elevation,  enableDrag,  isDismissible,  isScrollControlled,  routeSettings,  shape,  showDragHandle,  transitionAnimationController,  useRootNavigator,  useSafeArea}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return showModalBottomSheet(anchorPoint:anchorPoint, backgroundColor:backgroundColor, barrierColor:barrierColor, builder:builderProxy, clipBehavior:clipBehavior, constraints:constraints, context:context, elevation:elevation, enableDrag:enableDrag ?? true, isDismissible:isDismissible ?? true, isScrollControlled:isScrollControlled ?? false, routeSettings:routeSettings, shape:shape, showDragHandle:showDragHandle, transitionAnimationController:transitionAnimationController, useRootNavigator:useRootNavigator ?? false, useSafeArea:useSafeArea ?? false);
},
'package:flutter/src/material/bottom_sheet.dart@@showBottomSheet': (m.Scope scope)=>({ backgroundColor,  builder,  clipBehavior,  constraints,  context,  elevation,  enableDrag,  shape,  transitionAnimationController}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return showBottomSheet(backgroundColor:backgroundColor, builder:builderProxy, clipBehavior:clipBehavior, constraints:constraints, context:context, elevation:elevation, enableDrag:enableDrag, shape:shape, transitionAnimationController:transitionAnimationController);
},

};
}