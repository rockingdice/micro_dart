import 'package:flutter/src/material/progress_indicator_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@#as': (m.Scope scope, target)=>()=>target as ProgressIndicatorThemeData,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@#is': (m.Scope scope, target)=>()=>target is ProgressIndicatorThemeData,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@color': (m.Scope scope, ProgressIndicatorThemeData target)=>target.color,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@linearTrackColor': (m.Scope scope, ProgressIndicatorThemeData target)=>target.linearTrackColor,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@linearMinHeight': (m.Scope scope, ProgressIndicatorThemeData target)=>target.linearMinHeight,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@circularTrackColor': (m.Scope scope, ProgressIndicatorThemeData target)=>target.circularTrackColor,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@refreshBackgroundColor': (m.Scope scope, ProgressIndicatorThemeData target)=>target.refreshBackgroundColor,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@hashCode': (m.Scope scope, ProgressIndicatorThemeData target)=>target.hashCode,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@': (m.Scope scope)=>({ circularTrackColor,  color,  linearMinHeight,  linearTrackColor,  refreshBackgroundColor}){
return ProgressIndicatorThemeData(circularTrackColor:circularTrackColor, color:color, linearMinHeight:linearMinHeight, linearTrackColor:linearTrackColor, refreshBackgroundColor:refreshBackgroundColor);
},
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@copyWith': (m.Scope scope, ProgressIndicatorThemeData target)=>target.copyWith,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@lerp': (m.Scope scope)=>ProgressIndicatorThemeData.lerp,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@==': (m.Scope scope, ProgressIndicatorThemeData target)=>(other)=> target == other,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorThemeData@debugFillProperties': (m.Scope scope, ProgressIndicatorThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@#as': (m.Scope scope, target)=>()=>target as ProgressIndicatorTheme,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@#is': (m.Scope scope, target)=>()=>target is ProgressIndicatorTheme,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@data': (m.Scope scope, ProgressIndicatorTheme target)=>target.data,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@': (m.Scope scope)=>ProgressIndicatorTheme,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@of': (m.Scope scope)=>ProgressIndicatorTheme.of,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@wrap': (m.Scope scope, ProgressIndicatorTheme target)=>target.wrap,
'package:flutter/src/material/progress_indicator_theme.dart@ProgressIndicatorTheme@updateShouldNotify': (m.Scope scope, ProgressIndicatorTheme target)=>target.updateShouldNotify,

};
}