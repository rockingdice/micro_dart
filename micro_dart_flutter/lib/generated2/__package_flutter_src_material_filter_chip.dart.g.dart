import 'package:flutter/src/material/filter_chip.dart';
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
'package:flutter/src/material/filter_chip.dart@FilterChip@#as': (m.Scope scope, target)=>()=>target as FilterChip,
'package:flutter/src/material/filter_chip.dart@FilterChip@#is': (m.Scope scope, target)=>()=>target is FilterChip,
'package:flutter/src/material/filter_chip.dart@FilterChip@avatar': (m.Scope scope, FilterChip target)=>target.avatar,
'package:flutter/src/material/filter_chip.dart@FilterChip@label': (m.Scope scope, FilterChip target)=>target.label,
'package:flutter/src/material/filter_chip.dart@FilterChip@labelStyle': (m.Scope scope, FilterChip target)=>target.labelStyle,
'package:flutter/src/material/filter_chip.dart@FilterChip@labelPadding': (m.Scope scope, FilterChip target)=>target.labelPadding,
'package:flutter/src/material/filter_chip.dart@FilterChip@selected': (m.Scope scope, FilterChip target)=>target.selected,
'package:flutter/src/material/filter_chip.dart@FilterChip@onSelected': (m.Scope scope, FilterChip target)=>target.onSelected,
'package:flutter/src/material/filter_chip.dart@FilterChip@pressElevation': (m.Scope scope, FilterChip target)=>target.pressElevation,
'package:flutter/src/material/filter_chip.dart@FilterChip@disabledColor': (m.Scope scope, FilterChip target)=>target.disabledColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@selectedColor': (m.Scope scope, FilterChip target)=>target.selectedColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@tooltip': (m.Scope scope, FilterChip target)=>target.tooltip,
'package:flutter/src/material/filter_chip.dart@FilterChip@side': (m.Scope scope, FilterChip target)=>target.side,
'package:flutter/src/material/filter_chip.dart@FilterChip@shape': (m.Scope scope, FilterChip target)=>target.shape,
'package:flutter/src/material/filter_chip.dart@FilterChip@clipBehavior': (m.Scope scope, FilterChip target)=>target.clipBehavior,
'package:flutter/src/material/filter_chip.dart@FilterChip@focusNode': (m.Scope scope, FilterChip target)=>target.focusNode,
'package:flutter/src/material/filter_chip.dart@FilterChip@autofocus': (m.Scope scope, FilterChip target)=>target.autofocus,
'package:flutter/src/material/filter_chip.dart@FilterChip@backgroundColor': (m.Scope scope, FilterChip target)=>target.backgroundColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@padding': (m.Scope scope, FilterChip target)=>target.padding,
'package:flutter/src/material/filter_chip.dart@FilterChip@visualDensity': (m.Scope scope, FilterChip target)=>target.visualDensity,
'package:flutter/src/material/filter_chip.dart@FilterChip@materialTapTargetSize': (m.Scope scope, FilterChip target)=>target.materialTapTargetSize,
'package:flutter/src/material/filter_chip.dart@FilterChip@elevation': (m.Scope scope, FilterChip target)=>target.elevation,
'package:flutter/src/material/filter_chip.dart@FilterChip@shadowColor': (m.Scope scope, FilterChip target)=>target.shadowColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@surfaceTintColor': (m.Scope scope, FilterChip target)=>target.surfaceTintColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@selectedShadowColor': (m.Scope scope, FilterChip target)=>target.selectedShadowColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@showCheckmark': (m.Scope scope, FilterChip target)=>target.showCheckmark,
'package:flutter/src/material/filter_chip.dart@FilterChip@checkmarkColor': (m.Scope scope, FilterChip target)=>target.checkmarkColor,
'package:flutter/src/material/filter_chip.dart@FilterChip@avatarBorder': (m.Scope scope, FilterChip target)=>target.avatarBorder,
'package:flutter/src/material/filter_chip.dart@FilterChip@iconTheme': (m.Scope scope, FilterChip target)=>target.iconTheme,
'package:flutter/src/material/filter_chip.dart@FilterChip@isEnabled': (m.Scope scope, FilterChip target)=>target.isEnabled,
'package:flutter/src/material/filter_chip.dart@FilterChip@': (m.Scope scope)=>({ autofocus,  avatar,  avatarBorder,  backgroundColor,  checkmarkColor,  clipBehavior,  disabledColor,  elevation,  focusNode,  iconTheme,  key,  label,  labelPadding,  labelStyle,  materialTapTargetSize,  onSelected,  padding,  pressElevation,  selected,  selectedColor,  selectedShadowColor,  shadowColor,  shape,  showCheckmark,  side,  surfaceTintColor,  tooltip,  visualDensity}){
void onSelectedProxy( value) {
 engine.callFunctionPointer(scope, onSelected!,[value], {});
}

return FilterChip(autofocus:autofocus ?? false, avatar:avatar, avatarBorder:avatarBorder ?? const CircleBorder(), backgroundColor:backgroundColor, checkmarkColor:checkmarkColor, clipBehavior:clipBehavior ?? Clip.none, disabledColor:disabledColor, elevation:elevation, focusNode:focusNode, iconTheme:iconTheme, key:key, label:label, labelPadding:labelPadding, labelStyle:labelStyle, materialTapTargetSize:materialTapTargetSize, onSelected:onSelectedProxy, padding:padding, pressElevation:pressElevation, selected:selected ?? false, selectedColor:selectedColor, selectedShadowColor:selectedShadowColor, shadowColor:shadowColor, shape:shape, showCheckmark:showCheckmark, side:side, surfaceTintColor:surfaceTintColor, tooltip:tooltip, visualDensity:visualDensity);
},
'package:flutter/src/material/filter_chip.dart@FilterChip@build': (m.Scope scope, FilterChip target)=>target.build,

};
}