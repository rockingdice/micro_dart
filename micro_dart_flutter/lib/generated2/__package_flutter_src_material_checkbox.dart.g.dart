import 'package:flutter/src/material/checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/checkbox_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/checkbox.dart@Checkbox@#as': (m.Scope scope, target)=>()=>target as Checkbox,
'package:flutter/src/material/checkbox.dart@Checkbox@#is': (m.Scope scope, target)=>()=>target is Checkbox,
'package:flutter/src/material/checkbox.dart@Checkbox@value': (m.Scope scope, Checkbox target)=>target.value,
'package:flutter/src/material/checkbox.dart@Checkbox@onChanged': (m.Scope scope, Checkbox target)=>target.onChanged,
'package:flutter/src/material/checkbox.dart@Checkbox@mouseCursor': (m.Scope scope, Checkbox target)=>target.mouseCursor,
'package:flutter/src/material/checkbox.dart@Checkbox@activeColor': (m.Scope scope, Checkbox target)=>target.activeColor,
'package:flutter/src/material/checkbox.dart@Checkbox@fillColor': (m.Scope scope, Checkbox target)=>target.fillColor,
'package:flutter/src/material/checkbox.dart@Checkbox@checkColor': (m.Scope scope, Checkbox target)=>target.checkColor,
'package:flutter/src/material/checkbox.dart@Checkbox@tristate': (m.Scope scope, Checkbox target)=>target.tristate,
'package:flutter/src/material/checkbox.dart@Checkbox@materialTapTargetSize': (m.Scope scope, Checkbox target)=>target.materialTapTargetSize,
'package:flutter/src/material/checkbox.dart@Checkbox@visualDensity': (m.Scope scope, Checkbox target)=>target.visualDensity,
'package:flutter/src/material/checkbox.dart@Checkbox@focusColor': (m.Scope scope, Checkbox target)=>target.focusColor,
'package:flutter/src/material/checkbox.dart@Checkbox@hoverColor': (m.Scope scope, Checkbox target)=>target.hoverColor,
'package:flutter/src/material/checkbox.dart@Checkbox@overlayColor': (m.Scope scope, Checkbox target)=>target.overlayColor,
'package:flutter/src/material/checkbox.dart@Checkbox@splashRadius': (m.Scope scope, Checkbox target)=>target.splashRadius,
'package:flutter/src/material/checkbox.dart@Checkbox@focusNode': (m.Scope scope, Checkbox target)=>target.focusNode,
'package:flutter/src/material/checkbox.dart@Checkbox@autofocus': (m.Scope scope, Checkbox target)=>target.autofocus,
'package:flutter/src/material/checkbox.dart@Checkbox@shape': (m.Scope scope, Checkbox target)=>target.shape,
'package:flutter/src/material/checkbox.dart@Checkbox@side': (m.Scope scope, Checkbox target)=>target.side,
'package:flutter/src/material/checkbox.dart@Checkbox@isError': (m.Scope scope, Checkbox target)=>target.isError,
'package:flutter/src/material/checkbox.dart@Checkbox@width': (m.Scope scope)=>Checkbox.width,
'package:flutter/src/material/checkbox.dart@Checkbox@': (m.Scope scope)=>({ activeColor,  autofocus,  checkColor,  fillColor,  focusColor,  focusNode,  hoverColor,  isError,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  overlayColor,  shape,  side,  splashRadius,  tristate,  value,  visualDensity}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return Checkbox(activeColor:activeColor, autofocus:autofocus ?? false, checkColor:checkColor, fillColor:fillColor, focusColor:focusColor, focusNode:focusNode, hoverColor:hoverColor, isError:isError ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, overlayColor:overlayColor, shape:shape, side:side, splashRadius:splashRadius, tristate:tristate ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/checkbox.dart@Checkbox@adaptive': (m.Scope scope)=>({ activeColor,  autofocus,  checkColor,  fillColor,  focusColor,  focusNode,  hoverColor,  isError,  key,  materialTapTargetSize,  mouseCursor,  onChanged,  overlayColor,  shape,  side,  splashRadius,  tristate,  value,  visualDensity}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return Checkbox.adaptive(activeColor:activeColor, autofocus:autofocus ?? false, checkColor:checkColor, fillColor:fillColor, focusColor:focusColor, focusNode:focusNode, hoverColor:hoverColor, isError:isError ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onChanged:onChangedProxy, overlayColor:overlayColor, shape:shape, side:side, splashRadius:splashRadius, tristate:tristate ?? false, value:value, visualDensity:visualDensity);
},
'package:flutter/src/material/checkbox.dart@Checkbox@createState': (m.Scope scope, Checkbox target)=>target.createState,

};
}