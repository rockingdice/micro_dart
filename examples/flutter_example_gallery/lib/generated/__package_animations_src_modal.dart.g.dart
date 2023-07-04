import 'package:animations/src/modal.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animations/src/fade_scale_transition.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:animations/src/modal.dart@ModalConfiguration@#as': (m.Scope scope, target)=>()=>target as ModalConfiguration,
'package:animations/src/modal.dart@ModalConfiguration@#is': (m.Scope scope, target)=>()=>target is ModalConfiguration,
'package:animations/src/modal.dart@ModalConfiguration@barrierColor': (m.Scope scope, ModalConfiguration target)=>target.barrierColor,
'package:animations/src/modal.dart@ModalConfiguration@barrierDismissible': (m.Scope scope, ModalConfiguration target)=>target.barrierDismissible,
'package:animations/src/modal.dart@ModalConfiguration@barrierLabel': (m.Scope scope, ModalConfiguration target)=>target.barrierLabel,
'package:animations/src/modal.dart@ModalConfiguration@transitionDuration': (m.Scope scope, ModalConfiguration target)=>target.transitionDuration,
'package:animations/src/modal.dart@ModalConfiguration@reverseTransitionDuration': (m.Scope scope, ModalConfiguration target)=>target.reverseTransitionDuration,
'package:animations/src/modal.dart@ModalConfiguration@transitionBuilder': (m.Scope scope, ModalConfiguration target)=>target.transitionBuilder,
'package:animations/src/modal.dart@@showModal': (m.Scope scope)=>({ builder,  configuration,  context,  filter,  routeSettings,  useRootNavigator}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return showModal(builder:builderProxy, configuration:configuration ?? const FadeScaleTransitionConfiguration(), context:context, filter:filter, routeSettings:routeSettings, useRootNavigator:useRootNavigator ?? true);
},

};
}