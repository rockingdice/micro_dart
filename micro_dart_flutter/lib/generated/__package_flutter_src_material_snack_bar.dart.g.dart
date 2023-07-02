import 'package:flutter/src/material/snack_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/text_button_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/snack_bar.dart@SnackBarAction@#as': (m.Scope scope, target)=>()=>target as SnackBarAction,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@#is': (m.Scope scope, target)=>()=>target is SnackBarAction,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@textColor': (m.Scope scope, SnackBarAction target)=>target.textColor,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@backgroundColor': (m.Scope scope, SnackBarAction target)=>target.backgroundColor,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@disabledTextColor': (m.Scope scope, SnackBarAction target)=>target.disabledTextColor,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@disabledBackgroundColor': (m.Scope scope, SnackBarAction target)=>target.disabledBackgroundColor,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@label': (m.Scope scope, SnackBarAction target)=>target.label,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@onPressed': (m.Scope scope, SnackBarAction target)=>target.onPressed,
'package:flutter/src/material/snack_bar.dart@SnackBarAction@': (m.Scope scope)=>({ backgroundColor,  disabledBackgroundColor,  disabledTextColor,  key,  label,  onPressed,  textColor}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return SnackBarAction(backgroundColor:backgroundColor, disabledBackgroundColor:disabledBackgroundColor, disabledTextColor:disabledTextColor, key:key, label:label, onPressed:onPressedProxy, textColor:textColor);
},
'package:flutter/src/material/snack_bar.dart@SnackBarAction@createState': (m.Scope scope, SnackBarAction target)=>target.createState,
'package:flutter/src/material/snack_bar.dart@SnackBar@#as': (m.Scope scope, target)=>()=>target as SnackBar,
'package:flutter/src/material/snack_bar.dart@SnackBar@#is': (m.Scope scope, target)=>()=>target is SnackBar,
'package:flutter/src/material/snack_bar.dart@SnackBar@content': (m.Scope scope, SnackBar target)=>target.content,
'package:flutter/src/material/snack_bar.dart@SnackBar@backgroundColor': (m.Scope scope, SnackBar target)=>target.backgroundColor,
'package:flutter/src/material/snack_bar.dart@SnackBar@elevation': (m.Scope scope, SnackBar target)=>target.elevation,
'package:flutter/src/material/snack_bar.dart@SnackBar@margin': (m.Scope scope, SnackBar target)=>target.margin,
'package:flutter/src/material/snack_bar.dart@SnackBar@padding': (m.Scope scope, SnackBar target)=>target.padding,
'package:flutter/src/material/snack_bar.dart@SnackBar@width': (m.Scope scope, SnackBar target)=>target.width,
'package:flutter/src/material/snack_bar.dart@SnackBar@shape': (m.Scope scope, SnackBar target)=>target.shape,
'package:flutter/src/material/snack_bar.dart@SnackBar@behavior': (m.Scope scope, SnackBar target)=>target.behavior,
'package:flutter/src/material/snack_bar.dart@SnackBar@action': (m.Scope scope, SnackBar target)=>target.action,
'package:flutter/src/material/snack_bar.dart@SnackBar@actionOverflowThreshold': (m.Scope scope, SnackBar target)=>target.actionOverflowThreshold,
'package:flutter/src/material/snack_bar.dart@SnackBar@showCloseIcon': (m.Scope scope, SnackBar target)=>target.showCloseIcon,
'package:flutter/src/material/snack_bar.dart@SnackBar@closeIconColor': (m.Scope scope, SnackBar target)=>target.closeIconColor,
'package:flutter/src/material/snack_bar.dart@SnackBar@duration': (m.Scope scope, SnackBar target)=>target.duration,
'package:flutter/src/material/snack_bar.dart@SnackBar@animation': (m.Scope scope, SnackBar target)=>target.animation,
'package:flutter/src/material/snack_bar.dart@SnackBar@onVisible': (m.Scope scope, SnackBar target)=>target.onVisible,
'package:flutter/src/material/snack_bar.dart@SnackBar@dismissDirection': (m.Scope scope, SnackBar target)=>target.dismissDirection,
'package:flutter/src/material/snack_bar.dart@SnackBar@clipBehavior': (m.Scope scope, SnackBar target)=>target.clipBehavior,
'package:flutter/src/material/snack_bar.dart@SnackBar@': (m.Scope scope)=>({ action,  actionOverflowThreshold,  animation,  backgroundColor,  behavior,  clipBehavior,  closeIconColor,  content,  dismissDirection,  duration,  elevation,  key,  margin,  onVisible,  padding,  shape,  showCloseIcon,  width}){
void onVisibleProxy() {
 engine.callFunctionPointer(scope, onVisible!,[], {});
}

return SnackBar(action:action, actionOverflowThreshold:actionOverflowThreshold, animation:animation, backgroundColor:backgroundColor, behavior:behavior, clipBehavior:clipBehavior ?? Clip.hardEdge, closeIconColor:closeIconColor, content:content, dismissDirection:dismissDirection ?? DismissDirection.down, duration:duration ?? const Duration(milliseconds: 4000), elevation:elevation, key:key, margin:margin, onVisible:onVisible == null ? null :onVisibleProxy, padding:padding, shape:shape, showCloseIcon:showCloseIcon, width:width);
},
'package:flutter/src/material/snack_bar.dart@SnackBar@createAnimationController': (m.Scope scope)=>SnackBar.createAnimationController,
'package:flutter/src/material/snack_bar.dart@SnackBar@withAnimation': (m.Scope scope, SnackBar target)=>target.withAnimation,
'package:flutter/src/material/snack_bar.dart@SnackBar@createState': (m.Scope scope, SnackBar target)=>target.createState,

};
}