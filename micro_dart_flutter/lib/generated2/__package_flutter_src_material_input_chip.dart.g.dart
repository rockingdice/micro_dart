import 'package:flutter/src/material/input_chip.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/chip.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/input_chip.dart@InputChip@#as': (m.Scope scope, target)=>()=>target as InputChip,
'package:flutter/src/material/input_chip.dart@InputChip@#is': (m.Scope scope, target)=>()=>target is InputChip,
'package:flutter/src/material/input_chip.dart@InputChip@avatar': (m.Scope scope, InputChip target)=>target.avatar,
'package:flutter/src/material/input_chip.dart@InputChip@label': (m.Scope scope, InputChip target)=>target.label,
'package:flutter/src/material/input_chip.dart@InputChip@labelStyle': (m.Scope scope, InputChip target)=>target.labelStyle,
'package:flutter/src/material/input_chip.dart@InputChip@labelPadding': (m.Scope scope, InputChip target)=>target.labelPadding,
'package:flutter/src/material/input_chip.dart@InputChip@selected': (m.Scope scope, InputChip target)=>target.selected,
'package:flutter/src/material/input_chip.dart@InputChip@isEnabled': (m.Scope scope, InputChip target)=>target.isEnabled,
'package:flutter/src/material/input_chip.dart@InputChip@onSelected': (m.Scope scope, InputChip target)=>target.onSelected,
'package:flutter/src/material/input_chip.dart@InputChip@deleteIcon': (m.Scope scope, InputChip target)=>target.deleteIcon,
'package:flutter/src/material/input_chip.dart@InputChip@onDeleted': (m.Scope scope, InputChip target)=>target.onDeleted,
'package:flutter/src/material/input_chip.dart@InputChip@deleteIconColor': (m.Scope scope, InputChip target)=>target.deleteIconColor,
'package:flutter/src/material/input_chip.dart@InputChip@deleteButtonTooltipMessage': (m.Scope scope, InputChip target)=>target.deleteButtonTooltipMessage,
'package:flutter/src/material/input_chip.dart@InputChip@onPressed': (m.Scope scope, InputChip target)=>target.onPressed,
'package:flutter/src/material/input_chip.dart@InputChip@pressElevation': (m.Scope scope, InputChip target)=>target.pressElevation,
'package:flutter/src/material/input_chip.dart@InputChip@disabledColor': (m.Scope scope, InputChip target)=>target.disabledColor,
'package:flutter/src/material/input_chip.dart@InputChip@selectedColor': (m.Scope scope, InputChip target)=>target.selectedColor,
'package:flutter/src/material/input_chip.dart@InputChip@tooltip': (m.Scope scope, InputChip target)=>target.tooltip,
'package:flutter/src/material/input_chip.dart@InputChip@side': (m.Scope scope, InputChip target)=>target.side,
'package:flutter/src/material/input_chip.dart@InputChip@shape': (m.Scope scope, InputChip target)=>target.shape,
'package:flutter/src/material/input_chip.dart@InputChip@clipBehavior': (m.Scope scope, InputChip target)=>target.clipBehavior,
'package:flutter/src/material/input_chip.dart@InputChip@focusNode': (m.Scope scope, InputChip target)=>target.focusNode,
'package:flutter/src/material/input_chip.dart@InputChip@autofocus': (m.Scope scope, InputChip target)=>target.autofocus,
'package:flutter/src/material/input_chip.dart@InputChip@backgroundColor': (m.Scope scope, InputChip target)=>target.backgroundColor,
'package:flutter/src/material/input_chip.dart@InputChip@padding': (m.Scope scope, InputChip target)=>target.padding,
'package:flutter/src/material/input_chip.dart@InputChip@visualDensity': (m.Scope scope, InputChip target)=>target.visualDensity,
'package:flutter/src/material/input_chip.dart@InputChip@materialTapTargetSize': (m.Scope scope, InputChip target)=>target.materialTapTargetSize,
'package:flutter/src/material/input_chip.dart@InputChip@elevation': (m.Scope scope, InputChip target)=>target.elevation,
'package:flutter/src/material/input_chip.dart@InputChip@shadowColor': (m.Scope scope, InputChip target)=>target.shadowColor,
'package:flutter/src/material/input_chip.dart@InputChip@surfaceTintColor': (m.Scope scope, InputChip target)=>target.surfaceTintColor,
'package:flutter/src/material/input_chip.dart@InputChip@selectedShadowColor': (m.Scope scope, InputChip target)=>target.selectedShadowColor,
'package:flutter/src/material/input_chip.dart@InputChip@showCheckmark': (m.Scope scope, InputChip target)=>target.showCheckmark,
'package:flutter/src/material/input_chip.dart@InputChip@checkmarkColor': (m.Scope scope, InputChip target)=>target.checkmarkColor,
'package:flutter/src/material/input_chip.dart@InputChip@avatarBorder': (m.Scope scope, InputChip target)=>target.avatarBorder,
'package:flutter/src/material/input_chip.dart@InputChip@iconTheme': (m.Scope scope, InputChip target)=>target.iconTheme,
'package:flutter/src/material/input_chip.dart@InputChip@useDeleteButtonTooltip': (m.Scope scope, InputChip target)=>target.useDeleteButtonTooltip,
'package:flutter/src/material/input_chip.dart@InputChip@': (m.Scope scope)=>({ autofocus,  avatar,  avatarBorder,  backgroundColor,  checkmarkColor,  clipBehavior,  deleteButtonTooltipMessage,  deleteIcon,  deleteIconColor,  disabledColor,  elevation,  focusNode,  iconTheme,  isEnabled,  key,  label,  labelPadding,  labelStyle,  materialTapTargetSize,  onDeleted,  onPressed,  onSelected,  padding,  pressElevation,  selected,  selectedColor,  selectedShadowColor,  shadowColor,  shape,  showCheckmark,  side,  surfaceTintColor,  tooltip,  useDeleteButtonTooltip,  visualDensity}){
void onDeletedProxy() {
 engine.callFunctionPointer(scope, onDeleted!,[], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

void onSelectedProxy( value) {
 engine.callFunctionPointer(scope, onSelected!,[value], {});
}

return InputChip(autofocus:autofocus ?? false, avatar:avatar, avatarBorder:avatarBorder ?? const CircleBorder(), backgroundColor:backgroundColor, checkmarkColor:checkmarkColor, clipBehavior:clipBehavior ?? Clip.none, deleteButtonTooltipMessage:deleteButtonTooltipMessage, deleteIcon:deleteIcon, deleteIconColor:deleteIconColor, disabledColor:disabledColor, elevation:elevation, focusNode:focusNode, iconTheme:iconTheme, isEnabled:isEnabled ?? true, key:key, label:label, labelPadding:labelPadding, labelStyle:labelStyle, materialTapTargetSize:materialTapTargetSize, onDeleted:onDeleted == null ? null :onDeletedProxy, onPressed:onPressed == null ? null :onPressedProxy, onSelected:onSelected == null ? null :onSelectedProxy, padding:padding, pressElevation:pressElevation, selected:selected ?? false, selectedColor:selectedColor, selectedShadowColor:selectedShadowColor, shadowColor:shadowColor, shape:shape, showCheckmark:showCheckmark, side:side, surfaceTintColor:surfaceTintColor, tooltip:tooltip, useDeleteButtonTooltip:useDeleteButtonTooltip ?? true, visualDensity:visualDensity);
},
'package:flutter/src/material/input_chip.dart@InputChip@build': (m.Scope scope, InputChip target)=>target.build,

};
}