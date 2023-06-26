import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@#as': (m.Scope scope, target)=>()=>target as ToggleButtonsThemeData,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@#is': (m.Scope scope, target)=>()=>target is ToggleButtonsThemeData,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@textStyle': (m.Scope scope, ToggleButtonsThemeData target)=>target.textStyle,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@constraints': (m.Scope scope, ToggleButtonsThemeData target)=>target.constraints,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@color': (m.Scope scope, ToggleButtonsThemeData target)=>target.color,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@selectedColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.selectedColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@disabledColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.disabledColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@fillColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.fillColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@focusColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.focusColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@highlightColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.highlightColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@splashColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.splashColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@hoverColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.hoverColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@borderColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.borderColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@selectedBorderColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.selectedBorderColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@disabledBorderColor': (m.Scope scope, ToggleButtonsThemeData target)=>target.disabledBorderColor,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@borderWidth': (m.Scope scope, ToggleButtonsThemeData target)=>target.borderWidth,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@borderRadius': (m.Scope scope, ToggleButtonsThemeData target)=>target.borderRadius,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@hashCode': (m.Scope scope, ToggleButtonsThemeData target)=>target.hashCode,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@': (m.Scope scope)=>({ borderColor,  borderRadius,  borderWidth,  color,  constraints,  disabledBorderColor,  disabledColor,  fillColor,  focusColor,  highlightColor,  hoverColor,  selectedBorderColor,  selectedColor,  splashColor,  textStyle}){
return ToggleButtonsThemeData(borderColor:borderColor, borderRadius:borderRadius, borderWidth:borderWidth, color:color, constraints:constraints, disabledBorderColor:disabledBorderColor, disabledColor:disabledColor, fillColor:fillColor, focusColor:focusColor, highlightColor:highlightColor, hoverColor:hoverColor, selectedBorderColor:selectedBorderColor, selectedColor:selectedColor, splashColor:splashColor, textStyle:textStyle);
},
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@copyWith': (m.Scope scope, ToggleButtonsThemeData target)=>target.copyWith,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@lerp': (m.Scope scope)=>ToggleButtonsThemeData.lerp,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@==': (m.Scope scope, ToggleButtonsThemeData target)=>(other)=> target == other,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsThemeData@debugFillProperties': (m.Scope scope, ToggleButtonsThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@#as': (m.Scope scope, target)=>()=>target as ToggleButtonsTheme,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@#is': (m.Scope scope, target)=>()=>target is ToggleButtonsTheme,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@data': (m.Scope scope, ToggleButtonsTheme target)=>target.data,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@': (m.Scope scope)=>ToggleButtonsTheme,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@of': (m.Scope scope)=>ToggleButtonsTheme.of,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@wrap': (m.Scope scope, ToggleButtonsTheme target)=>target.wrap,
'package:flutter/src/material/toggle_buttons_theme.dart@ToggleButtonsTheme@updateShouldNotify': (m.Scope scope, ToggleButtonsTheme target)=>target.updateShouldNotify,

};
}