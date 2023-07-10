import 'package:flutter/src/material/radio_list_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/list_tile_theme.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/radio.dart';
import 'package:flutter/src/material/radio_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@#as': (m.Scope scope, target)=>()=>target as RadioListTile,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@#is': (m.Scope scope, target)=>()=>target is RadioListTile,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@value': (m.Scope scope, RadioListTile target)=>target.value,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@groupValue': (m.Scope scope, RadioListTile target)=>target.groupValue,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@onChanged': (m.Scope scope, RadioListTile target)=>target.onChanged,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@mouseCursor': (m.Scope scope, RadioListTile target)=>target.mouseCursor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@toggleable': (m.Scope scope, RadioListTile target)=>target.toggleable,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@activeColor': (m.Scope scope, RadioListTile target)=>target.activeColor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@fillColor': (m.Scope scope, RadioListTile target)=>target.fillColor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@materialTapTargetSize': (m.Scope scope, RadioListTile target)=>target.materialTapTargetSize,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@hoverColor': (m.Scope scope, RadioListTile target)=>target.hoverColor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@overlayColor': (m.Scope scope, RadioListTile target)=>target.overlayColor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@splashRadius': (m.Scope scope, RadioListTile target)=>target.splashRadius,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@title': (m.Scope scope, RadioListTile target)=>target.title,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@subtitle': (m.Scope scope, RadioListTile target)=>target.subtitle,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@secondary': (m.Scope scope, RadioListTile target)=>target.secondary,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@isThreeLine': (m.Scope scope, RadioListTile target)=>target.isThreeLine,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@dense': (m.Scope scope, RadioListTile target)=>target.dense,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@selected': (m.Scope scope, RadioListTile target)=>target.selected,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@controlAffinity': (m.Scope scope, RadioListTile target)=>target.controlAffinity,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@autofocus': (m.Scope scope, RadioListTile target)=>target.autofocus,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@contentPadding': (m.Scope scope, RadioListTile target)=>target.contentPadding,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@shape': (m.Scope scope, RadioListTile target)=>target.shape,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@tileColor': (m.Scope scope, RadioListTile target)=>target.tileColor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@selectedTileColor': (m.Scope scope, RadioListTile target)=>target.selectedTileColor,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@visualDensity': (m.Scope scope, RadioListTile target)=>target.visualDensity,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@focusNode': (m.Scope scope, RadioListTile target)=>target.focusNode,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@onFocusChange': (m.Scope scope, RadioListTile target)=>target.onFocusChange,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@enableFeedback': (m.Scope scope, RadioListTile target)=>target.enableFeedback,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@checked': (m.Scope scope, RadioListTile target)=>target.checked,
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@': (m.Scope scope)=>({ activeColor,  autofocus,  contentPadding,  controlAffinity,  dense,  enableFeedback,  fillColor,  focusNode,  groupValue,  hoverColor,  isThreeLine,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  onFocusChange,  overlayColor,  secondary,  selected,  selectedTileColor,  shape,  splashRadius,  subtitle,  tileColor,  title,  toggleable,  value,  visualDensity}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

return RadioListTile(activeColor:activeColor, autofocus:autofocus ?? false, contentPadding:contentPadding, controlAffinity:controlAffinity ?? ListTileControlAffinity.platform, dense:dense, enableFeedback:enableFeedback, fillColor:fillColor, focusNode:focusNode, groupValue:groupValue, hoverColor:hoverColor, isThreeLine:isThreeLine ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, overlayColor:overlayColor, secondary:secondary, selected:selected ?? false, selectedTileColor:selectedTileColor, shape:shape, splashRadius:splashRadius, subtitle:subtitle, tileColor:tileColor, title:title, toggleable:toggleable ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@adaptive': (m.Scope scope)=>({ activeColor,  autofocus,  contentPadding,  controlAffinity,  dense,  enableFeedback,  fillColor,  focusNode,  groupValue,  hoverColor,  isThreeLine,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  onFocusChange,  overlayColor,  secondary,  selected,  selectedTileColor,  shape,  splashRadius,  subtitle,  tileColor,  title,  toggleable,  value,  visualDensity}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

return RadioListTile.adaptive(activeColor:activeColor, autofocus:autofocus ?? false, contentPadding:contentPadding, controlAffinity:controlAffinity ?? ListTileControlAffinity.platform, dense:dense, enableFeedback:enableFeedback, fillColor:fillColor, focusNode:focusNode, groupValue:groupValue, hoverColor:hoverColor, isThreeLine:isThreeLine ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, overlayColor:overlayColor, secondary:secondary, selected:selected ?? false, selectedTileColor:selectedTileColor, shape:shape, splashRadius:splashRadius, subtitle:subtitle, tileColor:tileColor, title:title, toggleable:toggleable ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/radio_list_tile.dart@RadioListTile@build': (m.Scope scope, RadioListTile target)=>target.build,

};
}