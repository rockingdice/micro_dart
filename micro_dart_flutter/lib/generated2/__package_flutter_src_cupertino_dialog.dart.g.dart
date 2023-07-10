import 'package:flutter/src/cupertino/dialog.dart';
import 'dart:math';
import 'dart:ui' show ImageFilter;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/scrollbar.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@#as': (m.Scope scope, target)=>()=>target as CupertinoAlertDialog,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@#is': (m.Scope scope, target)=>()=>target is CupertinoAlertDialog,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@title': (m.Scope scope, CupertinoAlertDialog target)=>target.title,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@content': (m.Scope scope, CupertinoAlertDialog target)=>target.content,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@actions': (m.Scope scope, CupertinoAlertDialog target)=>target.actions,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@scrollController': (m.Scope scope, CupertinoAlertDialog target)=>target.scrollController,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@actionScrollController': (m.Scope scope, CupertinoAlertDialog target)=>target.actionScrollController,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@insetAnimationDuration': (m.Scope scope, CupertinoAlertDialog target)=>target.insetAnimationDuration,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@insetAnimationCurve': (m.Scope scope, CupertinoAlertDialog target)=>target.insetAnimationCurve,
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@': (m.Scope scope)=>({ actionScrollController,  actions,  content,  insetAnimationCurve,  insetAnimationDuration,  key,  scrollController,  title}){
return CupertinoAlertDialog(actionScrollController:actionScrollController, actions:actions ?? const <Widget>[], content:content, insetAnimationCurve:insetAnimationCurve ?? Curves.decelerate, insetAnimationDuration:insetAnimationDuration ?? const Duration(milliseconds: 100), key:key, scrollController:scrollController, title:title);
},
'package:flutter/src/cupertino/dialog.dart@CupertinoAlertDialog@build': (m.Scope scope, CupertinoAlertDialog target)=>target.build,
'package:flutter/src/cupertino/dialog.dart@CupertinoPopupSurface@#as': (m.Scope scope, target)=>()=>target as CupertinoPopupSurface,
'package:flutter/src/cupertino/dialog.dart@CupertinoPopupSurface@#is': (m.Scope scope, target)=>()=>target is CupertinoPopupSurface,
'package:flutter/src/cupertino/dialog.dart@CupertinoPopupSurface@isSurfacePainted': (m.Scope scope, CupertinoPopupSurface target)=>target.isSurfacePainted,
'package:flutter/src/cupertino/dialog.dart@CupertinoPopupSurface@child': (m.Scope scope, CupertinoPopupSurface target)=>target.child,
'package:flutter/src/cupertino/dialog.dart@CupertinoPopupSurface@': (m.Scope scope)=>({ child,  isSurfacePainted,  key}){
return CupertinoPopupSurface(child:child, isSurfacePainted:isSurfacePainted ?? true, key:key);
},
'package:flutter/src/cupertino/dialog.dart@CupertinoPopupSurface@build': (m.Scope scope, CupertinoPopupSurface target)=>target.build,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@#as': (m.Scope scope, target)=>()=>target as CupertinoActionSheet,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@#is': (m.Scope scope, target)=>()=>target is CupertinoActionSheet,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@title': (m.Scope scope, CupertinoActionSheet target)=>target.title,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@message': (m.Scope scope, CupertinoActionSheet target)=>target.message,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@actions': (m.Scope scope, CupertinoActionSheet target)=>target.actions,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@messageScrollController': (m.Scope scope, CupertinoActionSheet target)=>target.messageScrollController,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@actionScrollController': (m.Scope scope, CupertinoActionSheet target)=>target.actionScrollController,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@cancelButton': (m.Scope scope, CupertinoActionSheet target)=>target.cancelButton,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@': (m.Scope scope)=>({ actionScrollController,  actions,  cancelButton,  key,  message,  messageScrollController,  title}){
return CupertinoActionSheet(actionScrollController:actionScrollController, actions:actions, cancelButton:cancelButton, key:key, message:message, messageScrollController:messageScrollController, title:title);
},
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheet@build': (m.Scope scope, CupertinoActionSheet target)=>target.build,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@#as': (m.Scope scope, target)=>()=>target as CupertinoActionSheetAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@#is': (m.Scope scope, target)=>()=>target is CupertinoActionSheetAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@onPressed': (m.Scope scope, CupertinoActionSheetAction target)=>target.onPressed,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@isDefaultAction': (m.Scope scope, CupertinoActionSheetAction target)=>target.isDefaultAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@isDestructiveAction': (m.Scope scope, CupertinoActionSheetAction target)=>target.isDestructiveAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@child': (m.Scope scope, CupertinoActionSheetAction target)=>target.child,
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@': (m.Scope scope)=>({ child,  isDefaultAction,  isDestructiveAction,  key,  onPressed}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoActionSheetAction(child:child, isDefaultAction:isDefaultAction ?? false, isDestructiveAction:isDestructiveAction ?? false, key:key, onPressed:onPressedProxy);
},
'package:flutter/src/cupertino/dialog.dart@CupertinoActionSheetAction@build': (m.Scope scope, CupertinoActionSheetAction target)=>target.build,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@#as': (m.Scope scope, target)=>()=>target as CupertinoDialogAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@#is': (m.Scope scope, target)=>()=>target is CupertinoDialogAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@onPressed': (m.Scope scope, CupertinoDialogAction target)=>target.onPressed,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@isDefaultAction': (m.Scope scope, CupertinoDialogAction target)=>target.isDefaultAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@isDestructiveAction': (m.Scope scope, CupertinoDialogAction target)=>target.isDestructiveAction,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@textStyle': (m.Scope scope, CupertinoDialogAction target)=>target.textStyle,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@child': (m.Scope scope, CupertinoDialogAction target)=>target.child,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@enabled': (m.Scope scope, CupertinoDialogAction target)=>target.enabled,
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@': (m.Scope scope)=>({ child,  isDefaultAction,  isDestructiveAction,  key,  onPressed,  textStyle}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return CupertinoDialogAction(child:child, isDefaultAction:isDefaultAction ?? false, isDestructiveAction:isDestructiveAction ?? false, key:key, onPressed:onPressed == null ? null :onPressedProxy, textStyle:textStyle);
},
'package:flutter/src/cupertino/dialog.dart@CupertinoDialogAction@build': (m.Scope scope, CupertinoDialogAction target)=>target.build,

};
}