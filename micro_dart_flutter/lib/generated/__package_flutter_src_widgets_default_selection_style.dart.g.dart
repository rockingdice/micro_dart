import 'package:flutter/src/widgets/default_selection_style.dart';
import 'dart:ui';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@#as': (m.Scope scope, target)=>()=>target as DefaultSelectionStyle,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@#is': (m.Scope scope, target)=>()=>target is DefaultSelectionStyle,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@defaultColor': (m.Scope scope)=>DefaultSelectionStyle.defaultColor,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@cursorColor': (m.Scope scope, DefaultSelectionStyle target)=>target.cursorColor,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@selectionColor': (m.Scope scope, DefaultSelectionStyle target)=>target.selectionColor,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@': (m.Scope scope)=>({ child,  cursorColor,  key,  selectionColor}){
return DefaultSelectionStyle(child:child, cursorColor:cursorColor, key:key, selectionColor:selectionColor);
},
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@fallback': (m.Scope scope)=>DefaultSelectionStyle.fallback,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@of': (m.Scope scope)=>DefaultSelectionStyle.of,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@wrap': (m.Scope scope, DefaultSelectionStyle target)=>target.wrap,
'package:flutter/src/widgets/default_selection_style.dart@DefaultSelectionStyle@updateShouldNotify': (m.Scope scope, DefaultSelectionStyle target)=>target.updateShouldNotify,

};
}