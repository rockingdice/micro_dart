import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@#as': (m.Scope scope, target)=>()=>target as FloatingActionButtonThemeData,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@#is': (m.Scope scope, target)=>()=>target is FloatingActionButtonThemeData,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@foregroundColor': (m.Scope scope, FloatingActionButtonThemeData target)=>target.foregroundColor,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@backgroundColor': (m.Scope scope, FloatingActionButtonThemeData target)=>target.backgroundColor,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@focusColor': (m.Scope scope, FloatingActionButtonThemeData target)=>target.focusColor,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@hoverColor': (m.Scope scope, FloatingActionButtonThemeData target)=>target.hoverColor,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@splashColor': (m.Scope scope, FloatingActionButtonThemeData target)=>target.splashColor,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@elevation': (m.Scope scope, FloatingActionButtonThemeData target)=>target.elevation,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@focusElevation': (m.Scope scope, FloatingActionButtonThemeData target)=>target.focusElevation,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@hoverElevation': (m.Scope scope, FloatingActionButtonThemeData target)=>target.hoverElevation,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@disabledElevation': (m.Scope scope, FloatingActionButtonThemeData target)=>target.disabledElevation,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@highlightElevation': (m.Scope scope, FloatingActionButtonThemeData target)=>target.highlightElevation,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@shape': (m.Scope scope, FloatingActionButtonThemeData target)=>target.shape,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@enableFeedback': (m.Scope scope, FloatingActionButtonThemeData target)=>target.enableFeedback,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@iconSize': (m.Scope scope, FloatingActionButtonThemeData target)=>target.iconSize,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@sizeConstraints': (m.Scope scope, FloatingActionButtonThemeData target)=>target.sizeConstraints,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@smallSizeConstraints': (m.Scope scope, FloatingActionButtonThemeData target)=>target.smallSizeConstraints,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@largeSizeConstraints': (m.Scope scope, FloatingActionButtonThemeData target)=>target.largeSizeConstraints,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@extendedSizeConstraints': (m.Scope scope, FloatingActionButtonThemeData target)=>target.extendedSizeConstraints,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@extendedIconLabelSpacing': (m.Scope scope, FloatingActionButtonThemeData target)=>target.extendedIconLabelSpacing,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@extendedPadding': (m.Scope scope, FloatingActionButtonThemeData target)=>target.extendedPadding,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@extendedTextStyle': (m.Scope scope, FloatingActionButtonThemeData target)=>target.extendedTextStyle,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@mouseCursor': (m.Scope scope, FloatingActionButtonThemeData target)=>target.mouseCursor,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@hashCode': (m.Scope scope, FloatingActionButtonThemeData target)=>target.hashCode,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@': (m.Scope scope)=>({ backgroundColor,  disabledElevation,  elevation,  enableFeedback,  extendedIconLabelSpacing,  extendedPadding,  extendedSizeConstraints,  extendedTextStyle,  focusColor,  focusElevation,  foregroundColor,  highlightElevation,  hoverColor,  hoverElevation,  iconSize,  largeSizeConstraints,  mouseCursor,  shape,  sizeConstraints,  smallSizeConstraints,  splashColor}){
return FloatingActionButtonThemeData(backgroundColor:backgroundColor, disabledElevation:disabledElevation, elevation:elevation, enableFeedback:enableFeedback, extendedIconLabelSpacing:extendedIconLabelSpacing, extendedPadding:extendedPadding, extendedSizeConstraints:extendedSizeConstraints, extendedTextStyle:extendedTextStyle, focusColor:focusColor, focusElevation:focusElevation, foregroundColor:foregroundColor, highlightElevation:highlightElevation, hoverColor:hoverColor, hoverElevation:hoverElevation, iconSize:iconSize, largeSizeConstraints:largeSizeConstraints, mouseCursor:mouseCursor, shape:shape, sizeConstraints:sizeConstraints, smallSizeConstraints:smallSizeConstraints, splashColor:splashColor);
},
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@copyWith': (m.Scope scope, FloatingActionButtonThemeData target)=>target.copyWith,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@lerp': (m.Scope scope)=>FloatingActionButtonThemeData.lerp,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@==': (m.Scope scope, FloatingActionButtonThemeData target)=>(other)=> target == other,
'package:flutter/src/material/floating_action_button_theme.dart@FloatingActionButtonThemeData@debugFillProperties': (m.Scope scope, FloatingActionButtonThemeData target)=>target.debugFillProperties,

};
}