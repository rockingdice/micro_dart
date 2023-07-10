import 'package:flutter/src/material/button.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/material_state_mixin.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/button.dart@RawMaterialButton@#as': (m.Scope scope, target)=>()=>target as RawMaterialButton,
'package:flutter/src/material/button.dart@RawMaterialButton@#is': (m.Scope scope, target)=>()=>target is RawMaterialButton,
'package:flutter/src/material/button.dart@RawMaterialButton@onPressed': (m.Scope scope, RawMaterialButton target)=>target.onPressed,
'package:flutter/src/material/button.dart@RawMaterialButton@onLongPress': (m.Scope scope, RawMaterialButton target)=>target.onLongPress,
'package:flutter/src/material/button.dart@RawMaterialButton@onHighlightChanged': (m.Scope scope, RawMaterialButton target)=>target.onHighlightChanged,
'package:flutter/src/material/button.dart@RawMaterialButton@mouseCursor': (m.Scope scope, RawMaterialButton target)=>target.mouseCursor,
'package:flutter/src/material/button.dart@RawMaterialButton@textStyle': (m.Scope scope, RawMaterialButton target)=>target.textStyle,
'package:flutter/src/material/button.dart@RawMaterialButton@fillColor': (m.Scope scope, RawMaterialButton target)=>target.fillColor,
'package:flutter/src/material/button.dart@RawMaterialButton@focusColor': (m.Scope scope, RawMaterialButton target)=>target.focusColor,
'package:flutter/src/material/button.dart@RawMaterialButton@hoverColor': (m.Scope scope, RawMaterialButton target)=>target.hoverColor,
'package:flutter/src/material/button.dart@RawMaterialButton@highlightColor': (m.Scope scope, RawMaterialButton target)=>target.highlightColor,
'package:flutter/src/material/button.dart@RawMaterialButton@splashColor': (m.Scope scope, RawMaterialButton target)=>target.splashColor,
'package:flutter/src/material/button.dart@RawMaterialButton@elevation': (m.Scope scope, RawMaterialButton target)=>target.elevation,
'package:flutter/src/material/button.dart@RawMaterialButton@hoverElevation': (m.Scope scope, RawMaterialButton target)=>target.hoverElevation,
'package:flutter/src/material/button.dart@RawMaterialButton@focusElevation': (m.Scope scope, RawMaterialButton target)=>target.focusElevation,
'package:flutter/src/material/button.dart@RawMaterialButton@highlightElevation': (m.Scope scope, RawMaterialButton target)=>target.highlightElevation,
'package:flutter/src/material/button.dart@RawMaterialButton@disabledElevation': (m.Scope scope, RawMaterialButton target)=>target.disabledElevation,
'package:flutter/src/material/button.dart@RawMaterialButton@padding': (m.Scope scope, RawMaterialButton target)=>target.padding,
'package:flutter/src/material/button.dart@RawMaterialButton@visualDensity': (m.Scope scope, RawMaterialButton target)=>target.visualDensity,
'package:flutter/src/material/button.dart@RawMaterialButton@constraints': (m.Scope scope, RawMaterialButton target)=>target.constraints,
'package:flutter/src/material/button.dart@RawMaterialButton@shape': (m.Scope scope, RawMaterialButton target)=>target.shape,
'package:flutter/src/material/button.dart@RawMaterialButton@animationDuration': (m.Scope scope, RawMaterialButton target)=>target.animationDuration,
'package:flutter/src/material/button.dart@RawMaterialButton@child': (m.Scope scope, RawMaterialButton target)=>target.child,
'package:flutter/src/material/button.dart@RawMaterialButton@materialTapTargetSize': (m.Scope scope, RawMaterialButton target)=>target.materialTapTargetSize,
'package:flutter/src/material/button.dart@RawMaterialButton@focusNode': (m.Scope scope, RawMaterialButton target)=>target.focusNode,
'package:flutter/src/material/button.dart@RawMaterialButton@autofocus': (m.Scope scope, RawMaterialButton target)=>target.autofocus,
'package:flutter/src/material/button.dart@RawMaterialButton@clipBehavior': (m.Scope scope, RawMaterialButton target)=>target.clipBehavior,
'package:flutter/src/material/button.dart@RawMaterialButton@enableFeedback': (m.Scope scope, RawMaterialButton target)=>target.enableFeedback,
'package:flutter/src/material/button.dart@RawMaterialButton@enabled': (m.Scope scope, RawMaterialButton target)=>target.enabled,
'package:flutter/src/material/button.dart@RawMaterialButton@': (m.Scope scope)=>({ animationDuration,  autofocus,  child,  clipBehavior,  constraints,  disabledElevation,  elevation,  enableFeedback,  fillColor,  focusColor,  focusElevation,  focusNode,  highlightColor,  highlightElevation,  hoverColor,  hoverElevation,  key,  materialTapTargetSize,  mouseCursor,  onHighlightChanged,  onLongPress,  onPressed,  padding,  shape,  splashColor,  textStyle,  visualDensity}){
void onHighlightChangedProxy( value) {
 engine.callFunctionPointer(scope, onHighlightChanged!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return RawMaterialButton(animationDuration:animationDuration ?? kThemeChangeDuration, autofocus:autofocus ?? false, child:child, clipBehavior:clipBehavior ?? Clip.none, constraints:constraints ?? const BoxConstraints(minWidth: 88.0, minHeight: 36.0), disabledElevation:disabledElevation ?? 0.0, elevation:elevation ?? 2.0, enableFeedback:enableFeedback ?? true, fillColor:fillColor, focusColor:focusColor, focusElevation:focusElevation ?? 4.0, focusNode:focusNode, highlightColor:highlightColor, highlightElevation:highlightElevation ?? 8.0, hoverColor:hoverColor, hoverElevation:hoverElevation ?? 4.0, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onHighlightChanged:onHighlightChanged == null ? null :onHighlightChangedProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, padding:padding ?? EdgeInsets.zero, shape:shape ?? const RoundedRectangleBorder(), splashColor:splashColor, textStyle:textStyle, visualDensity:visualDensity ?? VisualDensity.standard);
},
'package:flutter/src/material/button.dart@RawMaterialButton@createState': (m.Scope scope, RawMaterialButton target)=>target.createState,

};
}