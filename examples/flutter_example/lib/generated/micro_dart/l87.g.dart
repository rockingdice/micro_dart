import 'package:flutter/src/material/elevated_button.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/button_style_button.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/elevated_button_theme.dart';
import 'package:flutter/src/material/ink_ripple.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/elevated_button.dart@ElevatedButton@#as': (m.Scope scope, target)=>()=>target as ElevatedButton,
'package:flutter/src/material/elevated_button.dart@ElevatedButton@#is': (m.Scope scope, target)=>()=>target is ElevatedButton,
'package:flutter/src/material/elevated_button.dart@ElevatedButton@': (m.Scope scope)=>({ autofocus,  child,  clipBehavior,  focusNode,  key,  onFocusChange,  onHover,  onLongPress,  onPressed,  statesController,  style}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return ElevatedButton(autofocus:autofocus ?? false, child:child, clipBehavior:clipBehavior ?? Clip.none, focusNode:focusNode, key:key, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, statesController:statesController, style:style);
},
'package:flutter/src/material/elevated_button.dart@ElevatedButton@icon': (m.Scope scope)=>({ autofocus,  clipBehavior,  focusNode,  icon,  key,  label,  onFocusChange,  onHover,  onLongPress,  onPressed,  statesController,  style}){
void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return ElevatedButton.icon(autofocus:autofocus, clipBehavior:clipBehavior, focusNode:focusNode, icon:icon, key:key, label:label, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, statesController:statesController, style:style);
},
'package:flutter/src/material/elevated_button.dart@ElevatedButton@styleFrom': (m.Scope scope)=>ElevatedButton.styleFrom,
'package:flutter/src/material/elevated_button.dart@ElevatedButton@defaultStyleOf': (m.Scope scope, ElevatedButton target)=>target.defaultStyleOf,
'package:flutter/src/material/elevated_button.dart@ElevatedButton@themeStyleOf': (m.Scope scope, ElevatedButton target)=>target.themeStyleOf,

};
}