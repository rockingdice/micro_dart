import 'package:flutter/src/material/material_button.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/material_button.dart@MaterialButton@#as': (m.Scope scope, target)=>()=>target as MaterialButton,
'package:flutter/src/material/material_button.dart@MaterialButton@#is': (m.Scope scope, target)=>()=>target is MaterialButton,
'package:flutter/src/material/material_button.dart@MaterialButton@onPressed': (m.Scope scope, MaterialButton target)=>target.onPressed,
'package:flutter/src/material/material_button.dart@MaterialButton@onLongPress': (m.Scope scope, MaterialButton target)=>target.onLongPress,
'package:flutter/src/material/material_button.dart@MaterialButton@onHighlightChanged': (m.Scope scope, MaterialButton target)=>target.onHighlightChanged,
'package:flutter/src/material/material_button.dart@MaterialButton@mouseCursor': (m.Scope scope, MaterialButton target)=>target.mouseCursor,
'package:flutter/src/material/material_button.dart@MaterialButton@textTheme': (m.Scope scope, MaterialButton target)=>target.textTheme,
'package:flutter/src/material/material_button.dart@MaterialButton@textColor': (m.Scope scope, MaterialButton target)=>target.textColor,
'package:flutter/src/material/material_button.dart@MaterialButton@disabledTextColor': (m.Scope scope, MaterialButton target)=>target.disabledTextColor,
'package:flutter/src/material/material_button.dart@MaterialButton@color': (m.Scope scope, MaterialButton target)=>target.color,
'package:flutter/src/material/material_button.dart@MaterialButton@disabledColor': (m.Scope scope, MaterialButton target)=>target.disabledColor,
'package:flutter/src/material/material_button.dart@MaterialButton@splashColor': (m.Scope scope, MaterialButton target)=>target.splashColor,
'package:flutter/src/material/material_button.dart@MaterialButton@focusColor': (m.Scope scope, MaterialButton target)=>target.focusColor,
'package:flutter/src/material/material_button.dart@MaterialButton@hoverColor': (m.Scope scope, MaterialButton target)=>target.hoverColor,
'package:flutter/src/material/material_button.dart@MaterialButton@highlightColor': (m.Scope scope, MaterialButton target)=>target.highlightColor,
'package:flutter/src/material/material_button.dart@MaterialButton@elevation': (m.Scope scope, MaterialButton target)=>target.elevation,
'package:flutter/src/material/material_button.dart@MaterialButton@hoverElevation': (m.Scope scope, MaterialButton target)=>target.hoverElevation,
'package:flutter/src/material/material_button.dart@MaterialButton@focusElevation': (m.Scope scope, MaterialButton target)=>target.focusElevation,
'package:flutter/src/material/material_button.dart@MaterialButton@highlightElevation': (m.Scope scope, MaterialButton target)=>target.highlightElevation,
'package:flutter/src/material/material_button.dart@MaterialButton@disabledElevation': (m.Scope scope, MaterialButton target)=>target.disabledElevation,
'package:flutter/src/material/material_button.dart@MaterialButton@colorBrightness': (m.Scope scope, MaterialButton target)=>target.colorBrightness,
'package:flutter/src/material/material_button.dart@MaterialButton@child': (m.Scope scope, MaterialButton target)=>target.child,
'package:flutter/src/material/material_button.dart@MaterialButton@padding': (m.Scope scope, MaterialButton target)=>target.padding,
'package:flutter/src/material/material_button.dart@MaterialButton@visualDensity': (m.Scope scope, MaterialButton target)=>target.visualDensity,
'package:flutter/src/material/material_button.dart@MaterialButton@shape': (m.Scope scope, MaterialButton target)=>target.shape,
'package:flutter/src/material/material_button.dart@MaterialButton@clipBehavior': (m.Scope scope, MaterialButton target)=>target.clipBehavior,
'package:flutter/src/material/material_button.dart@MaterialButton@focusNode': (m.Scope scope, MaterialButton target)=>target.focusNode,
'package:flutter/src/material/material_button.dart@MaterialButton@autofocus': (m.Scope scope, MaterialButton target)=>target.autofocus,
'package:flutter/src/material/material_button.dart@MaterialButton@animationDuration': (m.Scope scope, MaterialButton target)=>target.animationDuration,
'package:flutter/src/material/material_button.dart@MaterialButton@materialTapTargetSize': (m.Scope scope, MaterialButton target)=>target.materialTapTargetSize,
'package:flutter/src/material/material_button.dart@MaterialButton@minWidth': (m.Scope scope, MaterialButton target)=>target.minWidth,
'package:flutter/src/material/material_button.dart@MaterialButton@height': (m.Scope scope, MaterialButton target)=>target.height,
'package:flutter/src/material/material_button.dart@MaterialButton@enableFeedback': (m.Scope scope, MaterialButton target)=>target.enableFeedback,
'package:flutter/src/material/material_button.dart@MaterialButton@enabled': (m.Scope scope, MaterialButton target)=>target.enabled,
'package:flutter/src/material/material_button.dart@MaterialButton@': (m.Scope scope)=>({ animationDuration,  autofocus,  child,  clipBehavior,  color,  colorBrightness,  disabledColor,  disabledElevation,  disabledTextColor,  elevation,  enableFeedback,  focusColor,  focusElevation,  focusNode,  height,  highlightColor,  highlightElevation,  hoverColor,  hoverElevation,  key,  materialTapTargetSize,  minWidth,  mouseCursor,  onHighlightChanged,  onLongPress,  onPressed,  padding,  shape,  splashColor,  textColor,  textTheme,  visualDensity}){
void onHighlightChangedProxy( value) {
 engine.callFunctionPointer(scope, onHighlightChanged!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return MaterialButton(animationDuration:animationDuration, autofocus:autofocus ?? false, child:child, clipBehavior:clipBehavior ?? Clip.none, color:color, colorBrightness:colorBrightness, disabledColor:disabledColor, disabledElevation:disabledElevation, disabledTextColor:disabledTextColor, elevation:elevation, enableFeedback:enableFeedback ?? true, focusColor:focusColor, focusElevation:focusElevation, focusNode:focusNode, height:height, highlightColor:highlightColor, highlightElevation:highlightElevation, hoverColor:hoverColor, hoverElevation:hoverElevation, key:key, materialTapTargetSize:materialTapTargetSize, minWidth:minWidth, mouseCursor:mouseCursor, onHighlightChanged:onHighlightChanged == null ? null :onHighlightChangedProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, padding:padding, shape:shape, splashColor:splashColor, textColor:textColor, textTheme:textTheme, visualDensity:visualDensity);
},
'package:flutter/src/material/material_button.dart@MaterialButton@build': (m.Scope scope, MaterialButton target)=>target.build,
'package:flutter/src/material/material_button.dart@MaterialButton@debugFillProperties': (m.Scope scope, MaterialButton target)=>target.debugFillProperties,

};
}