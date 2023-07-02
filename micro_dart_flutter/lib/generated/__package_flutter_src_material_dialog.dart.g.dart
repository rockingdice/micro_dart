import 'package:flutter/src/material/dialog.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/dialog.dart@Dialog@#as': (m.Scope scope, target)=>()=>target as Dialog,
'package:flutter/src/material/dialog.dart@Dialog@#is': (m.Scope scope, target)=>()=>target is Dialog,
'package:flutter/src/material/dialog.dart@Dialog@backgroundColor': (m.Scope scope, Dialog target)=>target.backgroundColor,
'package:flutter/src/material/dialog.dart@Dialog@elevation': (m.Scope scope, Dialog target)=>target.elevation,
'package:flutter/src/material/dialog.dart@Dialog@shadowColor': (m.Scope scope, Dialog target)=>target.shadowColor,
'package:flutter/src/material/dialog.dart@Dialog@surfaceTintColor': (m.Scope scope, Dialog target)=>target.surfaceTintColor,
'package:flutter/src/material/dialog.dart@Dialog@insetAnimationDuration': (m.Scope scope, Dialog target)=>target.insetAnimationDuration,
'package:flutter/src/material/dialog.dart@Dialog@insetAnimationCurve': (m.Scope scope, Dialog target)=>target.insetAnimationCurve,
'package:flutter/src/material/dialog.dart@Dialog@insetPadding': (m.Scope scope, Dialog target)=>target.insetPadding,
'package:flutter/src/material/dialog.dart@Dialog@clipBehavior': (m.Scope scope, Dialog target)=>target.clipBehavior,
'package:flutter/src/material/dialog.dart@Dialog@shape': (m.Scope scope, Dialog target)=>target.shape,
'package:flutter/src/material/dialog.dart@Dialog@alignment': (m.Scope scope, Dialog target)=>target.alignment,
'package:flutter/src/material/dialog.dart@Dialog@child': (m.Scope scope, Dialog target)=>target.child,
'package:flutter/src/material/dialog.dart@Dialog@': (m.Scope scope)=>({ alignment,  backgroundColor,  child,  clipBehavior,  elevation,  insetAnimationCurve,  insetAnimationDuration,  insetPadding,  key,  shadowColor,  shape,  surfaceTintColor}){
return Dialog(alignment:alignment, backgroundColor:backgroundColor, child:child, clipBehavior:clipBehavior ?? Clip.none, elevation:elevation, insetAnimationCurve:insetAnimationCurve ?? Curves.decelerate, insetAnimationDuration:insetAnimationDuration ?? const Duration(milliseconds: 100), insetPadding:insetPadding ?? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0), key:key, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/dialog.dart@Dialog@fullscreen': (m.Scope scope)=>Dialog.fullscreen,
'package:flutter/src/material/dialog.dart@Dialog@build': (m.Scope scope, Dialog target)=>target.build,
'package:flutter/src/material/dialog.dart@AlertDialog@#as': (m.Scope scope, target)=>()=>target as AlertDialog,
'package:flutter/src/material/dialog.dart@AlertDialog@#is': (m.Scope scope, target)=>()=>target is AlertDialog,
'package:flutter/src/material/dialog.dart@AlertDialog@icon': (m.Scope scope, AlertDialog target)=>target.icon,
'package:flutter/src/material/dialog.dart@AlertDialog@iconColor': (m.Scope scope, AlertDialog target)=>target.iconColor,
'package:flutter/src/material/dialog.dart@AlertDialog@iconPadding': (m.Scope scope, AlertDialog target)=>target.iconPadding,
'package:flutter/src/material/dialog.dart@AlertDialog@title': (m.Scope scope, AlertDialog target)=>target.title,
'package:flutter/src/material/dialog.dart@AlertDialog@titlePadding': (m.Scope scope, AlertDialog target)=>target.titlePadding,
'package:flutter/src/material/dialog.dart@AlertDialog@titleTextStyle': (m.Scope scope, AlertDialog target)=>target.titleTextStyle,
'package:flutter/src/material/dialog.dart@AlertDialog@content': (m.Scope scope, AlertDialog target)=>target.content,
'package:flutter/src/material/dialog.dart@AlertDialog@contentPadding': (m.Scope scope, AlertDialog target)=>target.contentPadding,
'package:flutter/src/material/dialog.dart@AlertDialog@contentTextStyle': (m.Scope scope, AlertDialog target)=>target.contentTextStyle,
'package:flutter/src/material/dialog.dart@AlertDialog@actions': (m.Scope scope, AlertDialog target)=>target.actions,
'package:flutter/src/material/dialog.dart@AlertDialog@actionsPadding': (m.Scope scope, AlertDialog target)=>target.actionsPadding,
'package:flutter/src/material/dialog.dart@AlertDialog@actionsAlignment': (m.Scope scope, AlertDialog target)=>target.actionsAlignment,
'package:flutter/src/material/dialog.dart@AlertDialog@actionsOverflowAlignment': (m.Scope scope, AlertDialog target)=>target.actionsOverflowAlignment,
'package:flutter/src/material/dialog.dart@AlertDialog@actionsOverflowDirection': (m.Scope scope, AlertDialog target)=>target.actionsOverflowDirection,
'package:flutter/src/material/dialog.dart@AlertDialog@actionsOverflowButtonSpacing': (m.Scope scope, AlertDialog target)=>target.actionsOverflowButtonSpacing,
'package:flutter/src/material/dialog.dart@AlertDialog@buttonPadding': (m.Scope scope, AlertDialog target)=>target.buttonPadding,
'package:flutter/src/material/dialog.dart@AlertDialog@backgroundColor': (m.Scope scope, AlertDialog target)=>target.backgroundColor,
'package:flutter/src/material/dialog.dart@AlertDialog@elevation': (m.Scope scope, AlertDialog target)=>target.elevation,
'package:flutter/src/material/dialog.dart@AlertDialog@shadowColor': (m.Scope scope, AlertDialog target)=>target.shadowColor,
'package:flutter/src/material/dialog.dart@AlertDialog@surfaceTintColor': (m.Scope scope, AlertDialog target)=>target.surfaceTintColor,
'package:flutter/src/material/dialog.dart@AlertDialog@semanticLabel': (m.Scope scope, AlertDialog target)=>target.semanticLabel,
'package:flutter/src/material/dialog.dart@AlertDialog@insetPadding': (m.Scope scope, AlertDialog target)=>target.insetPadding,
'package:flutter/src/material/dialog.dart@AlertDialog@clipBehavior': (m.Scope scope, AlertDialog target)=>target.clipBehavior,
'package:flutter/src/material/dialog.dart@AlertDialog@shape': (m.Scope scope, AlertDialog target)=>target.shape,
'package:flutter/src/material/dialog.dart@AlertDialog@alignment': (m.Scope scope, AlertDialog target)=>target.alignment,
'package:flutter/src/material/dialog.dart@AlertDialog@scrollable': (m.Scope scope, AlertDialog target)=>target.scrollable,
'package:flutter/src/material/dialog.dart@AlertDialog@': (m.Scope scope)=>({ actions,  actionsAlignment,  actionsOverflowAlignment,  actionsOverflowButtonSpacing,  actionsOverflowDirection,  actionsPadding,  alignment,  backgroundColor,  buttonPadding,  clipBehavior,  content,  contentPadding,  contentTextStyle,  elevation,  icon,  iconColor,  iconPadding,  insetPadding,  key,  scrollable,  semanticLabel,  shadowColor,  shape,  surfaceTintColor,  title,  titlePadding,  titleTextStyle}){
return AlertDialog(actions:actions, actionsAlignment:actionsAlignment, actionsOverflowAlignment:actionsOverflowAlignment, actionsOverflowButtonSpacing:actionsOverflowButtonSpacing, actionsOverflowDirection:actionsOverflowDirection, actionsPadding:actionsPadding, alignment:alignment, backgroundColor:backgroundColor, buttonPadding:buttonPadding, clipBehavior:clipBehavior ?? Clip.none, content:content, contentPadding:contentPadding, contentTextStyle:contentTextStyle, elevation:elevation, icon:icon, iconColor:iconColor, iconPadding:iconPadding, insetPadding:insetPadding ?? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0), key:key, scrollable:scrollable ?? false, semanticLabel:semanticLabel, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, title:title, titlePadding:titlePadding, titleTextStyle:titleTextStyle);
},
'package:flutter/src/material/dialog.dart@AlertDialog@build': (m.Scope scope, AlertDialog target)=>target.build,
'package:flutter/src/material/dialog.dart@SimpleDialogOption@#as': (m.Scope scope, target)=>()=>target as SimpleDialogOption,
'package:flutter/src/material/dialog.dart@SimpleDialogOption@#is': (m.Scope scope, target)=>()=>target is SimpleDialogOption,
'package:flutter/src/material/dialog.dart@SimpleDialogOption@onPressed': (m.Scope scope, SimpleDialogOption target)=>target.onPressed,
'package:flutter/src/material/dialog.dart@SimpleDialogOption@child': (m.Scope scope, SimpleDialogOption target)=>target.child,
'package:flutter/src/material/dialog.dart@SimpleDialogOption@padding': (m.Scope scope, SimpleDialogOption target)=>target.padding,
'package:flutter/src/material/dialog.dart@SimpleDialogOption@': (m.Scope scope)=>({ child,  key,  onPressed,  padding}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return SimpleDialogOption(child:child, key:key, onPressed:onPressed == null ? null :onPressedProxy, padding:padding);
},
'package:flutter/src/material/dialog.dart@SimpleDialogOption@build': (m.Scope scope, SimpleDialogOption target)=>target.build,
'package:flutter/src/material/dialog.dart@SimpleDialog@#as': (m.Scope scope, target)=>()=>target as SimpleDialog,
'package:flutter/src/material/dialog.dart@SimpleDialog@#is': (m.Scope scope, target)=>()=>target is SimpleDialog,
'package:flutter/src/material/dialog.dart@SimpleDialog@title': (m.Scope scope, SimpleDialog target)=>target.title,
'package:flutter/src/material/dialog.dart@SimpleDialog@titlePadding': (m.Scope scope, SimpleDialog target)=>target.titlePadding,
'package:flutter/src/material/dialog.dart@SimpleDialog@titleTextStyle': (m.Scope scope, SimpleDialog target)=>target.titleTextStyle,
'package:flutter/src/material/dialog.dart@SimpleDialog@children': (m.Scope scope, SimpleDialog target)=>target.children,
'package:flutter/src/material/dialog.dart@SimpleDialog@contentPadding': (m.Scope scope, SimpleDialog target)=>target.contentPadding,
'package:flutter/src/material/dialog.dart@SimpleDialog@backgroundColor': (m.Scope scope, SimpleDialog target)=>target.backgroundColor,
'package:flutter/src/material/dialog.dart@SimpleDialog@elevation': (m.Scope scope, SimpleDialog target)=>target.elevation,
'package:flutter/src/material/dialog.dart@SimpleDialog@shadowColor': (m.Scope scope, SimpleDialog target)=>target.shadowColor,
'package:flutter/src/material/dialog.dart@SimpleDialog@surfaceTintColor': (m.Scope scope, SimpleDialog target)=>target.surfaceTintColor,
'package:flutter/src/material/dialog.dart@SimpleDialog@semanticLabel': (m.Scope scope, SimpleDialog target)=>target.semanticLabel,
'package:flutter/src/material/dialog.dart@SimpleDialog@insetPadding': (m.Scope scope, SimpleDialog target)=>target.insetPadding,
'package:flutter/src/material/dialog.dart@SimpleDialog@clipBehavior': (m.Scope scope, SimpleDialog target)=>target.clipBehavior,
'package:flutter/src/material/dialog.dart@SimpleDialog@shape': (m.Scope scope, SimpleDialog target)=>target.shape,
'package:flutter/src/material/dialog.dart@SimpleDialog@alignment': (m.Scope scope, SimpleDialog target)=>target.alignment,
'package:flutter/src/material/dialog.dart@SimpleDialog@': (m.Scope scope)=>({ alignment,  backgroundColor,  children,  clipBehavior,  contentPadding,  elevation,  insetPadding,  key,  semanticLabel,  shadowColor,  shape,  surfaceTintColor,  title,  titlePadding,  titleTextStyle}){
return SimpleDialog(alignment:alignment, backgroundColor:backgroundColor, children:children, clipBehavior:clipBehavior ?? Clip.none, contentPadding:contentPadding ?? const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0), elevation:elevation, insetPadding:insetPadding ?? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0), key:key, semanticLabel:semanticLabel, shadowColor:shadowColor, shape:shape, surfaceTintColor:surfaceTintColor, title:title, titlePadding:titlePadding ?? const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0), titleTextStyle:titleTextStyle);
},
'package:flutter/src/material/dialog.dart@SimpleDialog@build': (m.Scope scope, SimpleDialog target)=>target.build,
'package:flutter/src/material/dialog.dart@DialogRoute@#as': (m.Scope scope, target)=>()=>target as DialogRoute,
'package:flutter/src/material/dialog.dart@DialogRoute@#is': (m.Scope scope, target)=>()=>target is DialogRoute,
'package:flutter/src/material/dialog.dart@DialogRoute@': (m.Scope scope)=>({ anchorPoint,  barrierColor,  barrierDismissible,  barrierLabel,  builder,  context,  settings,  themes,  traversalEdgeBehavior,  useSafeArea}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return DialogRoute(anchorPoint:anchorPoint, barrierColor:barrierColor ?? Colors.black54, barrierDismissible:barrierDismissible ?? true, barrierLabel:barrierLabel, builder:builderProxy, context:context, settings:settings, themes:themes, traversalEdgeBehavior:traversalEdgeBehavior, useSafeArea:useSafeArea ?? true);
},
'package:flutter/src/material/dialog.dart@@showDialog': (m.Scope scope)=>({ anchorPoint,  barrierColor,  barrierDismissible,  barrierLabel,  builder,  context,  routeSettings,  traversalEdgeBehavior,  useRootNavigator,  useSafeArea}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return showDialog(anchorPoint:anchorPoint, barrierColor:barrierColor ?? Colors.black54, barrierDismissible:barrierDismissible ?? true, barrierLabel:barrierLabel, builder:builderProxy, context:context, routeSettings:routeSettings, traversalEdgeBehavior:traversalEdgeBehavior, useRootNavigator:useRootNavigator ?? true, useSafeArea:useSafeArea ?? true);
},

};
}