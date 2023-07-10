import 'package:flutter/src/cupertino/slider.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@#as': (m.Scope scope, target)=>()=>target as CupertinoSlider,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@#is': (m.Scope scope, target)=>()=>target is CupertinoSlider,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@value': (m.Scope scope, CupertinoSlider target)=>target.value,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@onChanged': (m.Scope scope, CupertinoSlider target)=>target.onChanged,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@onChangeStart': (m.Scope scope, CupertinoSlider target)=>target.onChangeStart,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@onChangeEnd': (m.Scope scope, CupertinoSlider target)=>target.onChangeEnd,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@min': (m.Scope scope, CupertinoSlider target)=>target.min,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@max': (m.Scope scope, CupertinoSlider target)=>target.max,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@divisions': (m.Scope scope, CupertinoSlider target)=>target.divisions,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@activeColor': (m.Scope scope, CupertinoSlider target)=>target.activeColor,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@thumbColor': (m.Scope scope, CupertinoSlider target)=>target.thumbColor,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@': (m.Scope scope)=>({ activeColor,  divisions,  key,  max,  min,  onChangeEnd,  onChangeStart,  onChanged,  thumbColor,  value}){
void onChangeEndProxy( value) {
 engine.callFunctionPointer(scope, onChangeEnd!,[value], {});
}

void onChangeStartProxy( value) {
 engine.callFunctionPointer(scope, onChangeStart!,[value], {});
}

void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return CupertinoSlider(activeColor:activeColor, divisions:divisions, key:key, max:max ?? 1.0, min:min ?? 0.0, onChangeEnd:onChangeEnd == null ? null :onChangeEndProxy, onChangeStart:onChangeStart == null ? null :onChangeStartProxy, onChanged:onChangedProxy, thumbColor:thumbColor ?? CupertinoColors.white, value:value);
},
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@createState': (m.Scope scope, CupertinoSlider target)=>target.createState,
'package:flutter/src/cupertino/slider.dart@CupertinoSlider@debugFillProperties': (m.Scope scope, CupertinoSlider target)=>target.debugFillProperties,

};
}