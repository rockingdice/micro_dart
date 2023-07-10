import 'package:flutter/src/cupertino/checkbox.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/constants.dart';
import 'package:flutter/src/cupertino/toggleable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@#as': (m.Scope scope, target)=>()=>target as CupertinoCheckbox,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@#is': (m.Scope scope, target)=>()=>target is CupertinoCheckbox,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@value': (m.Scope scope, CupertinoCheckbox target)=>target.value,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@onChanged': (m.Scope scope, CupertinoCheckbox target)=>target.onChanged,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@activeColor': (m.Scope scope, CupertinoCheckbox target)=>target.activeColor,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@inactiveColor': (m.Scope scope, CupertinoCheckbox target)=>target.inactiveColor,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@checkColor': (m.Scope scope, CupertinoCheckbox target)=>target.checkColor,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@tristate': (m.Scope scope, CupertinoCheckbox target)=>target.tristate,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@focusColor': (m.Scope scope, CupertinoCheckbox target)=>target.focusColor,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@focusNode': (m.Scope scope, CupertinoCheckbox target)=>target.focusNode,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@autofocus': (m.Scope scope, CupertinoCheckbox target)=>target.autofocus,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@side': (m.Scope scope, CupertinoCheckbox target)=>target.side,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@shape': (m.Scope scope, CupertinoCheckbox target)=>target.shape,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@width': (m.Scope scope)=>CupertinoCheckbox.width,
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@': (m.Scope scope)=>({ activeColor,  autofocus,  checkColor,  focusColor,  focusNode,  inactiveColor,  key,  onChanged,  shape,  side,  tristate,  value}){
void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return CupertinoCheckbox(activeColor:activeColor, autofocus:autofocus ?? false, checkColor:checkColor, focusColor:focusColor, focusNode:focusNode, inactiveColor:inactiveColor, key:key, onChanged:onChangedProxy, shape:shape, side:side, tristate:tristate ?? false, value:value);
},
'package:flutter/src/cupertino/checkbox.dart@CupertinoCheckbox@createState': (m.Scope scope, CupertinoCheckbox target)=>target.createState,

};
}