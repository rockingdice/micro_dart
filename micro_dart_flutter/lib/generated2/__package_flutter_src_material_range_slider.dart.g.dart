import 'package:flutter/src/material/range_slider.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/range_slider.dart@RangeSlider@#as': (m.Scope scope, target)=>()=>target as RangeSlider,
'package:flutter/src/material/range_slider.dart@RangeSlider@#is': (m.Scope scope, target)=>()=>target is RangeSlider,
'package:flutter/src/material/range_slider.dart@RangeSlider@values': (m.Scope scope, RangeSlider target)=>target.values,
'package:flutter/src/material/range_slider.dart@RangeSlider@onChanged': (m.Scope scope, RangeSlider target)=>target.onChanged,
'package:flutter/src/material/range_slider.dart@RangeSlider@onChangeStart': (m.Scope scope, RangeSlider target)=>target.onChangeStart,
'package:flutter/src/material/range_slider.dart@RangeSlider@onChangeEnd': (m.Scope scope, RangeSlider target)=>target.onChangeEnd,
'package:flutter/src/material/range_slider.dart@RangeSlider@min': (m.Scope scope, RangeSlider target)=>target.min,
'package:flutter/src/material/range_slider.dart@RangeSlider@max': (m.Scope scope, RangeSlider target)=>target.max,
'package:flutter/src/material/range_slider.dart@RangeSlider@divisions': (m.Scope scope, RangeSlider target)=>target.divisions,
'package:flutter/src/material/range_slider.dart@RangeSlider@labels': (m.Scope scope, RangeSlider target)=>target.labels,
'package:flutter/src/material/range_slider.dart@RangeSlider@activeColor': (m.Scope scope, RangeSlider target)=>target.activeColor,
'package:flutter/src/material/range_slider.dart@RangeSlider@inactiveColor': (m.Scope scope, RangeSlider target)=>target.inactiveColor,
'package:flutter/src/material/range_slider.dart@RangeSlider@overlayColor': (m.Scope scope, RangeSlider target)=>target.overlayColor,
'package:flutter/src/material/range_slider.dart@RangeSlider@mouseCursor': (m.Scope scope, RangeSlider target)=>target.mouseCursor,
'package:flutter/src/material/range_slider.dart@RangeSlider@semanticFormatterCallback': (m.Scope scope, RangeSlider target)=>target.semanticFormatterCallback,
'package:flutter/src/material/range_slider.dart@RangeSlider@': (m.Scope scope)=>({ activeColor,  divisions,  inactiveColor,  key,  labels,  max,  min,  mouseCursor,  onChangeEnd,  onChangeStart,  onChanged,  overlayColor,  semanticFormatterCallback,  values}){
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

return RangeSlider(activeColor:activeColor, divisions:divisions, inactiveColor:inactiveColor, key:key, labels:labels, max:max ?? 1.0, min:min ?? 0.0, mouseCursor:mouseCursor, onChangeEnd:onChangeEnd == null ? null :onChangeEndProxy, onChangeStart:onChangeStart == null ? null :onChangeStartProxy, onChanged:onChangedProxy, overlayColor:overlayColor, semanticFormatterCallback:semanticFormatterCallback == null ? null :semanticFormatterCallbackProxy, values:values);
},
'package:flutter/src/material/range_slider.dart@RangeSlider@createState': (m.Scope scope, RangeSlider target)=>target.createState,
'package:flutter/src/material/range_slider.dart@RangeSlider@debugFillProperties': (m.Scope scope, RangeSlider target)=>target.debugFillProperties,

};
}