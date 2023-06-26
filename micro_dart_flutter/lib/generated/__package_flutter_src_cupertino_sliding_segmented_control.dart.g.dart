import 'package:flutter/src/cupertino/sliding_segmented_control.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@#as': (m.Scope scope, target)=>()=>target as CupertinoSlidingSegmentedControl,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@#is': (m.Scope scope, target)=>()=>target is CupertinoSlidingSegmentedControl,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@children': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.children,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@groupValue': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.groupValue,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@onValueChanged': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.onValueChanged,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@backgroundColor': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.backgroundColor,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@thumbColor': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.thumbColor,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@padding': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.padding,
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@': (m.Scope scope)=>({ backgroundColor,  children,  groupValue,  key,  onValueChanged,  padding,  thumbColor}){
void onValueChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onValueChanged!,[value], {});
}

return CupertinoSlidingSegmentedControl(backgroundColor:backgroundColor ?? CupertinoColors.tertiarySystemFill, children:children, groupValue:groupValue, key:key, onValueChanged:onValueChangedProxy, padding:padding ?? EdgeInsets.symmetric(vertical: 2, horizontal: 3), thumbColor:thumbColor ?? CupertinoDynamicColor.withBrightness(color: Color(0xFFFFFFFF),darkColor: Color(0xFF636366),));
},
'package:flutter/src/cupertino/sliding_segmented_control.dart@CupertinoSlidingSegmentedControl@createState': (m.Scope scope, CupertinoSlidingSegmentedControl target)=>target.createState,

};
}