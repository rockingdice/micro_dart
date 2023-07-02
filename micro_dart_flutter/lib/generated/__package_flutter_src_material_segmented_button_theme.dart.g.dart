import 'package:flutter/src/material/segmented_button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@#as': (m.Scope scope, target)=>()=>target as SegmentedButtonThemeData,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@#is': (m.Scope scope, target)=>()=>target is SegmentedButtonThemeData,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@style': (m.Scope scope, SegmentedButtonThemeData target)=>target.style,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@selectedIcon': (m.Scope scope, SegmentedButtonThemeData target)=>target.selectedIcon,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@hashCode': (m.Scope scope, SegmentedButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@': (m.Scope scope)=>({ selectedIcon,  style}){
return SegmentedButtonThemeData(selectedIcon:selectedIcon, style:style);
},
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@copyWith': (m.Scope scope, SegmentedButtonThemeData target)=>target.copyWith,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@lerp': (m.Scope scope)=>SegmentedButtonThemeData.lerp,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@==': (m.Scope scope, SegmentedButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonThemeData@debugFillProperties': (m.Scope scope, SegmentedButtonThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@#as': (m.Scope scope, target)=>()=>target as SegmentedButtonTheme,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@#is': (m.Scope scope, target)=>()=>target is SegmentedButtonTheme,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@data': (m.Scope scope, SegmentedButtonTheme target)=>target.data,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@': (m.Scope scope)=>({ child,  data,  key}){
return SegmentedButtonTheme(child:child, data:data, key:key);
},
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@of': (m.Scope scope)=>SegmentedButtonTheme.of,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@maybeOf': (m.Scope scope)=>SegmentedButtonTheme.maybeOf,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@wrap': (m.Scope scope, SegmentedButtonTheme target)=>target.wrap,
'package:flutter/src/material/segmented_button_theme.dart@SegmentedButtonTheme@updateShouldNotify': (m.Scope scope, SegmentedButtonTheme target)=>target.updateShouldNotify,

};
}