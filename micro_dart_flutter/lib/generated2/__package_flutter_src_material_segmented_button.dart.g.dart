import 'package:flutter/src/material/segmented_button.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/segmented_button_theme.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/text_button_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/segmented_button.dart@ButtonSegment@#as': (m.Scope scope, target)=>()=>target as ButtonSegment,
'package:flutter/src/material/segmented_button.dart@ButtonSegment@#is': (m.Scope scope, target)=>()=>target is ButtonSegment,
'package:flutter/src/material/segmented_button.dart@ButtonSegment@value': (m.Scope scope, ButtonSegment target)=>target.value,
'package:flutter/src/material/segmented_button.dart@ButtonSegment@icon': (m.Scope scope, ButtonSegment target)=>target.icon,
'package:flutter/src/material/segmented_button.dart@ButtonSegment@label': (m.Scope scope, ButtonSegment target)=>target.label,
'package:flutter/src/material/segmented_button.dart@ButtonSegment@enabled': (m.Scope scope, ButtonSegment target)=>target.enabled,
'package:flutter/src/material/segmented_button.dart@ButtonSegment@': (m.Scope scope)=><T>({ enabled,  icon,  label,  value}){
return ButtonSegment(enabled:enabled ?? true, icon:icon, label:label, value:value);
},
'package:flutter/src/material/segmented_button.dart@SegmentedButton@#as': (m.Scope scope, target)=>()=>target as SegmentedButton,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@#is': (m.Scope scope, target)=>()=>target is SegmentedButton,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@segments': (m.Scope scope, SegmentedButton target)=>target.segments,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@selected': (m.Scope scope, SegmentedButton target)=>target.selected,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@onSelectionChanged': (m.Scope scope, SegmentedButton target)=>target.onSelectionChanged,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@multiSelectionEnabled': (m.Scope scope, SegmentedButton target)=>target.multiSelectionEnabled,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@emptySelectionAllowed': (m.Scope scope, SegmentedButton target)=>target.emptySelectionAllowed,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@style': (m.Scope scope, SegmentedButton target)=>target.style,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@showSelectedIcon': (m.Scope scope, SegmentedButton target)=>target.showSelectedIcon,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@selectedIcon': (m.Scope scope, SegmentedButton target)=>target.selectedIcon,
'package:flutter/src/material/segmented_button.dart@SegmentedButton@': (m.Scope scope)=>({ emptySelectionAllowed,  key,  multiSelectionEnabled,  onSelectionChanged,  segments,  selected,  selectedIcon,  showSelectedIcon,  style}){
void onSelectionChangedProxy( $p0) {
 engine.callFunctionPointer(scope, onSelectionChanged!,[$p0], {});
}

return SegmentedButton(emptySelectionAllowed:emptySelectionAllowed ?? false, key:key, multiSelectionEnabled:multiSelectionEnabled ?? false, onSelectionChanged:onSelectionChanged == null ? null :onSelectionChangedProxy, segments:segments, selected:selected, selectedIcon:selectedIcon, showSelectedIcon:showSelectedIcon ?? true, style:style);
},
'package:flutter/src/material/segmented_button.dart@SegmentedButton@build': (m.Scope scope, SegmentedButton target)=>target.build,

};
}