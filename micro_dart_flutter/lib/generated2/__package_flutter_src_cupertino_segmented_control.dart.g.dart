import 'package:flutter/src/cupertino/segmented_control.dart';
import 'dart:collection';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@#as': (m.Scope scope, target)=>()=>target as CupertinoSegmentedControl,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@#is': (m.Scope scope, target)=>()=>target is CupertinoSegmentedControl,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@children': (m.Scope scope, CupertinoSegmentedControl target)=>target.children,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@groupValue': (m.Scope scope, CupertinoSegmentedControl target)=>target.groupValue,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@onValueChanged': (m.Scope scope, CupertinoSegmentedControl target)=>target.onValueChanged,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@unselectedColor': (m.Scope scope, CupertinoSegmentedControl target)=>target.unselectedColor,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@selectedColor': (m.Scope scope, CupertinoSegmentedControl target)=>target.selectedColor,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@borderColor': (m.Scope scope, CupertinoSegmentedControl target)=>target.borderColor,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@pressedColor': (m.Scope scope, CupertinoSegmentedControl target)=>target.pressedColor,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@padding': (m.Scope scope, CupertinoSegmentedControl target)=>target.padding,
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@': (m.Scope scope)=>({ borderColor,  children,  groupValue,  key,  onValueChanged,  padding,  pressedColor,  selectedColor,  unselectedColor}){
void onValueChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onValueChanged!,[value], {});
}

return CupertinoSegmentedControl(borderColor:borderColor, children:children, groupValue:groupValue, key:key, onValueChanged:onValueChangedProxy, padding:padding, pressedColor:pressedColor, selectedColor:selectedColor, unselectedColor:unselectedColor);
},
'package:flutter/src/cupertino/segmented_control.dart@CupertinoSegmentedControl@createState': (m.Scope scope, CupertinoSegmentedControl target)=>target.createState,

};
}