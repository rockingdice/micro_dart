import 'package:flutter/src/material/input_decorator.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@#as': (m.Scope scope, target)=>()=>target as FloatingLabelAlignment,
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@#is': (m.Scope scope, target)=>()=>target is FloatingLabelAlignment,
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@start': (m.Scope scope)=>FloatingLabelAlignment.start,
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@center': (m.Scope scope)=>FloatingLabelAlignment.center,
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@hashCode': (m.Scope scope, FloatingLabelAlignment target)=>target.hashCode,
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@==': (m.Scope scope, FloatingLabelAlignment target)=>(other)=> target == other,
'package:flutter/src/material/input_decorator.dart@FloatingLabelAlignment@toString': (m.Scope scope, FloatingLabelAlignment target)=>target.toString,
'package:flutter/src/material/input_decorator.dart@InputDecorator@#as': (m.Scope scope, target)=>()=>target as InputDecorator,
'package:flutter/src/material/input_decorator.dart@InputDecorator@#is': (m.Scope scope, target)=>()=>target is InputDecorator,
'package:flutter/src/material/input_decorator.dart@InputDecorator@decoration': (m.Scope scope, InputDecorator target)=>target.decoration,
'package:flutter/src/material/input_decorator.dart@InputDecorator@baseStyle': (m.Scope scope, InputDecorator target)=>target.baseStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorator@textAlign': (m.Scope scope, InputDecorator target)=>target.textAlign,
'package:flutter/src/material/input_decorator.dart@InputDecorator@textAlignVertical': (m.Scope scope, InputDecorator target)=>target.textAlignVertical,
'package:flutter/src/material/input_decorator.dart@InputDecorator@isFocused': (m.Scope scope, InputDecorator target)=>target.isFocused,
'package:flutter/src/material/input_decorator.dart@InputDecorator@isHovering': (m.Scope scope, InputDecorator target)=>target.isHovering,
'package:flutter/src/material/input_decorator.dart@InputDecorator@expands': (m.Scope scope, InputDecorator target)=>target.expands,
'package:flutter/src/material/input_decorator.dart@InputDecorator@isEmpty': (m.Scope scope, InputDecorator target)=>target.isEmpty,
'package:flutter/src/material/input_decorator.dart@InputDecorator@child': (m.Scope scope, InputDecorator target)=>target.child,
'package:flutter/src/material/input_decorator.dart@InputDecorator@': (m.Scope scope)=>({ baseStyle,  child,  decoration,  expands,  isEmpty,  isFocused,  isHovering,  key,  textAlign,  textAlignVertical}){
return InputDecorator(baseStyle:baseStyle, child:child, decoration:decoration, expands:expands ?? false, isEmpty:isEmpty ?? false, isFocused:isFocused ?? false, isHovering:isHovering ?? false, key:key, textAlign:textAlign, textAlignVertical:textAlignVertical);
},
'package:flutter/src/material/input_decorator.dart@InputDecorator@createState': (m.Scope scope, InputDecorator target)=>target.createState,
'package:flutter/src/material/input_decorator.dart@InputDecorator@containerOf': (m.Scope scope)=>InputDecorator.containerOf,
'package:flutter/src/material/input_decorator.dart@InputDecorator@debugFillProperties': (m.Scope scope, InputDecorator target)=>target.debugFillProperties,
'package:flutter/src/material/input_decorator.dart@InputDecoration@#as': (m.Scope scope, target)=>()=>target as InputDecoration,
'package:flutter/src/material/input_decorator.dart@InputDecoration@#is': (m.Scope scope, target)=>()=>target is InputDecoration,
'package:flutter/src/material/input_decorator.dart@InputDecoration@icon': (m.Scope scope, InputDecoration target)=>target.icon,
'package:flutter/src/material/input_decorator.dart@InputDecoration@iconColor': (m.Scope scope, InputDecoration target)=>target.iconColor,
'package:flutter/src/material/input_decorator.dart@InputDecoration@label': (m.Scope scope, InputDecoration target)=>target.label,
'package:flutter/src/material/input_decorator.dart@InputDecoration@labelText': (m.Scope scope, InputDecoration target)=>target.labelText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@labelStyle': (m.Scope scope, InputDecoration target)=>target.labelStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@floatingLabelStyle': (m.Scope scope, InputDecoration target)=>target.floatingLabelStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@helperText': (m.Scope scope, InputDecoration target)=>target.helperText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@helperStyle': (m.Scope scope, InputDecoration target)=>target.helperStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@helperMaxLines': (m.Scope scope, InputDecoration target)=>target.helperMaxLines,
'package:flutter/src/material/input_decorator.dart@InputDecoration@hintText': (m.Scope scope, InputDecoration target)=>target.hintText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@hintStyle': (m.Scope scope, InputDecoration target)=>target.hintStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@hintTextDirection': (m.Scope scope, InputDecoration target)=>target.hintTextDirection,
'package:flutter/src/material/input_decorator.dart@InputDecoration@hintMaxLines': (m.Scope scope, InputDecoration target)=>target.hintMaxLines,
'package:flutter/src/material/input_decorator.dart@InputDecoration@errorText': (m.Scope scope, InputDecoration target)=>target.errorText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@errorStyle': (m.Scope scope, InputDecoration target)=>target.errorStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@errorMaxLines': (m.Scope scope, InputDecoration target)=>target.errorMaxLines,
'package:flutter/src/material/input_decorator.dart@InputDecoration@floatingLabelBehavior': (m.Scope scope, InputDecoration target)=>target.floatingLabelBehavior,
'package:flutter/src/material/input_decorator.dart@InputDecoration@floatingLabelAlignment': (m.Scope scope, InputDecoration target)=>target.floatingLabelAlignment,
'package:flutter/src/material/input_decorator.dart@InputDecoration@isDense': (m.Scope scope, InputDecoration target)=>target.isDense,
'package:flutter/src/material/input_decorator.dart@InputDecoration@contentPadding': (m.Scope scope, InputDecoration target)=>target.contentPadding,
'package:flutter/src/material/input_decorator.dart@InputDecoration@isCollapsed': (m.Scope scope, InputDecoration target)=>target.isCollapsed,
'package:flutter/src/material/input_decorator.dart@InputDecoration@prefixIcon': (m.Scope scope, InputDecoration target)=>target.prefixIcon,
'package:flutter/src/material/input_decorator.dart@InputDecoration@prefixIconConstraints': (m.Scope scope, InputDecoration target)=>target.prefixIconConstraints,
'package:flutter/src/material/input_decorator.dart@InputDecoration@prefix': (m.Scope scope, InputDecoration target)=>target.prefix,
'package:flutter/src/material/input_decorator.dart@InputDecoration@prefixText': (m.Scope scope, InputDecoration target)=>target.prefixText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@prefixStyle': (m.Scope scope, InputDecoration target)=>target.prefixStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@prefixIconColor': (m.Scope scope, InputDecoration target)=>target.prefixIconColor,
'package:flutter/src/material/input_decorator.dart@InputDecoration@suffixIcon': (m.Scope scope, InputDecoration target)=>target.suffixIcon,
'package:flutter/src/material/input_decorator.dart@InputDecoration@suffix': (m.Scope scope, InputDecoration target)=>target.suffix,
'package:flutter/src/material/input_decorator.dart@InputDecoration@suffixText': (m.Scope scope, InputDecoration target)=>target.suffixText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@suffixStyle': (m.Scope scope, InputDecoration target)=>target.suffixStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@suffixIconColor': (m.Scope scope, InputDecoration target)=>target.suffixIconColor,
'package:flutter/src/material/input_decorator.dart@InputDecoration@suffixIconConstraints': (m.Scope scope, InputDecoration target)=>target.suffixIconConstraints,
'package:flutter/src/material/input_decorator.dart@InputDecoration@counterText': (m.Scope scope, InputDecoration target)=>target.counterText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@counter': (m.Scope scope, InputDecoration target)=>target.counter,
'package:flutter/src/material/input_decorator.dart@InputDecoration@counterStyle': (m.Scope scope, InputDecoration target)=>target.counterStyle,
'package:flutter/src/material/input_decorator.dart@InputDecoration@filled': (m.Scope scope, InputDecoration target)=>target.filled,
'package:flutter/src/material/input_decorator.dart@InputDecoration@fillColor': (m.Scope scope, InputDecoration target)=>target.fillColor,
'package:flutter/src/material/input_decorator.dart@InputDecoration@focusColor': (m.Scope scope, InputDecoration target)=>target.focusColor,
'package:flutter/src/material/input_decorator.dart@InputDecoration@hoverColor': (m.Scope scope, InputDecoration target)=>target.hoverColor,
'package:flutter/src/material/input_decorator.dart@InputDecoration@errorBorder': (m.Scope scope, InputDecoration target)=>target.errorBorder,
'package:flutter/src/material/input_decorator.dart@InputDecoration@focusedBorder': (m.Scope scope, InputDecoration target)=>target.focusedBorder,
'package:flutter/src/material/input_decorator.dart@InputDecoration@focusedErrorBorder': (m.Scope scope, InputDecoration target)=>target.focusedErrorBorder,
'package:flutter/src/material/input_decorator.dart@InputDecoration@disabledBorder': (m.Scope scope, InputDecoration target)=>target.disabledBorder,
'package:flutter/src/material/input_decorator.dart@InputDecoration@enabledBorder': (m.Scope scope, InputDecoration target)=>target.enabledBorder,
'package:flutter/src/material/input_decorator.dart@InputDecoration@border': (m.Scope scope, InputDecoration target)=>target.border,
'package:flutter/src/material/input_decorator.dart@InputDecoration@enabled': (m.Scope scope, InputDecoration target)=>target.enabled,
'package:flutter/src/material/input_decorator.dart@InputDecoration@semanticCounterText': (m.Scope scope, InputDecoration target)=>target.semanticCounterText,
'package:flutter/src/material/input_decorator.dart@InputDecoration@alignLabelWithHint': (m.Scope scope, InputDecoration target)=>target.alignLabelWithHint,
'package:flutter/src/material/input_decorator.dart@InputDecoration@constraints': (m.Scope scope, InputDecoration target)=>target.constraints,
'package:flutter/src/material/input_decorator.dart@InputDecoration@hashCode': (m.Scope scope, InputDecoration target)=>target.hashCode,
'package:flutter/src/material/input_decorator.dart@InputDecoration@': (m.Scope scope)=>({ alignLabelWithHint,  border,  constraints,  contentPadding,  counter,  counterStyle,  counterText,  disabledBorder,  enabled,  enabledBorder,  errorBorder,  errorMaxLines,  errorStyle,  errorText,  fillColor,  filled,  floatingLabelAlignment,  floatingLabelBehavior,  floatingLabelStyle,  focusColor,  focusedBorder,  focusedErrorBorder,  helperMaxLines,  helperStyle,  helperText,  hintMaxLines,  hintStyle,  hintText,  hintTextDirection,  hoverColor,  icon,  iconColor,  isCollapsed,  isDense,  label,  labelStyle,  labelText,  prefix,  prefixIcon,  prefixIconColor,  prefixIconConstraints,  prefixStyle,  prefixText,  semanticCounterText,  suffix,  suffixIcon,  suffixIconColor,  suffixIconConstraints,  suffixStyle,  suffixText}){
return InputDecoration(alignLabelWithHint:alignLabelWithHint, border:border, constraints:constraints, contentPadding:contentPadding, counter:counter, counterStyle:counterStyle, counterText:counterText, disabledBorder:disabledBorder, enabled:enabled ?? true, enabledBorder:enabledBorder, errorBorder:errorBorder, errorMaxLines:errorMaxLines, errorStyle:errorStyle, errorText:errorText, fillColor:fillColor, filled:filled, floatingLabelAlignment:floatingLabelAlignment, floatingLabelBehavior:floatingLabelBehavior, floatingLabelStyle:floatingLabelStyle, focusColor:focusColor, focusedBorder:focusedBorder, focusedErrorBorder:focusedErrorBorder, helperMaxLines:helperMaxLines, helperStyle:helperStyle, helperText:helperText, hintMaxLines:hintMaxLines, hintStyle:hintStyle, hintText:hintText, hintTextDirection:hintTextDirection, hoverColor:hoverColor, icon:icon, iconColor:iconColor, isCollapsed:isCollapsed ?? false, isDense:isDense, label:label, labelStyle:labelStyle, labelText:labelText, prefix:prefix, prefixIcon:prefixIcon, prefixIconColor:prefixIconColor, prefixIconConstraints:prefixIconConstraints, prefixStyle:prefixStyle, prefixText:prefixText, semanticCounterText:semanticCounterText, suffix:suffix, suffixIcon:suffixIcon, suffixIconColor:suffixIconColor, suffixIconConstraints:suffixIconConstraints, suffixStyle:suffixStyle, suffixText:suffixText);
},
'package:flutter/src/material/input_decorator.dart@InputDecoration@collapsed': (m.Scope scope)=>InputDecoration.collapsed,
'package:flutter/src/material/input_decorator.dart@InputDecoration@copyWith': (m.Scope scope, InputDecoration target)=>target.copyWith,
'package:flutter/src/material/input_decorator.dart@InputDecoration@applyDefaults': (m.Scope scope, InputDecoration target)=>target.applyDefaults,
'package:flutter/src/material/input_decorator.dart@InputDecoration@==': (m.Scope scope, InputDecoration target)=>(other)=> target == other,
'package:flutter/src/material/input_decorator.dart@InputDecoration@toString': (m.Scope scope, InputDecoration target)=>target.toString,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@#as': (m.Scope scope, target)=>()=>target as InputDecorationTheme,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@#is': (m.Scope scope, target)=>()=>target is InputDecorationTheme,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@labelStyle': (m.Scope scope, InputDecorationTheme target)=>target.labelStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@floatingLabelStyle': (m.Scope scope, InputDecorationTheme target)=>target.floatingLabelStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@helperStyle': (m.Scope scope, InputDecorationTheme target)=>target.helperStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@helperMaxLines': (m.Scope scope, InputDecorationTheme target)=>target.helperMaxLines,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@hintStyle': (m.Scope scope, InputDecorationTheme target)=>target.hintStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@errorStyle': (m.Scope scope, InputDecorationTheme target)=>target.errorStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@errorMaxLines': (m.Scope scope, InputDecorationTheme target)=>target.errorMaxLines,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@floatingLabelBehavior': (m.Scope scope, InputDecorationTheme target)=>target.floatingLabelBehavior,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@floatingLabelAlignment': (m.Scope scope, InputDecorationTheme target)=>target.floatingLabelAlignment,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@isDense': (m.Scope scope, InputDecorationTheme target)=>target.isDense,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@contentPadding': (m.Scope scope, InputDecorationTheme target)=>target.contentPadding,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@isCollapsed': (m.Scope scope, InputDecorationTheme target)=>target.isCollapsed,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@iconColor': (m.Scope scope, InputDecorationTheme target)=>target.iconColor,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@prefixStyle': (m.Scope scope, InputDecorationTheme target)=>target.prefixStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@prefixIconColor': (m.Scope scope, InputDecorationTheme target)=>target.prefixIconColor,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@suffixStyle': (m.Scope scope, InputDecorationTheme target)=>target.suffixStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@suffixIconColor': (m.Scope scope, InputDecorationTheme target)=>target.suffixIconColor,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@counterStyle': (m.Scope scope, InputDecorationTheme target)=>target.counterStyle,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@filled': (m.Scope scope, InputDecorationTheme target)=>target.filled,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@fillColor': (m.Scope scope, InputDecorationTheme target)=>target.fillColor,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@outlineBorder': (m.Scope scope, InputDecorationTheme target)=>target.outlineBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@activeIndicatorBorder': (m.Scope scope, InputDecorationTheme target)=>target.activeIndicatorBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@focusColor': (m.Scope scope, InputDecorationTheme target)=>target.focusColor,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@hoverColor': (m.Scope scope, InputDecorationTheme target)=>target.hoverColor,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@errorBorder': (m.Scope scope, InputDecorationTheme target)=>target.errorBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@focusedBorder': (m.Scope scope, InputDecorationTheme target)=>target.focusedBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@focusedErrorBorder': (m.Scope scope, InputDecorationTheme target)=>target.focusedErrorBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@disabledBorder': (m.Scope scope, InputDecorationTheme target)=>target.disabledBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@enabledBorder': (m.Scope scope, InputDecorationTheme target)=>target.enabledBorder,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@border': (m.Scope scope, InputDecorationTheme target)=>target.border,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@alignLabelWithHint': (m.Scope scope, InputDecorationTheme target)=>target.alignLabelWithHint,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@constraints': (m.Scope scope, InputDecorationTheme target)=>target.constraints,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@hashCode': (m.Scope scope, InputDecorationTheme target)=>target.hashCode,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@': (m.Scope scope)=>({ activeIndicatorBorder,  alignLabelWithHint,  border,  constraints,  contentPadding,  counterStyle,  disabledBorder,  enabledBorder,  errorBorder,  errorMaxLines,  errorStyle,  fillColor,  filled,  floatingLabelAlignment,  floatingLabelBehavior,  floatingLabelStyle,  focusColor,  focusedBorder,  focusedErrorBorder,  helperMaxLines,  helperStyle,  hintStyle,  hoverColor,  iconColor,  isCollapsed,  isDense,  labelStyle,  outlineBorder,  prefixIconColor,  prefixStyle,  suffixIconColor,  suffixStyle}){
return InputDecorationTheme(activeIndicatorBorder:activeIndicatorBorder, alignLabelWithHint:alignLabelWithHint ?? false, border:border, constraints:constraints, contentPadding:contentPadding, counterStyle:counterStyle, disabledBorder:disabledBorder, enabledBorder:enabledBorder, errorBorder:errorBorder, errorMaxLines:errorMaxLines, errorStyle:errorStyle, fillColor:fillColor, filled:filled ?? false, floatingLabelAlignment:floatingLabelAlignment ?? FloatingLabelAlignment.start, floatingLabelBehavior:floatingLabelBehavior ?? FloatingLabelBehavior.auto, floatingLabelStyle:floatingLabelStyle, focusColor:focusColor, focusedBorder:focusedBorder, focusedErrorBorder:focusedErrorBorder, helperMaxLines:helperMaxLines, helperStyle:helperStyle, hintStyle:hintStyle, hoverColor:hoverColor, iconColor:iconColor, isCollapsed:isCollapsed ?? false, isDense:isDense ?? false, labelStyle:labelStyle, outlineBorder:outlineBorder, prefixIconColor:prefixIconColor, prefixStyle:prefixStyle, suffixIconColor:suffixIconColor, suffixStyle:suffixStyle);
},
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@copyWith': (m.Scope scope, InputDecorationTheme target)=>target.copyWith,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@==': (m.Scope scope, InputDecorationTheme target)=>(other)=> target == other,
'package:flutter/src/material/input_decorator.dart@InputDecorationTheme@debugFillProperties': (m.Scope scope, InputDecorationTheme target)=>target.debugFillProperties,

};
}