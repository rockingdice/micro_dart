import 'package:flutter/src/material/dropdown_menu.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/dropdown_menu_theme.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/menu_anchor.dart';
import 'package:flutter/src/material/menu_style.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@#as': (m.Scope scope, target)=>()=>target as DropdownMenuEntry,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@#is': (m.Scope scope, target)=>()=>target is DropdownMenuEntry,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@value': (m.Scope scope, DropdownMenuEntry target)=>target.value,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@label': (m.Scope scope, DropdownMenuEntry target)=>target.label,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@leadingIcon': (m.Scope scope, DropdownMenuEntry target)=>target.leadingIcon,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@trailingIcon': (m.Scope scope, DropdownMenuEntry target)=>target.trailingIcon,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@enabled': (m.Scope scope, DropdownMenuEntry target)=>target.enabled,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@style': (m.Scope scope, DropdownMenuEntry target)=>target.style,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenuEntry@': (m.Scope scope)=><T>({ enabled,  label,  leadingIcon,  style,  trailingIcon,  value}){
return DropdownMenuEntry(enabled:enabled ?? true, label:label, leadingIcon:leadingIcon, style:style, trailingIcon:trailingIcon, value:value);
},
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@#as': (m.Scope scope, target)=>()=>target as DropdownMenu,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@#is': (m.Scope scope, target)=>()=>target is DropdownMenu,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@enabled': (m.Scope scope, DropdownMenu target)=>target.enabled,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@width': (m.Scope scope, DropdownMenu target)=>target.width,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@menuHeight': (m.Scope scope, DropdownMenu target)=>target.menuHeight,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@leadingIcon': (m.Scope scope, DropdownMenu target)=>target.leadingIcon,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@trailingIcon': (m.Scope scope, DropdownMenu target)=>target.trailingIcon,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@label': (m.Scope scope, DropdownMenu target)=>target.label,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@hintText': (m.Scope scope, DropdownMenu target)=>target.hintText,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@helperText': (m.Scope scope, DropdownMenu target)=>target.helperText,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@errorText': (m.Scope scope, DropdownMenu target)=>target.errorText,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@selectedTrailingIcon': (m.Scope scope, DropdownMenu target)=>target.selectedTrailingIcon,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@enableFilter': (m.Scope scope, DropdownMenu target)=>target.enableFilter,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@enableSearch': (m.Scope scope, DropdownMenu target)=>target.enableSearch,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@textStyle': (m.Scope scope, DropdownMenu target)=>target.textStyle,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@inputDecorationTheme': (m.Scope scope, DropdownMenu target)=>target.inputDecorationTheme,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@menuStyle': (m.Scope scope, DropdownMenu target)=>target.menuStyle,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@controller': (m.Scope scope, DropdownMenu target)=>target.controller,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@initialSelection': (m.Scope scope, DropdownMenu target)=>target.initialSelection,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@onSelected': (m.Scope scope, DropdownMenu target)=>target.onSelected,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@requestFocusOnTap': (m.Scope scope, DropdownMenu target)=>target.requestFocusOnTap,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@dropdownMenuEntries': (m.Scope scope, DropdownMenu target)=>target.dropdownMenuEntries,
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@': (m.Scope scope)=>({ controller,  dropdownMenuEntries,  enableFilter,  enableSearch,  enabled,  errorText,  helperText,  hintText,  initialSelection,  inputDecorationTheme,  key,  label,  leadingIcon,  menuHeight,  menuStyle,  onSelected,  requestFocusOnTap,  selectedTrailingIcon,  textStyle,  trailingIcon,  width}){
void onSelectedProxy<T>( value) {
 engine.callFunctionPointer(scope, onSelected!,[value], {});
}

return DropdownMenu(controller:controller, dropdownMenuEntries:dropdownMenuEntries, enableFilter:enableFilter ?? false, enableSearch:enableSearch ?? true, enabled:enabled ?? true, errorText:errorText, helperText:helperText, hintText:hintText, initialSelection:initialSelection, inputDecorationTheme:inputDecorationTheme, key:key, label:label, leadingIcon:leadingIcon, menuHeight:menuHeight, menuStyle:menuStyle, onSelected:onSelected == null ? null :onSelectedProxy, requestFocusOnTap:requestFocusOnTap, selectedTrailingIcon:selectedTrailingIcon, textStyle:textStyle, trailingIcon:trailingIcon, width:width);
},
'package:flutter/src/material/dropdown_menu.dart@DropdownMenu@createState': (m.Scope scope, DropdownMenu target)=>target.createState,

};
}