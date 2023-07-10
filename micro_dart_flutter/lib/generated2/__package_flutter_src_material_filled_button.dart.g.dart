import 'package:flutter/src/material/filled_button.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/button_style_button.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/filled_button_theme.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/filled_button.dart@FilledButton@#as': (m.Scope scope, target)=>()=>target as FilledButton,
'package:flutter/src/material/filled_button.dart@FilledButton@#is': (m.Scope scope, target)=>()=>target is FilledButton,
'package:flutter/src/material/filled_button.dart@FilledButton@': (m.Scope scope)=>({ autofocus,  child,  clipBehavior,  focusNode,  key,  onFocusChange,  onHover,  onLongPress,  onPressed,  statesController,  style}){
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

return FilledButton(autofocus:autofocus ?? false, child:child, clipBehavior:clipBehavior ?? Clip.none, focusNode:focusNode, key:key, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, statesController:statesController, style:style);
},
'package:flutter/src/material/filled_button.dart@FilledButton@icon': (m.Scope scope)=>({ autofocus,  clipBehavior,  focusNode,  icon,  key,  label,  onFocusChange,  onHover,  onLongPress,  onPressed,  statesController,  style}){
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

return FilledButton.icon(autofocus:autofocus, clipBehavior:clipBehavior, focusNode:focusNode, icon:icon, key:key, label:label, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, statesController:statesController, style:style);
},
'package:flutter/src/material/filled_button.dart@FilledButton@tonal': (m.Scope scope)=>({ autofocus,  child,  clipBehavior,  focusNode,  key,  onFocusChange,  onHover,  onLongPress,  onPressed,  statesController,  style}){
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

return FilledButton.tonal(autofocus:autofocus ?? false, child:child, clipBehavior:clipBehavior ?? Clip.none, focusNode:focusNode, key:key, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, statesController:statesController, style:style);
},
'package:flutter/src/material/filled_button.dart@FilledButton@tonalIcon': (m.Scope scope)=>({ autofocus,  clipBehavior,  focusNode,  icon,  key,  label,  onFocusChange,  onHover,  onLongPress,  onPressed,  statesController,  style}){
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

return FilledButton.tonalIcon(autofocus:autofocus, clipBehavior:clipBehavior, focusNode:focusNode, icon:icon, key:key, label:label, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onPressed:onPressedProxy, statesController:statesController, style:style);
},
'package:flutter/src/material/filled_button.dart@FilledButton@styleFrom': (m.Scope scope)=>FilledButton.styleFrom,
'package:flutter/src/material/filled_button.dart@FilledButton@defaultStyleOf': (m.Scope scope, FilledButton target)=>target.defaultStyleOf,
'package:flutter/src/material/filled_button.dart@FilledButton@themeStyleOf': (m.Scope scope, FilledButton target)=>target.themeStyleOf,

};
}