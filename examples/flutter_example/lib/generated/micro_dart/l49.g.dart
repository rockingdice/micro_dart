import 'package:flutter/src/material/button_bar_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@#as': (m.Scope scope, target)=>()=>target as ButtonBarThemeData,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@#is': (m.Scope scope, target)=>()=>target is ButtonBarThemeData,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@alignment': (m.Scope scope, ButtonBarThemeData target)=>target.alignment,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@mainAxisSize': (m.Scope scope, ButtonBarThemeData target)=>target.mainAxisSize,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@buttonTextTheme': (m.Scope scope, ButtonBarThemeData target)=>target.buttonTextTheme,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@buttonMinWidth': (m.Scope scope, ButtonBarThemeData target)=>target.buttonMinWidth,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@buttonHeight': (m.Scope scope, ButtonBarThemeData target)=>target.buttonHeight,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@buttonPadding': (m.Scope scope, ButtonBarThemeData target)=>target.buttonPadding,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@buttonAlignedDropdown': (m.Scope scope, ButtonBarThemeData target)=>target.buttonAlignedDropdown,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@layoutBehavior': (m.Scope scope, ButtonBarThemeData target)=>target.layoutBehavior,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@overflowDirection': (m.Scope scope, ButtonBarThemeData target)=>target.overflowDirection,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@hashCode': (m.Scope scope, ButtonBarThemeData target)=>target.hashCode,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@': (m.Scope scope)=>({ alignment,  buttonAlignedDropdown,  buttonHeight,  buttonMinWidth,  buttonPadding,  buttonTextTheme,  layoutBehavior,  mainAxisSize,  overflowDirection}){
return ButtonBarThemeData(alignment:alignment, buttonAlignedDropdown:buttonAlignedDropdown, buttonHeight:buttonHeight, buttonMinWidth:buttonMinWidth, buttonPadding:buttonPadding, buttonTextTheme:buttonTextTheme, layoutBehavior:layoutBehavior, mainAxisSize:mainAxisSize, overflowDirection:overflowDirection);
},
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@copyWith': (m.Scope scope, ButtonBarThemeData target)=>target.copyWith,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@lerp': (m.Scope scope)=>ButtonBarThemeData.lerp,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@==': (m.Scope scope, ButtonBarThemeData target)=>(other)=> target == other,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarThemeData@debugFillProperties': (m.Scope scope, ButtonBarThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarTheme@#as': (m.Scope scope, target)=>()=>target as ButtonBarTheme,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarTheme@#is': (m.Scope scope, target)=>()=>target is ButtonBarTheme,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarTheme@data': (m.Scope scope, ButtonBarTheme target)=>target.data,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarTheme@': (m.Scope scope)=>ButtonBarTheme,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarTheme@of': (m.Scope scope)=>ButtonBarTheme.of,
'package:flutter/src/material/button_bar_theme.dart@ButtonBarTheme@updateShouldNotify': (m.Scope scope, ButtonBarTheme target)=>target.updateShouldNotify,

};
}