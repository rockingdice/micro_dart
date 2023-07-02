import 'package:flutter/src/material/toggle_buttons.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/ink_ripple.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@#as': (m.Scope scope, target)=>()=>target as ToggleButtons,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@#is': (m.Scope scope, target)=>()=>target is ToggleButtons,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@children': (m.Scope scope, ToggleButtons target)=>target.children,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@isSelected': (m.Scope scope, ToggleButtons target)=>target.isSelected,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@onPressed': (m.Scope scope, ToggleButtons target)=>target.onPressed,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@mouseCursor': (m.Scope scope, ToggleButtons target)=>target.mouseCursor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@tapTargetSize': (m.Scope scope, ToggleButtons target)=>target.tapTargetSize,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@textStyle': (m.Scope scope, ToggleButtons target)=>target.textStyle,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@constraints': (m.Scope scope, ToggleButtons target)=>target.constraints,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@color': (m.Scope scope, ToggleButtons target)=>target.color,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@selectedColor': (m.Scope scope, ToggleButtons target)=>target.selectedColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@disabledColor': (m.Scope scope, ToggleButtons target)=>target.disabledColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@fillColor': (m.Scope scope, ToggleButtons target)=>target.fillColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@focusColor': (m.Scope scope, ToggleButtons target)=>target.focusColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@highlightColor': (m.Scope scope, ToggleButtons target)=>target.highlightColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@splashColor': (m.Scope scope, ToggleButtons target)=>target.splashColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@hoverColor': (m.Scope scope, ToggleButtons target)=>target.hoverColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@focusNodes': (m.Scope scope, ToggleButtons target)=>target.focusNodes,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@renderBorder': (m.Scope scope, ToggleButtons target)=>target.renderBorder,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@borderColor': (m.Scope scope, ToggleButtons target)=>target.borderColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@selectedBorderColor': (m.Scope scope, ToggleButtons target)=>target.selectedBorderColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@disabledBorderColor': (m.Scope scope, ToggleButtons target)=>target.disabledBorderColor,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@borderWidth': (m.Scope scope, ToggleButtons target)=>target.borderWidth,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@borderRadius': (m.Scope scope, ToggleButtons target)=>target.borderRadius,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@direction': (m.Scope scope, ToggleButtons target)=>target.direction,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@verticalDirection': (m.Scope scope, ToggleButtons target)=>target.verticalDirection,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@': (m.Scope scope)=>({ borderColor,  borderRadius,  borderWidth,  children,  color,  constraints,  direction,  disabledBorderColor,  disabledColor,  fillColor,  focusColor,  focusNodes,  highlightColor,  hoverColor,  isSelected,  key,  mouseCursor,  onPressed,  renderBorder,  selectedBorderColor,  selectedColor,  splashColor,  tapTargetSize,  textStyle,  verticalDirection}){
void onPressedProxy( index) {
 engine.callFunctionPointer(scope, onPressed!,[index], {});
}

return ToggleButtons(borderColor:borderColor, borderRadius:borderRadius, borderWidth:borderWidth, children:children, color:color, constraints:constraints, direction:direction ?? Axis.horizontal, disabledBorderColor:disabledBorderColor, disabledColor:disabledColor, fillColor:fillColor, focusColor:focusColor, focusNodes:focusNodes, highlightColor:highlightColor, hoverColor:hoverColor, isSelected:isSelected, key:key, mouseCursor:mouseCursor, onPressed:onPressed == null ? null :onPressedProxy, renderBorder:renderBorder ?? true, selectedBorderColor:selectedBorderColor, selectedColor:selectedColor, splashColor:splashColor, tapTargetSize:tapTargetSize, textStyle:textStyle, verticalDirection:verticalDirection ?? VerticalDirection.down);
},
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@build': (m.Scope scope, ToggleButtons target)=>target.build,
'package:flutter/src/material/toggle_buttons.dart@ToggleButtons@debugFillProperties': (m.Scope scope, ToggleButtons target)=>target.debugFillProperties,

};
}