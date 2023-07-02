import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart' show MaterialTapTargetSize;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/button_theme.dart@ButtonTheme@#as': (m.Scope scope, target)=>()=>target as ButtonTheme,
'package:flutter/src/material/button_theme.dart@ButtonTheme@#is': (m.Scope scope, target)=>()=>target is ButtonTheme,
'package:flutter/src/material/button_theme.dart@ButtonTheme@data': (m.Scope scope, ButtonTheme target)=>target.data,
'package:flutter/src/material/button_theme.dart@ButtonTheme@': (m.Scope scope)=>({ alignedDropdown,  buttonColor,  child,  colorScheme,  disabledColor,  focusColor,  height,  highlightColor,  hoverColor,  key,  layoutBehavior,  materialTapTargetSize,  minWidth,  padding,  shape,  splashColor,  textTheme}){
return ButtonTheme(alignedDropdown:alignedDropdown ?? false, buttonColor:buttonColor, child:child, colorScheme:colorScheme, disabledColor:disabledColor, focusColor:focusColor, height:height ?? 36.0, highlightColor:highlightColor, hoverColor:hoverColor, key:key, layoutBehavior:layoutBehavior ?? ButtonBarLayoutBehavior.padded, materialTapTargetSize:materialTapTargetSize, minWidth:minWidth ?? 88.0, padding:padding, shape:shape, splashColor:splashColor, textTheme:textTheme ?? ButtonTextTheme.normal);
},
'package:flutter/src/material/button_theme.dart@ButtonTheme@fromButtonThemeData': (m.Scope scope)=>ButtonTheme.fromButtonThemeData,
'package:flutter/src/material/button_theme.dart@ButtonTheme@of': (m.Scope scope)=>ButtonTheme.of,
'package:flutter/src/material/button_theme.dart@ButtonTheme@wrap': (m.Scope scope, ButtonTheme target)=>target.wrap,
'package:flutter/src/material/button_theme.dart@ButtonTheme@updateShouldNotify': (m.Scope scope, ButtonTheme target)=>target.updateShouldNotify,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@#as': (m.Scope scope, target)=>()=>target as ButtonThemeData,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@#is': (m.Scope scope, target)=>()=>target is ButtonThemeData,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@minWidth': (m.Scope scope, ButtonThemeData target)=>target.minWidth,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@height': (m.Scope scope, ButtonThemeData target)=>target.height,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@textTheme': (m.Scope scope, ButtonThemeData target)=>target.textTheme,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@layoutBehavior': (m.Scope scope, ButtonThemeData target)=>target.layoutBehavior,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@alignedDropdown': (m.Scope scope, ButtonThemeData target)=>target.alignedDropdown,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@colorScheme': (m.Scope scope, ButtonThemeData target)=>target.colorScheme,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@constraints': (m.Scope scope, ButtonThemeData target)=>target.constraints,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@padding': (m.Scope scope, ButtonThemeData target)=>target.padding,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@shape': (m.Scope scope, ButtonThemeData target)=>target.shape,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@hashCode': (m.Scope scope, ButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@': (m.Scope scope)=>({ alignedDropdown,  buttonColor,  colorScheme,  disabledColor,  focusColor,  height,  highlightColor,  hoverColor,  layoutBehavior,  materialTapTargetSize,  minWidth,  padding,  shape,  splashColor,  textTheme}){
return ButtonThemeData(alignedDropdown:alignedDropdown ?? false, buttonColor:buttonColor, colorScheme:colorScheme, disabledColor:disabledColor, focusColor:focusColor, height:height ?? 36.0, highlightColor:highlightColor, hoverColor:hoverColor, layoutBehavior:layoutBehavior ?? ButtonBarLayoutBehavior.padded, materialTapTargetSize:materialTapTargetSize, minWidth:minWidth ?? 88.0, padding:padding, shape:shape, splashColor:splashColor, textTheme:textTheme ?? ButtonTextTheme.normal);
},
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getBrightness': (m.Scope scope, ButtonThemeData target)=>target.getBrightness,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getTextTheme': (m.Scope scope, ButtonThemeData target)=>target.getTextTheme,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getDisabledTextColor': (m.Scope scope, ButtonThemeData target)=>target.getDisabledTextColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getDisabledFillColor': (m.Scope scope, ButtonThemeData target)=>target.getDisabledFillColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getFillColor': (m.Scope scope, ButtonThemeData target)=>target.getFillColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getTextColor': (m.Scope scope, ButtonThemeData target)=>target.getTextColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getSplashColor': (m.Scope scope, ButtonThemeData target)=>target.getSplashColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getFocusColor': (m.Scope scope, ButtonThemeData target)=>target.getFocusColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getHoverColor': (m.Scope scope, ButtonThemeData target)=>target.getHoverColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getHighlightColor': (m.Scope scope, ButtonThemeData target)=>target.getHighlightColor,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getElevation': (m.Scope scope, ButtonThemeData target)=>target.getElevation,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getFocusElevation': (m.Scope scope, ButtonThemeData target)=>target.getFocusElevation,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getHoverElevation': (m.Scope scope, ButtonThemeData target)=>target.getHoverElevation,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getHighlightElevation': (m.Scope scope, ButtonThemeData target)=>target.getHighlightElevation,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getDisabledElevation': (m.Scope scope, ButtonThemeData target)=>target.getDisabledElevation,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getPadding': (m.Scope scope, ButtonThemeData target)=>target.getPadding,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getShape': (m.Scope scope, ButtonThemeData target)=>target.getShape,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getAnimationDuration': (m.Scope scope, ButtonThemeData target)=>target.getAnimationDuration,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getConstraints': (m.Scope scope, ButtonThemeData target)=>target.getConstraints,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@getMaterialTapTargetSize': (m.Scope scope, ButtonThemeData target)=>target.getMaterialTapTargetSize,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@copyWith': (m.Scope scope, ButtonThemeData target)=>target.copyWith,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@==': (m.Scope scope, ButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/button_theme.dart@ButtonThemeData@debugFillProperties': (m.Scope scope, ButtonThemeData target)=>target.debugFillProperties,

};
}