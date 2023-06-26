import 'package:flutter/src/material/radio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/radio_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/radio.dart@Radio@#as': (m.Scope scope, target)=>()=>target as Radio,
'package:flutter/src/material/radio.dart@Radio@#is': (m.Scope scope, target)=>()=>target is Radio,
'package:flutter/src/material/radio.dart@Radio@value': (m.Scope scope, Radio target)=>target.value,
'package:flutter/src/material/radio.dart@Radio@groupValue': (m.Scope scope, Radio target)=>target.groupValue,
'package:flutter/src/material/radio.dart@Radio@onChanged': (m.Scope scope, Radio target)=>target.onChanged,
'package:flutter/src/material/radio.dart@Radio@mouseCursor': (m.Scope scope, Radio target)=>target.mouseCursor,
'package:flutter/src/material/radio.dart@Radio@toggleable': (m.Scope scope, Radio target)=>target.toggleable,
'package:flutter/src/material/radio.dart@Radio@activeColor': (m.Scope scope, Radio target)=>target.activeColor,
'package:flutter/src/material/radio.dart@Radio@fillColor': (m.Scope scope, Radio target)=>target.fillColor,
'package:flutter/src/material/radio.dart@Radio@materialTapTargetSize': (m.Scope scope, Radio target)=>target.materialTapTargetSize,
'package:flutter/src/material/radio.dart@Radio@visualDensity': (m.Scope scope, Radio target)=>target.visualDensity,
'package:flutter/src/material/radio.dart@Radio@focusColor': (m.Scope scope, Radio target)=>target.focusColor,
'package:flutter/src/material/radio.dart@Radio@hoverColor': (m.Scope scope, Radio target)=>target.hoverColor,
'package:flutter/src/material/radio.dart@Radio@overlayColor': (m.Scope scope, Radio target)=>target.overlayColor,
'package:flutter/src/material/radio.dart@Radio@splashRadius': (m.Scope scope, Radio target)=>target.splashRadius,
'package:flutter/src/material/radio.dart@Radio@focusNode': (m.Scope scope, Radio target)=>target.focusNode,
'package:flutter/src/material/radio.dart@Radio@autofocus': (m.Scope scope, Radio target)=>target.autofocus,
'package:flutter/src/material/radio.dart@Radio@': (m.Scope scope)=>({ activeColor,  autofocus,  fillColor,  focusColor,  focusNode,  groupValue,  hoverColor,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  overlayColor,  splashRadius,  toggleable,  value,  visualDensity}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return Radio(activeColor:activeColor, autofocus:autofocus ?? false, fillColor:fillColor, focusColor:focusColor, focusNode:focusNode, groupValue:groupValue, hoverColor:hoverColor, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, overlayColor:overlayColor, splashRadius:splashRadius, toggleable:toggleable ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/radio.dart@Radio@adaptive': (m.Scope scope)=>({ activeColor,  autofocus,  fillColor,  focusColor,  focusNode,  groupValue,  hoverColor,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  overlayColor,  splashRadius,  toggleable,  value,  visualDensity}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return Radio.adaptive(activeColor:activeColor, autofocus:autofocus ?? false, fillColor:fillColor, focusColor:focusColor, focusNode:focusNode, groupValue:groupValue, hoverColor:hoverColor, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, overlayColor:overlayColor, splashRadius:splashRadius, toggleable:toggleable ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/radio.dart@Radio@createState': (m.Scope scope, Radio target)=>target.createState,

};
}