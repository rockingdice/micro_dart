import 'package:flutter/src/material/icon_button.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/button_style_button.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button_theme.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/icon_button.dart@IconButton@#as': (m.Scope scope, target)=>()=>target as IconButton,
'package:flutter/src/material/icon_button.dart@IconButton@#is': (m.Scope scope, target)=>()=>target is IconButton,
'package:flutter/src/material/icon_button.dart@IconButton@iconSize': (m.Scope scope, IconButton target)=>target.iconSize,
'package:flutter/src/material/icon_button.dart@IconButton@visualDensity': (m.Scope scope, IconButton target)=>target.visualDensity,
'package:flutter/src/material/icon_button.dart@IconButton@padding': (m.Scope scope, IconButton target)=>target.padding,
'package:flutter/src/material/icon_button.dart@IconButton@alignment': (m.Scope scope, IconButton target)=>target.alignment,
'package:flutter/src/material/icon_button.dart@IconButton@splashRadius': (m.Scope scope, IconButton target)=>target.splashRadius,
'package:flutter/src/material/icon_button.dart@IconButton@icon': (m.Scope scope, IconButton target)=>target.icon,
'package:flutter/src/material/icon_button.dart@IconButton@focusColor': (m.Scope scope, IconButton target)=>target.focusColor,
'package:flutter/src/material/icon_button.dart@IconButton@hoverColor': (m.Scope scope, IconButton target)=>target.hoverColor,
'package:flutter/src/material/icon_button.dart@IconButton@color': (m.Scope scope, IconButton target)=>target.color,
'package:flutter/src/material/icon_button.dart@IconButton@splashColor': (m.Scope scope, IconButton target)=>target.splashColor,
'package:flutter/src/material/icon_button.dart@IconButton@highlightColor': (m.Scope scope, IconButton target)=>target.highlightColor,
'package:flutter/src/material/icon_button.dart@IconButton@disabledColor': (m.Scope scope, IconButton target)=>target.disabledColor,
'package:flutter/src/material/icon_button.dart@IconButton@onPressed': (m.Scope scope, IconButton target)=>target.onPressed,
'package:flutter/src/material/icon_button.dart@IconButton@mouseCursor': (m.Scope scope, IconButton target)=>target.mouseCursor,
'package:flutter/src/material/icon_button.dart@IconButton@focusNode': (m.Scope scope, IconButton target)=>target.focusNode,
'package:flutter/src/material/icon_button.dart@IconButton@autofocus': (m.Scope scope, IconButton target)=>target.autofocus,
'package:flutter/src/material/icon_button.dart@IconButton@tooltip': (m.Scope scope, IconButton target)=>target.tooltip,
'package:flutter/src/material/icon_button.dart@IconButton@enableFeedback': (m.Scope scope, IconButton target)=>target.enableFeedback,
'package:flutter/src/material/icon_button.dart@IconButton@constraints': (m.Scope scope, IconButton target)=>target.constraints,
'package:flutter/src/material/icon_button.dart@IconButton@style': (m.Scope scope, IconButton target)=>target.style,
'package:flutter/src/material/icon_button.dart@IconButton@isSelected': (m.Scope scope, IconButton target)=>target.isSelected,
'package:flutter/src/material/icon_button.dart@IconButton@selectedIcon': (m.Scope scope, IconButton target)=>target.selectedIcon,
'package:flutter/src/material/icon_button.dart@IconButton@': (m.Scope scope)=>({ alignment,  autofocus,  color,  constraints,  disabledColor,  enableFeedback,  focusColor,  focusNode,  highlightColor,  hoverColor,  icon,  iconSize,  isSelected,  key,  mouseCursor,  onPressed,  padding,  selectedIcon,  splashColor,  splashRadius,  style,  tooltip,  visualDensity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return IconButton(alignment:alignment, autofocus:autofocus ?? false, color:color, constraints:constraints, disabledColor:disabledColor, enableFeedback:enableFeedback, focusColor:focusColor, focusNode:focusNode, highlightColor:highlightColor, hoverColor:hoverColor, icon:icon, iconSize:iconSize, isSelected:isSelected, key:key, mouseCursor:mouseCursor, onPressed:onPressedProxy, padding:padding, selectedIcon:selectedIcon, splashColor:splashColor, splashRadius:splashRadius, style:style, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/icon_button.dart@IconButton@filled': (m.Scope scope)=>({ alignment,  autofocus,  color,  constraints,  disabledColor,  enableFeedback,  focusColor,  focusNode,  highlightColor,  hoverColor,  icon,  iconSize,  isSelected,  key,  mouseCursor,  onPressed,  padding,  selectedIcon,  splashColor,  splashRadius,  style,  tooltip,  visualDensity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return IconButton.filled(alignment:alignment, autofocus:autofocus ?? false, color:color, constraints:constraints, disabledColor:disabledColor, enableFeedback:enableFeedback, focusColor:focusColor, focusNode:focusNode, highlightColor:highlightColor, hoverColor:hoverColor, icon:icon, iconSize:iconSize, isSelected:isSelected, key:key, mouseCursor:mouseCursor, onPressed:onPressedProxy, padding:padding, selectedIcon:selectedIcon, splashColor:splashColor, splashRadius:splashRadius, style:style, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/icon_button.dart@IconButton@filledTonal': (m.Scope scope)=>({ alignment,  autofocus,  color,  constraints,  disabledColor,  enableFeedback,  focusColor,  focusNode,  highlightColor,  hoverColor,  icon,  iconSize,  isSelected,  key,  mouseCursor,  onPressed,  padding,  selectedIcon,  splashColor,  splashRadius,  style,  tooltip,  visualDensity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return IconButton.filledTonal(alignment:alignment, autofocus:autofocus ?? false, color:color, constraints:constraints, disabledColor:disabledColor, enableFeedback:enableFeedback, focusColor:focusColor, focusNode:focusNode, highlightColor:highlightColor, hoverColor:hoverColor, icon:icon, iconSize:iconSize, isSelected:isSelected, key:key, mouseCursor:mouseCursor, onPressed:onPressedProxy, padding:padding, selectedIcon:selectedIcon, splashColor:splashColor, splashRadius:splashRadius, style:style, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/icon_button.dart@IconButton@outlined': (m.Scope scope)=>({ alignment,  autofocus,  color,  constraints,  disabledColor,  enableFeedback,  focusColor,  focusNode,  highlightColor,  hoverColor,  icon,  iconSize,  isSelected,  key,  mouseCursor,  onPressed,  padding,  selectedIcon,  splashColor,  splashRadius,  style,  tooltip,  visualDensity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return IconButton.outlined(alignment:alignment, autofocus:autofocus ?? false, color:color, constraints:constraints, disabledColor:disabledColor, enableFeedback:enableFeedback, focusColor:focusColor, focusNode:focusNode, highlightColor:highlightColor, hoverColor:hoverColor, icon:icon, iconSize:iconSize, isSelected:isSelected, key:key, mouseCursor:mouseCursor, onPressed:onPressedProxy, padding:padding, selectedIcon:selectedIcon, splashColor:splashColor, splashRadius:splashRadius, style:style, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/icon_button.dart@IconButton@styleFrom': (m.Scope scope)=>IconButton.styleFrom,
'package:flutter/src/material/icon_button.dart@IconButton@build': (m.Scope scope, IconButton target)=>target.build,
'package:flutter/src/material/icon_button.dart@IconButton@debugFillProperties': (m.Scope scope, IconButton target)=>target.debugFillProperties,

};
}