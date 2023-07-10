import 'package:flutter/src/material/slider.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/slider.dart@Slider@#as': (m.Scope scope, target)=>()=>target as Slider,
'package:flutter/src/material/slider.dart@Slider@#is': (m.Scope scope, target)=>()=>target is Slider,
'package:flutter/src/material/slider.dart@Slider@value': (m.Scope scope, Slider target)=>target.value,
'package:flutter/src/material/slider.dart@Slider@secondaryTrackValue': (m.Scope scope, Slider target)=>target.secondaryTrackValue,
'package:flutter/src/material/slider.dart@Slider@onChanged': (m.Scope scope, Slider target)=>target.onChanged,
'package:flutter/src/material/slider.dart@Slider@onChangeStart': (m.Scope scope, Slider target)=>target.onChangeStart,
'package:flutter/src/material/slider.dart@Slider@onChangeEnd': (m.Scope scope, Slider target)=>target.onChangeEnd,
'package:flutter/src/material/slider.dart@Slider@min': (m.Scope scope, Slider target)=>target.min,
'package:flutter/src/material/slider.dart@Slider@max': (m.Scope scope, Slider target)=>target.max,
'package:flutter/src/material/slider.dart@Slider@divisions': (m.Scope scope, Slider target)=>target.divisions,
'package:flutter/src/material/slider.dart@Slider@label': (m.Scope scope, Slider target)=>target.label,
'package:flutter/src/material/slider.dart@Slider@activeColor': (m.Scope scope, Slider target)=>target.activeColor,
'package:flutter/src/material/slider.dart@Slider@inactiveColor': (m.Scope scope, Slider target)=>target.inactiveColor,
'package:flutter/src/material/slider.dart@Slider@secondaryActiveColor': (m.Scope scope, Slider target)=>target.secondaryActiveColor,
'package:flutter/src/material/slider.dart@Slider@thumbColor': (m.Scope scope, Slider target)=>target.thumbColor,
'package:flutter/src/material/slider.dart@Slider@overlayColor': (m.Scope scope, Slider target)=>target.overlayColor,
'package:flutter/src/material/slider.dart@Slider@mouseCursor': (m.Scope scope, Slider target)=>target.mouseCursor,
'package:flutter/src/material/slider.dart@Slider@semanticFormatterCallback': (m.Scope scope, Slider target)=>target.semanticFormatterCallback,
'package:flutter/src/material/slider.dart@Slider@focusNode': (m.Scope scope, Slider target)=>target.focusNode,
'package:flutter/src/material/slider.dart@Slider@autofocus': (m.Scope scope, Slider target)=>target.autofocus,
'package:flutter/src/material/slider.dart@Slider@': (m.Scope scope)=>({ activeColor,  autofocus,  divisions,  focusNode,  inactiveColor,  key,  label,  max,  min,  mouseCursor,  onChangeEnd,  onChangeStart,  onChanged,  overlayColor,  secondaryActiveColor,  secondaryTrackValue,  semanticFormatterCallback,  thumbColor,  value}){
void onChangeEndProxy( value) {
 engine.callFunctionPointer(scope, onChangeEnd!,[value], {});
}

void onChangeStartProxy( value) {
 engine.callFunctionPointer(scope, onChangeStart!,[value], {});
}

void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

String semanticFormatterCallbackProxy( value) {
return  engine.callFunctionPointer(scope, semanticFormatterCallback!,[value], {});
}

return Slider(activeColor:activeColor, autofocus:autofocus ?? false, divisions:divisions, focusNode:focusNode, inactiveColor:inactiveColor, key:key, label:label, max:max ?? 1.0, min:min ?? 0.0, mouseCursor:mouseCursor, onChangeEnd:onChangeEnd == null ? null :onChangeEndProxy, onChangeStart:onChangeStart == null ? null :onChangeStartProxy, onChanged:onChangedProxy, overlayColor:overlayColor, secondaryActiveColor:secondaryActiveColor, secondaryTrackValue:secondaryTrackValue, semanticFormatterCallback:semanticFormatterCallback == null ? null :semanticFormatterCallbackProxy, thumbColor:thumbColor, value:value);
},
'package:flutter/src/material/slider.dart@Slider@adaptive': (m.Scope scope)=>({ activeColor,  autofocus,  divisions,  focusNode,  inactiveColor,  key,  label,  max,  min,  mouseCursor,  onChangeEnd,  onChangeStart,  onChanged,  overlayColor,  secondaryActiveColor,  secondaryTrackValue,  semanticFormatterCallback,  thumbColor,  value}){
void onChangeEndProxy( value) {
 engine.callFunctionPointer(scope, onChangeEnd!,[value], {});
}

void onChangeStartProxy( value) {
 engine.callFunctionPointer(scope, onChangeStart!,[value], {});
}

void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

String semanticFormatterCallbackProxy( value) {
return  engine.callFunctionPointer(scope, semanticFormatterCallback!,[value], {});
}

return Slider.adaptive(activeColor:activeColor, autofocus:autofocus ?? false, divisions:divisions, focusNode:focusNode, inactiveColor:inactiveColor, key:key, label:label, max:max ?? 1.0, min:min ?? 0.0, mouseCursor:mouseCursor, onChangeEnd:onChangeEnd == null ? null :onChangeEndProxy, onChangeStart:onChangeStart == null ? null :onChangeStartProxy, onChanged:onChangedProxy, overlayColor:overlayColor, secondaryActiveColor:secondaryActiveColor, secondaryTrackValue:secondaryTrackValue, semanticFormatterCallback:semanticFormatterCallback == null ? null :semanticFormatterCallbackProxy, thumbColor:thumbColor, value:value);
},
'package:flutter/src/material/slider.dart@Slider@createState': (m.Scope scope, Slider target)=>target.createState,
'package:flutter/src/material/slider.dart@Slider@debugFillProperties': (m.Scope scope, Slider target)=>target.debugFillProperties,

};
}