import 'package:flutter/src/material/action_chip.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/chip.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/action_chip.dart@ActionChip@#as': (m.Scope scope, target)=>()=>target as ActionChip,
'package:flutter/src/material/action_chip.dart@ActionChip@#is': (m.Scope scope, target)=>()=>target is ActionChip,
'package:flutter/src/material/action_chip.dart@ActionChip@avatar': (m.Scope scope, ActionChip target)=>target.avatar,
'package:flutter/src/material/action_chip.dart@ActionChip@label': (m.Scope scope, ActionChip target)=>target.label,
'package:flutter/src/material/action_chip.dart@ActionChip@labelStyle': (m.Scope scope, ActionChip target)=>target.labelStyle,
'package:flutter/src/material/action_chip.dart@ActionChip@labelPadding': (m.Scope scope, ActionChip target)=>target.labelPadding,
'package:flutter/src/material/action_chip.dart@ActionChip@onPressed': (m.Scope scope, ActionChip target)=>target.onPressed,
'package:flutter/src/material/action_chip.dart@ActionChip@pressElevation': (m.Scope scope, ActionChip target)=>target.pressElevation,
'package:flutter/src/material/action_chip.dart@ActionChip@tooltip': (m.Scope scope, ActionChip target)=>target.tooltip,
'package:flutter/src/material/action_chip.dart@ActionChip@side': (m.Scope scope, ActionChip target)=>target.side,
'package:flutter/src/material/action_chip.dart@ActionChip@shape': (m.Scope scope, ActionChip target)=>target.shape,
'package:flutter/src/material/action_chip.dart@ActionChip@clipBehavior': (m.Scope scope, ActionChip target)=>target.clipBehavior,
'package:flutter/src/material/action_chip.dart@ActionChip@focusNode': (m.Scope scope, ActionChip target)=>target.focusNode,
'package:flutter/src/material/action_chip.dart@ActionChip@autofocus': (m.Scope scope, ActionChip target)=>target.autofocus,
'package:flutter/src/material/action_chip.dart@ActionChip@backgroundColor': (m.Scope scope, ActionChip target)=>target.backgroundColor,
'package:flutter/src/material/action_chip.dart@ActionChip@disabledColor': (m.Scope scope, ActionChip target)=>target.disabledColor,
'package:flutter/src/material/action_chip.dart@ActionChip@padding': (m.Scope scope, ActionChip target)=>target.padding,
'package:flutter/src/material/action_chip.dart@ActionChip@visualDensity': (m.Scope scope, ActionChip target)=>target.visualDensity,
'package:flutter/src/material/action_chip.dart@ActionChip@materialTapTargetSize': (m.Scope scope, ActionChip target)=>target.materialTapTargetSize,
'package:flutter/src/material/action_chip.dart@ActionChip@elevation': (m.Scope scope, ActionChip target)=>target.elevation,
'package:flutter/src/material/action_chip.dart@ActionChip@shadowColor': (m.Scope scope, ActionChip target)=>target.shadowColor,
'package:flutter/src/material/action_chip.dart@ActionChip@surfaceTintColor': (m.Scope scope, ActionChip target)=>target.surfaceTintColor,
'package:flutter/src/material/action_chip.dart@ActionChip@iconTheme': (m.Scope scope, ActionChip target)=>target.iconTheme,
'package:flutter/src/material/action_chip.dart@ActionChip@isEnabled': (m.Scope scope, ActionChip target)=>target.isEnabled,
'package:flutter/src/material/action_chip.dart@ActionChip@': (m.Scope scope)=>({ autofocus,  avatar,  backgroundColor,  clipBehavior,  disabledColor,  elevation,  focusNode,  iconTheme,  key,  label,  labelPadding,  labelStyle,  materialTapTargetSize,  onPressed,  padding,  pressElevation,  shadowColor,  shape,  side,  surfaceTintColor,  tooltip,  visualDensity}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return ActionChip(autofocus:autofocus ?? false, avatar:avatar, backgroundColor:backgroundColor, clipBehavior:clipBehavior ?? Clip.none, disabledColor:disabledColor, elevation:elevation, focusNode:focusNode, iconTheme:iconTheme, key:key, label:label, labelPadding:labelPadding, labelStyle:labelStyle, materialTapTargetSize:materialTapTargetSize, onPressed:onPressed == null ? null :onPressedProxy, padding:padding, pressElevation:pressElevation, shadowColor:shadowColor, shape:shape, side:side, surfaceTintColor:surfaceTintColor, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/action_chip.dart@ActionChip@build': (m.Scope scope, ActionChip target)=>target.build,

};
}