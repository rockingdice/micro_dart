import 'package:flutter/src/material/chip.dart';
import 'dart:math';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/material_state_mixin.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/chip.dart@ChipAttributes@#as': (m.Scope scope, target)=>()=>target as ChipAttributes,
'package:flutter/src/material/chip.dart@ChipAttributes@#is': (m.Scope scope, target)=>()=>target is ChipAttributes,
'package:flutter/src/material/chip.dart@ChipAttributes@label': (m.Scope scope, ChipAttributes target)=>target.label,
'package:flutter/src/material/chip.dart@ChipAttributes@avatar': (m.Scope scope, ChipAttributes target)=>target.avatar,
'package:flutter/src/material/chip.dart@ChipAttributes@labelStyle': (m.Scope scope, ChipAttributes target)=>target.labelStyle,
'package:flutter/src/material/chip.dart@ChipAttributes@side': (m.Scope scope, ChipAttributes target)=>target.side,
'package:flutter/src/material/chip.dart@ChipAttributes@shape': (m.Scope scope, ChipAttributes target)=>target.shape,
'package:flutter/src/material/chip.dart@ChipAttributes@clipBehavior': (m.Scope scope, ChipAttributes target)=>target.clipBehavior,
'package:flutter/src/material/chip.dart@ChipAttributes@focusNode': (m.Scope scope, ChipAttributes target)=>target.focusNode,
'package:flutter/src/material/chip.dart@ChipAttributes@autofocus': (m.Scope scope, ChipAttributes target)=>target.autofocus,
'package:flutter/src/material/chip.dart@ChipAttributes@backgroundColor': (m.Scope scope, ChipAttributes target)=>target.backgroundColor,
'package:flutter/src/material/chip.dart@ChipAttributes@padding': (m.Scope scope, ChipAttributes target)=>target.padding,
'package:flutter/src/material/chip.dart@ChipAttributes@visualDensity': (m.Scope scope, ChipAttributes target)=>target.visualDensity,
'package:flutter/src/material/chip.dart@ChipAttributes@labelPadding': (m.Scope scope, ChipAttributes target)=>target.labelPadding,
'package:flutter/src/material/chip.dart@ChipAttributes@materialTapTargetSize': (m.Scope scope, ChipAttributes target)=>target.materialTapTargetSize,
'package:flutter/src/material/chip.dart@ChipAttributes@elevation': (m.Scope scope, ChipAttributes target)=>target.elevation,
'package:flutter/src/material/chip.dart@ChipAttributes@shadowColor': (m.Scope scope, ChipAttributes target)=>target.shadowColor,
'package:flutter/src/material/chip.dart@ChipAttributes@surfaceTintColor': (m.Scope scope, ChipAttributes target)=>target.surfaceTintColor,
'package:flutter/src/material/chip.dart@ChipAttributes@iconTheme': (m.Scope scope, ChipAttributes target)=>target.iconTheme,
'package:flutter/src/material/chip.dart@DeletableChipAttributes@#as': (m.Scope scope, target)=>()=>target as DeletableChipAttributes,
'package:flutter/src/material/chip.dart@DeletableChipAttributes@#is': (m.Scope scope, target)=>()=>target is DeletableChipAttributes,
'package:flutter/src/material/chip.dart@DeletableChipAttributes@deleteIcon': (m.Scope scope, DeletableChipAttributes target)=>target.deleteIcon,
'package:flutter/src/material/chip.dart@DeletableChipAttributes@onDeleted': (m.Scope scope, DeletableChipAttributes target)=>target.onDeleted,
'package:flutter/src/material/chip.dart@DeletableChipAttributes@deleteIconColor': (m.Scope scope, DeletableChipAttributes target)=>target.deleteIconColor,
'package:flutter/src/material/chip.dart@DeletableChipAttributes@deleteButtonTooltipMessage': (m.Scope scope, DeletableChipAttributes target)=>target.deleteButtonTooltipMessage,
'package:flutter/src/material/chip.dart@CheckmarkableChipAttributes@#as': (m.Scope scope, target)=>()=>target as CheckmarkableChipAttributes,
'package:flutter/src/material/chip.dart@CheckmarkableChipAttributes@#is': (m.Scope scope, target)=>()=>target is CheckmarkableChipAttributes,
'package:flutter/src/material/chip.dart@CheckmarkableChipAttributes@showCheckmark': (m.Scope scope, CheckmarkableChipAttributes target)=>target.showCheckmark,
'package:flutter/src/material/chip.dart@CheckmarkableChipAttributes@checkmarkColor': (m.Scope scope, CheckmarkableChipAttributes target)=>target.checkmarkColor,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@#as': (m.Scope scope, target)=>()=>target as SelectableChipAttributes,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@#is': (m.Scope scope, target)=>()=>target is SelectableChipAttributes,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@selected': (m.Scope scope, SelectableChipAttributes target)=>target.selected,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@onSelected': (m.Scope scope, SelectableChipAttributes target)=>target.onSelected,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@pressElevation': (m.Scope scope, SelectableChipAttributes target)=>target.pressElevation,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@selectedColor': (m.Scope scope, SelectableChipAttributes target)=>target.selectedColor,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@selectedShadowColor': (m.Scope scope, SelectableChipAttributes target)=>target.selectedShadowColor,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@tooltip': (m.Scope scope, SelectableChipAttributes target)=>target.tooltip,
'package:flutter/src/material/chip.dart@SelectableChipAttributes@avatarBorder': (m.Scope scope, SelectableChipAttributes target)=>target.avatarBorder,
'package:flutter/src/material/chip.dart@DisabledChipAttributes@#as': (m.Scope scope, target)=>()=>target as DisabledChipAttributes,
'package:flutter/src/material/chip.dart@DisabledChipAttributes@#is': (m.Scope scope, target)=>()=>target is DisabledChipAttributes,
'package:flutter/src/material/chip.dart@DisabledChipAttributes@isEnabled': (m.Scope scope, DisabledChipAttributes target)=>target.isEnabled,
'package:flutter/src/material/chip.dart@DisabledChipAttributes@disabledColor': (m.Scope scope, DisabledChipAttributes target)=>target.disabledColor,
'package:flutter/src/material/chip.dart@TappableChipAttributes@#as': (m.Scope scope, target)=>()=>target as TappableChipAttributes,
'package:flutter/src/material/chip.dart@TappableChipAttributes@#is': (m.Scope scope, target)=>()=>target is TappableChipAttributes,
'package:flutter/src/material/chip.dart@TappableChipAttributes@onPressed': (m.Scope scope, TappableChipAttributes target)=>target.onPressed,
'package:flutter/src/material/chip.dart@TappableChipAttributes@pressElevation': (m.Scope scope, TappableChipAttributes target)=>target.pressElevation,
'package:flutter/src/material/chip.dart@TappableChipAttributes@tooltip': (m.Scope scope, TappableChipAttributes target)=>target.tooltip,
'package:flutter/src/material/chip.dart@Chip@#as': (m.Scope scope, target)=>()=>target as Chip,
'package:flutter/src/material/chip.dart@Chip@#is': (m.Scope scope, target)=>()=>target is Chip,
'package:flutter/src/material/chip.dart@Chip@avatar': (m.Scope scope, Chip target)=>target.avatar,
'package:flutter/src/material/chip.dart@Chip@label': (m.Scope scope, Chip target)=>target.label,
'package:flutter/src/material/chip.dart@Chip@labelStyle': (m.Scope scope, Chip target)=>target.labelStyle,
'package:flutter/src/material/chip.dart@Chip@labelPadding': (m.Scope scope, Chip target)=>target.labelPadding,
'package:flutter/src/material/chip.dart@Chip@side': (m.Scope scope, Chip target)=>target.side,
'package:flutter/src/material/chip.dart@Chip@shape': (m.Scope scope, Chip target)=>target.shape,
'package:flutter/src/material/chip.dart@Chip@clipBehavior': (m.Scope scope, Chip target)=>target.clipBehavior,
'package:flutter/src/material/chip.dart@Chip@focusNode': (m.Scope scope, Chip target)=>target.focusNode,
'package:flutter/src/material/chip.dart@Chip@autofocus': (m.Scope scope, Chip target)=>target.autofocus,
'package:flutter/src/material/chip.dart@Chip@backgroundColor': (m.Scope scope, Chip target)=>target.backgroundColor,
'package:flutter/src/material/chip.dart@Chip@padding': (m.Scope scope, Chip target)=>target.padding,
'package:flutter/src/material/chip.dart@Chip@visualDensity': (m.Scope scope, Chip target)=>target.visualDensity,
'package:flutter/src/material/chip.dart@Chip@deleteIcon': (m.Scope scope, Chip target)=>target.deleteIcon,
'package:flutter/src/material/chip.dart@Chip@onDeleted': (m.Scope scope, Chip target)=>target.onDeleted,
'package:flutter/src/material/chip.dart@Chip@deleteIconColor': (m.Scope scope, Chip target)=>target.deleteIconColor,
'package:flutter/src/material/chip.dart@Chip@deleteButtonTooltipMessage': (m.Scope scope, Chip target)=>target.deleteButtonTooltipMessage,
'package:flutter/src/material/chip.dart@Chip@materialTapTargetSize': (m.Scope scope, Chip target)=>target.materialTapTargetSize,
'package:flutter/src/material/chip.dart@Chip@elevation': (m.Scope scope, Chip target)=>target.elevation,
'package:flutter/src/material/chip.dart@Chip@shadowColor': (m.Scope scope, Chip target)=>target.shadowColor,
'package:flutter/src/material/chip.dart@Chip@surfaceTintColor': (m.Scope scope, Chip target)=>target.surfaceTintColor,
'package:flutter/src/material/chip.dart@Chip@iconTheme': (m.Scope scope, Chip target)=>target.iconTheme,
'package:flutter/src/material/chip.dart@Chip@useDeleteButtonTooltip': (m.Scope scope, Chip target)=>target.useDeleteButtonTooltip,
'package:flutter/src/material/chip.dart@Chip@': (m.Scope scope)=>({ autofocus,  avatar,  backgroundColor,  clipBehavior,  deleteButtonTooltipMessage,  deleteIcon,  deleteIconColor,  elevation,  focusNode,  iconTheme,  key,  label,  labelPadding,  labelStyle,  materialTapTargetSize,  onDeleted,  padding,  shadowColor,  shape,  side,  surfaceTintColor,  useDeleteButtonTooltip,  visualDensity}){
void onDeletedProxy() {
 engine.callFunctionPointer(scope, onDeleted!,[], {});
}

return Chip(autofocus:autofocus ?? false, avatar:avatar, backgroundColor:backgroundColor, clipBehavior:clipBehavior ?? Clip.none, deleteButtonTooltipMessage:deleteButtonTooltipMessage, deleteIcon:deleteIcon, deleteIconColor:deleteIconColor, elevation:elevation, focusNode:focusNode, iconTheme:iconTheme, key:key, label:label, labelPadding:labelPadding, labelStyle:labelStyle, materialTapTargetSize:materialTapTargetSize, onDeleted:onDeleted == null ? null :onDeletedProxy, padding:padding, shadowColor:shadowColor, shape:shape, side:side, surfaceTintColor:surfaceTintColor, useDeleteButtonTooltip:useDeleteButtonTooltip ?? true, visualDensity:visualDensity);
},
'package:flutter/src/material/chip.dart@Chip@build': (m.Scope scope, Chip target)=>target.build,
'package:flutter/src/material/chip.dart@RawChip@#as': (m.Scope scope, target)=>()=>target as RawChip,
'package:flutter/src/material/chip.dart@RawChip@#is': (m.Scope scope, target)=>()=>target is RawChip,
'package:flutter/src/material/chip.dart@RawChip@defaultProperties': (m.Scope scope, RawChip target)=>target.defaultProperties,
'package:flutter/src/material/chip.dart@RawChip@avatar': (m.Scope scope, RawChip target)=>target.avatar,
'package:flutter/src/material/chip.dart@RawChip@label': (m.Scope scope, RawChip target)=>target.label,
'package:flutter/src/material/chip.dart@RawChip@labelStyle': (m.Scope scope, RawChip target)=>target.labelStyle,
'package:flutter/src/material/chip.dart@RawChip@labelPadding': (m.Scope scope, RawChip target)=>target.labelPadding,
'package:flutter/src/material/chip.dart@RawChip@deleteIcon': (m.Scope scope, RawChip target)=>target.deleteIcon,
'package:flutter/src/material/chip.dart@RawChip@onDeleted': (m.Scope scope, RawChip target)=>target.onDeleted,
'package:flutter/src/material/chip.dart@RawChip@deleteIconColor': (m.Scope scope, RawChip target)=>target.deleteIconColor,
'package:flutter/src/material/chip.dart@RawChip@deleteButtonTooltipMessage': (m.Scope scope, RawChip target)=>target.deleteButtonTooltipMessage,
'package:flutter/src/material/chip.dart@RawChip@onSelected': (m.Scope scope, RawChip target)=>target.onSelected,
'package:flutter/src/material/chip.dart@RawChip@onPressed': (m.Scope scope, RawChip target)=>target.onPressed,
'package:flutter/src/material/chip.dart@RawChip@pressElevation': (m.Scope scope, RawChip target)=>target.pressElevation,
'package:flutter/src/material/chip.dart@RawChip@selected': (m.Scope scope, RawChip target)=>target.selected,
'package:flutter/src/material/chip.dart@RawChip@isEnabled': (m.Scope scope, RawChip target)=>target.isEnabled,
'package:flutter/src/material/chip.dart@RawChip@disabledColor': (m.Scope scope, RawChip target)=>target.disabledColor,
'package:flutter/src/material/chip.dart@RawChip@selectedColor': (m.Scope scope, RawChip target)=>target.selectedColor,
'package:flutter/src/material/chip.dart@RawChip@tooltip': (m.Scope scope, RawChip target)=>target.tooltip,
'package:flutter/src/material/chip.dart@RawChip@side': (m.Scope scope, RawChip target)=>target.side,
'package:flutter/src/material/chip.dart@RawChip@shape': (m.Scope scope, RawChip target)=>target.shape,
'package:flutter/src/material/chip.dart@RawChip@clipBehavior': (m.Scope scope, RawChip target)=>target.clipBehavior,
'package:flutter/src/material/chip.dart@RawChip@focusNode': (m.Scope scope, RawChip target)=>target.focusNode,
'package:flutter/src/material/chip.dart@RawChip@autofocus': (m.Scope scope, RawChip target)=>target.autofocus,
'package:flutter/src/material/chip.dart@RawChip@backgroundColor': (m.Scope scope, RawChip target)=>target.backgroundColor,
'package:flutter/src/material/chip.dart@RawChip@padding': (m.Scope scope, RawChip target)=>target.padding,
'package:flutter/src/material/chip.dart@RawChip@visualDensity': (m.Scope scope, RawChip target)=>target.visualDensity,
'package:flutter/src/material/chip.dart@RawChip@materialTapTargetSize': (m.Scope scope, RawChip target)=>target.materialTapTargetSize,
'package:flutter/src/material/chip.dart@RawChip@elevation': (m.Scope scope, RawChip target)=>target.elevation,
'package:flutter/src/material/chip.dart@RawChip@shadowColor': (m.Scope scope, RawChip target)=>target.shadowColor,
'package:flutter/src/material/chip.dart@RawChip@surfaceTintColor': (m.Scope scope, RawChip target)=>target.surfaceTintColor,
'package:flutter/src/material/chip.dart@RawChip@iconTheme': (m.Scope scope, RawChip target)=>target.iconTheme,
'package:flutter/src/material/chip.dart@RawChip@selectedShadowColor': (m.Scope scope, RawChip target)=>target.selectedShadowColor,
'package:flutter/src/material/chip.dart@RawChip@showCheckmark': (m.Scope scope, RawChip target)=>target.showCheckmark,
'package:flutter/src/material/chip.dart@RawChip@checkmarkColor': (m.Scope scope, RawChip target)=>target.checkmarkColor,
'package:flutter/src/material/chip.dart@RawChip@avatarBorder': (m.Scope scope, RawChip target)=>target.avatarBorder,
'package:flutter/src/material/chip.dart@RawChip@useDeleteButtonTooltip': (m.Scope scope, RawChip target)=>target.useDeleteButtonTooltip,
'package:flutter/src/material/chip.dart@RawChip@tapEnabled': (m.Scope scope, RawChip target)=>target.tapEnabled,
'package:flutter/src/material/chip.dart@RawChip@': (m.Scope scope)=>({ autofocus,  avatar,  avatarBorder,  backgroundColor,  checkmarkColor,  clipBehavior,  defaultProperties,  deleteButtonTooltipMessage,  deleteIcon,  deleteIconColor,  disabledColor,  elevation,  focusNode,  iconTheme,  isEnabled,  key,  label,  labelPadding,  labelStyle,  materialTapTargetSize,  onDeleted,  onPressed,  onSelected,  padding,  pressElevation,  selected,  selectedColor,  selectedShadowColor,  shadowColor,  shape,  showCheckmark,  side,  surfaceTintColor,  tapEnabled,  tooltip,  useDeleteButtonTooltip,  visualDensity}){
void onDeletedProxy() {
 engine.callFunctionPointer(scope, onDeleted!,[], {});
}

void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

void onSelectedProxy( value) {
 engine.callFunctionPointer(scope, onSelected!,[value], {});
}

return RawChip(autofocus:autofocus ?? false, avatar:avatar, avatarBorder:avatarBorder ?? const CircleBorder(), backgroundColor:backgroundColor, checkmarkColor:checkmarkColor, clipBehavior:clipBehavior ?? Clip.none, defaultProperties:defaultProperties, deleteButtonTooltipMessage:deleteButtonTooltipMessage, deleteIcon:deleteIcon, deleteIconColor:deleteIconColor, disabledColor:disabledColor, elevation:elevation, focusNode:focusNode, iconTheme:iconTheme, isEnabled:isEnabled ?? true, key:key, label:label, labelPadding:labelPadding, labelStyle:labelStyle, materialTapTargetSize:materialTapTargetSize, onDeleted:onDeleted == null ? null :onDeletedProxy, onPressed:onPressed == null ? null :onPressedProxy, onSelected:onSelected == null ? null :onSelectedProxy, padding:padding, pressElevation:pressElevation, selected:selected ?? false, selectedColor:selectedColor, selectedShadowColor:selectedShadowColor, shadowColor:shadowColor, shape:shape, showCheckmark:showCheckmark ?? true, side:side, surfaceTintColor:surfaceTintColor, tapEnabled:tapEnabled ?? true, tooltip:tooltip, useDeleteButtonTooltip:useDeleteButtonTooltip ?? true, visualDensity:visualDensity);
},
'package:flutter/src/material/chip.dart@RawChip@createState': (m.Scope scope, RawChip target)=>target.createState,

};
}