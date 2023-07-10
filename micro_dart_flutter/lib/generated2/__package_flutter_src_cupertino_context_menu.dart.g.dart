import 'package:flutter/src/cupertino/context_menu.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart' show kMinFlingVelocity;
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@#as': (m.Scope scope, target)=>()=>target as CupertinoContextMenu,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@#is': (m.Scope scope, target)=>()=>target is CupertinoContextMenu,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@kOpenBorderRadius': (m.Scope scope)=>CupertinoContextMenu.kOpenBorderRadius,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@kEndBoxShadow': (m.Scope scope)=>CupertinoContextMenu.kEndBoxShadow,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@animationOpensAt': (m.Scope scope)=>CupertinoContextMenu.animationOpensAt,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@builder': (m.Scope scope, CupertinoContextMenu target)=>target.builder,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@child': (m.Scope scope, CupertinoContextMenu target)=>target.child,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@actions': (m.Scope scope, CupertinoContextMenu target)=>target.actions,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@enableHapticFeedback': (m.Scope scope, CupertinoContextMenu target)=>target.enableHapticFeedback,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@previewBuilder': (m.Scope scope, CupertinoContextMenu target)=>target.previewBuilder,
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@': (m.Scope scope)=>({ actions,  child,  enableHapticFeedback,  key,  previewBuilder}){
Widget previewBuilderProxy( context,  animation,  child) {
return  engine.callFunctionPointer(scope, previewBuilder!,[context, animation, child], {});
}

return CupertinoContextMenu(actions:actions, child:child, enableHapticFeedback:enableHapticFeedback ?? false, key:key, previewBuilder:previewBuilder == null ? (BuildContext context, Animation<double> animation, Widget child) {return FittedBox(fit: BoxFit.cover,child: ClipRRect(borderRadius: BorderRadius.circular(12.0 * animation.value),child: child,),);} :previewBuilderProxy);
},
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@builder': (m.Scope scope)=>({ actions,  builder,  enableHapticFeedback,  key}){
Widget builderProxy( context,  animation) {
return  engine.callFunctionPointer(scope, builder!,[context, animation], {});
}

return CupertinoContextMenu.builder(actions:actions, builder:builderProxy, enableHapticFeedback:enableHapticFeedback ?? false, key:key);
},
'package:flutter/src/cupertino/context_menu.dart@CupertinoContextMenu@createState': (m.Scope scope, CupertinoContextMenu target)=>target.createState,

};
}