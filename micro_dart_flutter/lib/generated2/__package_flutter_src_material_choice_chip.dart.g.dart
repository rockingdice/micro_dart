import 'package:flutter/src/material/choice_chip.dart';
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
'package:flutter/src/material/choice_chip.dart@ChoiceChip@#as': (m.Scope scope, target)=>()=>target as ChoiceChip,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@#is': (m.Scope scope, target)=>()=>target is ChoiceChip,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@avatar': (m.Scope scope, ChoiceChip target)=>target.avatar,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@label': (m.Scope scope, ChoiceChip target)=>target.label,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@labelStyle': (m.Scope scope, ChoiceChip target)=>target.labelStyle,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@labelPadding': (m.Scope scope, ChoiceChip target)=>target.labelPadding,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@onSelected': (m.Scope scope, ChoiceChip target)=>target.onSelected,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@pressElevation': (m.Scope scope, ChoiceChip target)=>target.pressElevation,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@selected': (m.Scope scope, ChoiceChip target)=>target.selected,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@disabledColor': (m.Scope scope, ChoiceChip target)=>target.disabledColor,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@selectedColor': (m.Scope scope, ChoiceChip target)=>target.selectedColor,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@tooltip': (m.Scope scope, ChoiceChip target)=>target.tooltip,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@side': (m.Scope scope, ChoiceChip target)=>target.side,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@shape': (m.Scope scope, ChoiceChip target)=>target.shape,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@clipBehavior': (m.Scope scope, ChoiceChip target)=>target.clipBehavior,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@focusNode': (m.Scope scope, ChoiceChip target)=>target.focusNode,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@autofocus': (m.Scope scope, ChoiceChip target)=>target.autofocus,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@backgroundColor': (m.Scope scope, ChoiceChip target)=>target.backgroundColor,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@padding': (m.Scope scope, ChoiceChip target)=>target.padding,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@visualDensity': (m.Scope scope, ChoiceChip target)=>target.visualDensity,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@materialTapTargetSize': (m.Scope scope, ChoiceChip target)=>target.materialTapTargetSize,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@elevation': (m.Scope scope, ChoiceChip target)=>target.elevation,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@shadowColor': (m.Scope scope, ChoiceChip target)=>target.shadowColor,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@surfaceTintColor': (m.Scope scope, ChoiceChip target)=>target.surfaceTintColor,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@selectedShadowColor': (m.Scope scope, ChoiceChip target)=>target.selectedShadowColor,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@avatarBorder': (m.Scope scope, ChoiceChip target)=>target.avatarBorder,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@iconTheme': (m.Scope scope, ChoiceChip target)=>target.iconTheme,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@isEnabled': (m.Scope scope, ChoiceChip target)=>target.isEnabled,
'package:flutter/src/material/choice_chip.dart@ChoiceChip@': (m.Scope scope)=>({ autofocus,  avatar,  avatarBorder,  backgroundColor,  clipBehavior,  disabledColor,  elevation,  focusNode,  iconTheme,  key,  label,  labelPadding,  labelStyle,  materialTapTargetSize,  onSelected,  padding,  pressElevation,  selected,  selectedColor,  selectedShadowColor,  shadowColor,  shape,  side,  surfaceTintColor,  tooltip,  visualDensity}){
void onSelectedProxy( value) {
 engine.callFunctionPointer(scope, onSelected!,[value], {});
}

return ChoiceChip(autofocus:autofocus ?? false, avatar:avatar, avatarBorder:avatarBorder ?? const CircleBorder(), backgroundColor:backgroundColor, clipBehavior:clipBehavior ?? Clip.none, disabledColor:disabledColor, elevation:elevation, focusNode:focusNode, iconTheme:iconTheme, key:key, label:label, labelPadding:labelPadding, labelStyle:labelStyle, materialTapTargetSize:materialTapTargetSize, onSelected:onSelected == null ? null :onSelectedProxy, padding:padding, pressElevation:pressElevation, selected:selected, selectedColor:selectedColor, selectedShadowColor:selectedShadowColor, shadowColor:shadowColor, shape:shape, side:side, surfaceTintColor:surfaceTintColor, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/choice_chip.dart@ChoiceChip@build': (m.Scope scope, ChoiceChip target)=>target.build,

};
}