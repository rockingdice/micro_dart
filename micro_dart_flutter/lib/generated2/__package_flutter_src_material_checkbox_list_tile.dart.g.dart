import 'package:flutter/src/material/checkbox_list_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'package:flutter/src/material/checkbox_theme.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@#as': (m.Scope scope, target)=>()=>target as CheckboxListTile,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@#is': (m.Scope scope, target)=>()=>target is CheckboxListTile,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@value': (m.Scope scope, CheckboxListTile target)=>target.value,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@onChanged': (m.Scope scope, CheckboxListTile target)=>target.onChanged,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@mouseCursor': (m.Scope scope, CheckboxListTile target)=>target.mouseCursor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@activeColor': (m.Scope scope, CheckboxListTile target)=>target.activeColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@fillColor': (m.Scope scope, CheckboxListTile target)=>target.fillColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@checkColor': (m.Scope scope, CheckboxListTile target)=>target.checkColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@hoverColor': (m.Scope scope, CheckboxListTile target)=>target.hoverColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@overlayColor': (m.Scope scope, CheckboxListTile target)=>target.overlayColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@splashRadius': (m.Scope scope, CheckboxListTile target)=>target.splashRadius,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@materialTapTargetSize': (m.Scope scope, CheckboxListTile target)=>target.materialTapTargetSize,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@visualDensity': (m.Scope scope, CheckboxListTile target)=>target.visualDensity,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@focusNode': (m.Scope scope, CheckboxListTile target)=>target.focusNode,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@autofocus': (m.Scope scope, CheckboxListTile target)=>target.autofocus,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@shape': (m.Scope scope, CheckboxListTile target)=>target.shape,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@side': (m.Scope scope, CheckboxListTile target)=>target.side,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@isError': (m.Scope scope, CheckboxListTile target)=>target.isError,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@tileColor': (m.Scope scope, CheckboxListTile target)=>target.tileColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@title': (m.Scope scope, CheckboxListTile target)=>target.title,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@subtitle': (m.Scope scope, CheckboxListTile target)=>target.subtitle,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@secondary': (m.Scope scope, CheckboxListTile target)=>target.secondary,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@isThreeLine': (m.Scope scope, CheckboxListTile target)=>target.isThreeLine,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@dense': (m.Scope scope, CheckboxListTile target)=>target.dense,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@selected': (m.Scope scope, CheckboxListTile target)=>target.selected,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@controlAffinity': (m.Scope scope, CheckboxListTile target)=>target.controlAffinity,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@contentPadding': (m.Scope scope, CheckboxListTile target)=>target.contentPadding,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@tristate': (m.Scope scope, CheckboxListTile target)=>target.tristate,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@checkboxShape': (m.Scope scope, CheckboxListTile target)=>target.checkboxShape,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@selectedTileColor': (m.Scope scope, CheckboxListTile target)=>target.selectedTileColor,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@onFocusChange': (m.Scope scope, CheckboxListTile target)=>target.onFocusChange,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@enableFeedback': (m.Scope scope, CheckboxListTile target)=>target.enableFeedback,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@enabled': (m.Scope scope, CheckboxListTile target)=>target.enabled,
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@': (m.Scope scope)=>({ activeColor,  autofocus,  checkColor,  checkboxShape,  contentPadding,  controlAffinity,  dense,  enableFeedback,  enabled,  fillColor,  focusNode,  hoverColor,  isError,  isThreeLine,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  onFocusChange,  overlayColor,  secondary,  selected,  selectedTileColor,  shape,  side,  splashRadius,  subtitle,  tileColor,  title,  tristate,  value,  visualDensity}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

return CheckboxListTile(activeColor:activeColor, autofocus:autofocus ?? false, checkColor:checkColor, checkboxShape:checkboxShape, contentPadding:contentPadding, controlAffinity:controlAffinity ?? ListTileControlAffinity.platform, dense:dense, enableFeedback:enableFeedback, enabled:enabled, fillColor:fillColor, focusNode:focusNode, hoverColor:hoverColor, isError:isError ?? false, isThreeLine:isThreeLine ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, overlayColor:overlayColor, secondary:secondary, selected:selected ?? false, selectedTileColor:selectedTileColor, shape:shape, side:side, splashRadius:splashRadius, subtitle:subtitle, tileColor:tileColor, title:title, tristate:tristate ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@adaptive': (m.Scope scope)=>({ activeColor,  autofocus,  checkColor,  checkboxShape,  contentPadding,  controlAffinity,  dense,  enableFeedback,  enabled,  fillColor,  focusNode,  hoverColor,  isError,  isThreeLine,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  onFocusChange,  overlayColor,  secondary,  selected,  selectedTileColor,  shape,  side,  splashRadius,  subtitle,  tileColor,  title,  tristate,  value,  visualDensity}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

return CheckboxListTile.adaptive(activeColor:activeColor, autofocus:autofocus ?? false, checkColor:checkColor, checkboxShape:checkboxShape, contentPadding:contentPadding, controlAffinity:controlAffinity ?? ListTileControlAffinity.platform, dense:dense, enableFeedback:enableFeedback, enabled:enabled, fillColor:fillColor, focusNode:focusNode, hoverColor:hoverColor, isError:isError ?? false, isThreeLine:isThreeLine ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, overlayColor:overlayColor, secondary:secondary, selected:selected ?? false, selectedTileColor:selectedTileColor, shape:shape, side:side, splashRadius:splashRadius, subtitle:subtitle, tileColor:tileColor, title:title, tristate:tristate ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/checkbox_list_tile.dart@CheckboxListTile@build': (m.Scope scope, CheckboxListTile target)=>target.build,

};
}