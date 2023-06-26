import 'package:flutter/src/material/dropdown.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scrollbar.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/dropdown.dart@DropdownMenuItem@#as': (m.Scope scope, target)=>()=>target as DropdownMenuItem,
'package:flutter/src/material/dropdown.dart@DropdownMenuItem@#is': (m.Scope scope, target)=>()=>target is DropdownMenuItem,
'package:flutter/src/material/dropdown.dart@DropdownMenuItem@onTap': (m.Scope scope, DropdownMenuItem target)=>target.onTap,
'package:flutter/src/material/dropdown.dart@DropdownMenuItem@value': (m.Scope scope, DropdownMenuItem target)=>target.value,
'package:flutter/src/material/dropdown.dart@DropdownMenuItem@enabled': (m.Scope scope, DropdownMenuItem target)=>target.enabled,
'package:flutter/src/material/dropdown.dart@DropdownMenuItem@': (m.Scope scope)=>({ alignment,  child,  enabled,  key,  onTap,  value}){
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return DropdownMenuItem(alignment:alignment ?? AlignmentDirectional.centerStart, child:child, enabled:enabled ?? true, key:key, onTap:onTap == null ? null :onTapProxy, value:value);
},
'package:flutter/src/material/dropdown.dart@DropdownButtonHideUnderline@#as': (m.Scope scope, target)=>()=>target as DropdownButtonHideUnderline,
'package:flutter/src/material/dropdown.dart@DropdownButtonHideUnderline@#is': (m.Scope scope, target)=>()=>target is DropdownButtonHideUnderline,
'package:flutter/src/material/dropdown.dart@DropdownButtonHideUnderline@': (m.Scope scope)=>DropdownButtonHideUnderline,
'package:flutter/src/material/dropdown.dart@DropdownButtonHideUnderline@at': (m.Scope scope)=>DropdownButtonHideUnderline.at,
'package:flutter/src/material/dropdown.dart@DropdownButtonHideUnderline@updateShouldNotify': (m.Scope scope, DropdownButtonHideUnderline target)=>target.updateShouldNotify,
'package:flutter/src/material/dropdown.dart@DropdownButton@#as': (m.Scope scope, target)=>()=>target as DropdownButton,
'package:flutter/src/material/dropdown.dart@DropdownButton@#is': (m.Scope scope, target)=>()=>target is DropdownButton,
'package:flutter/src/material/dropdown.dart@DropdownButton@items': (m.Scope scope, DropdownButton target)=>target.items,
'package:flutter/src/material/dropdown.dart@DropdownButton@value': (m.Scope scope, DropdownButton target)=>target.value,
'package:flutter/src/material/dropdown.dart@DropdownButton@hint': (m.Scope scope, DropdownButton target)=>target.hint,
'package:flutter/src/material/dropdown.dart@DropdownButton@disabledHint': (m.Scope scope, DropdownButton target)=>target.disabledHint,
'package:flutter/src/material/dropdown.dart@DropdownButton@onChanged': (m.Scope scope, DropdownButton target)=>target.onChanged,
'package:flutter/src/material/dropdown.dart@DropdownButton@onTap': (m.Scope scope, DropdownButton target)=>target.onTap,
'package:flutter/src/material/dropdown.dart@DropdownButton@selectedItemBuilder': (m.Scope scope, DropdownButton target)=>target.selectedItemBuilder,
'package:flutter/src/material/dropdown.dart@DropdownButton@elevation': (m.Scope scope, DropdownButton target)=>target.elevation,
'package:flutter/src/material/dropdown.dart@DropdownButton@style': (m.Scope scope, DropdownButton target)=>target.style,
'package:flutter/src/material/dropdown.dart@DropdownButton@underline': (m.Scope scope, DropdownButton target)=>target.underline,
'package:flutter/src/material/dropdown.dart@DropdownButton@icon': (m.Scope scope, DropdownButton target)=>target.icon,
'package:flutter/src/material/dropdown.dart@DropdownButton@iconDisabledColor': (m.Scope scope, DropdownButton target)=>target.iconDisabledColor,
'package:flutter/src/material/dropdown.dart@DropdownButton@iconEnabledColor': (m.Scope scope, DropdownButton target)=>target.iconEnabledColor,
'package:flutter/src/material/dropdown.dart@DropdownButton@iconSize': (m.Scope scope, DropdownButton target)=>target.iconSize,
'package:flutter/src/material/dropdown.dart@DropdownButton@isDense': (m.Scope scope, DropdownButton target)=>target.isDense,
'package:flutter/src/material/dropdown.dart@DropdownButton@isExpanded': (m.Scope scope, DropdownButton target)=>target.isExpanded,
'package:flutter/src/material/dropdown.dart@DropdownButton@itemHeight': (m.Scope scope, DropdownButton target)=>target.itemHeight,
'package:flutter/src/material/dropdown.dart@DropdownButton@focusColor': (m.Scope scope, DropdownButton target)=>target.focusColor,
'package:flutter/src/material/dropdown.dart@DropdownButton@focusNode': (m.Scope scope, DropdownButton target)=>target.focusNode,
'package:flutter/src/material/dropdown.dart@DropdownButton@autofocus': (m.Scope scope, DropdownButton target)=>target.autofocus,
'package:flutter/src/material/dropdown.dart@DropdownButton@dropdownColor': (m.Scope scope, DropdownButton target)=>target.dropdownColor,
'package:flutter/src/material/dropdown.dart@DropdownButton@padding': (m.Scope scope, DropdownButton target)=>target.padding,
'package:flutter/src/material/dropdown.dart@DropdownButton@menuMaxHeight': (m.Scope scope, DropdownButton target)=>target.menuMaxHeight,
'package:flutter/src/material/dropdown.dart@DropdownButton@enableFeedback': (m.Scope scope, DropdownButton target)=>target.enableFeedback,
'package:flutter/src/material/dropdown.dart@DropdownButton@alignment': (m.Scope scope, DropdownButton target)=>target.alignment,
'package:flutter/src/material/dropdown.dart@DropdownButton@borderRadius': (m.Scope scope, DropdownButton target)=>target.borderRadius,
'package:flutter/src/material/dropdown.dart@DropdownButton@': (m.Scope scope)=>({ alignment,  autofocus,  borderRadius,  disabledHint,  dropdownColor,  elevation,  enableFeedback,  focusColor,  focusNode,  hint,  icon,  iconDisabledColor,  iconEnabledColor,  iconSize,  isDense,  isExpanded,  itemHeight,  items,  key,  menuMaxHeight,  onChanged,  onTap,  padding,  selectedItemBuilder,  style,  underline,  value}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

List<Widget> selectedItemBuilderProxy( context) {
return  engine.callFunctionPointer(scope, selectedItemBuilder!,[context], {});
}

return DropdownButton(alignment:alignment ?? AlignmentDirectional.centerStart, autofocus:autofocus ?? false, borderRadius:borderRadius, disabledHint:disabledHint, dropdownColor:dropdownColor, elevation:elevation ?? 8, enableFeedback:enableFeedback, focusColor:focusColor, focusNode:focusNode, hint:hint, icon:icon, iconDisabledColor:iconDisabledColor, iconEnabledColor:iconEnabledColor, iconSize:iconSize ?? 24.0, isDense:isDense ?? false, isExpanded:isExpanded ?? false, itemHeight:itemHeight ?? kMinInteractiveDimension, items:items, key:key, menuMaxHeight:menuMaxHeight, onChanged:onChangedProxy, onTap:onTap == null ? null :onTapProxy, padding:padding, selectedItemBuilder:selectedItemBuilder == null ? null :selectedItemBuilderProxy, style:style, underline:underline, value:value);
},
'package:flutter/src/material/dropdown.dart@DropdownButton@createState': (m.Scope scope, DropdownButton target)=>target.createState,
'package:flutter/src/material/dropdown.dart@DropdownButtonFormField@#as': (m.Scope scope, target)=>()=>target as DropdownButtonFormField,
'package:flutter/src/material/dropdown.dart@DropdownButtonFormField@#is': (m.Scope scope, target)=>()=>target is DropdownButtonFormField,
'package:flutter/src/material/dropdown.dart@DropdownButtonFormField@onChanged': (m.Scope scope, DropdownButtonFormField target)=>target.onChanged,
'package:flutter/src/material/dropdown.dart@DropdownButtonFormField@decoration': (m.Scope scope, DropdownButtonFormField target)=>target.decoration,
'package:flutter/src/material/dropdown.dart@DropdownButtonFormField@': (m.Scope scope)=>({ alignment,  autofocus,  autovalidateMode,  borderRadius,  decoration,  disabledHint,  dropdownColor,  elevation,  enableFeedback,  focusColor,  focusNode,  hint,  icon,  iconDisabledColor,  iconEnabledColor,  iconSize,  isDense,  isExpanded,  itemHeight,  items,  key,  menuMaxHeight,  onChanged,  onSaved,  onTap,  padding,  selectedItemBuilder,  style,  validator,  value}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onSavedProxy<T>( newValue) {
 engine.callFunctionPointer(scope, onSaved!,[newValue], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

List<Widget> selectedItemBuilderProxy( context) {
return  engine.callFunctionPointer(scope, selectedItemBuilder!,[context], {});
}

String validatorProxy<T>( value) {
return  engine.callFunctionPointer(scope, validator!,[value], {});
}

return DropdownButtonFormField(alignment:alignment ?? AlignmentDirectional.centerStart, autofocus:autofocus ?? false, autovalidateMode:autovalidateMode, borderRadius:borderRadius, decoration:decoration, disabledHint:disabledHint, dropdownColor:dropdownColor, elevation:elevation ?? 8, enableFeedback:enableFeedback, focusColor:focusColor, focusNode:focusNode, hint:hint, icon:icon, iconDisabledColor:iconDisabledColor, iconEnabledColor:iconEnabledColor, iconSize:iconSize ?? 24.0, isDense:isDense ?? true, isExpanded:isExpanded ?? false, itemHeight:itemHeight, items:items, key:key, menuMaxHeight:menuMaxHeight, onChanged:onChangedProxy, onSaved:onSaved == null ? null :onSavedProxy, onTap:onTap == null ? null :onTapProxy, padding:padding, selectedItemBuilder:selectedItemBuilder == null ? null :selectedItemBuilderProxy, style:style, validator:validator == null ? null :validatorProxy, value:value);
},
'package:flutter/src/material/dropdown.dart@DropdownButtonFormField@createState': (m.Scope scope, DropdownButtonFormField target)=>target.createState,

};
}