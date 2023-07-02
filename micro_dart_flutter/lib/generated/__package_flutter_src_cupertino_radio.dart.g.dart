import 'package:flutter/src/cupertino/radio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/toggleable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@#as': (m.Scope scope, target)=>()=>target as CupertinoRadio,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@#is': (m.Scope scope, target)=>()=>target is CupertinoRadio,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@value': (m.Scope scope, CupertinoRadio target)=>target.value,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@groupValue': (m.Scope scope, CupertinoRadio target)=>target.groupValue,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@onChanged': (m.Scope scope, CupertinoRadio target)=>target.onChanged,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@toggleable': (m.Scope scope, CupertinoRadio target)=>target.toggleable,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@activeColor': (m.Scope scope, CupertinoRadio target)=>target.activeColor,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@inactiveColor': (m.Scope scope, CupertinoRadio target)=>target.inactiveColor,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@fillColor': (m.Scope scope, CupertinoRadio target)=>target.fillColor,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@focusColor': (m.Scope scope, CupertinoRadio target)=>target.focusColor,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@focusNode': (m.Scope scope, CupertinoRadio target)=>target.focusNode,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@autofocus': (m.Scope scope, CupertinoRadio target)=>target.autofocus,
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@': (m.Scope scope)=>({ activeColor,  autofocus,  fillColor,  focusColor,  focusNode,  groupValue,  inactiveColor,  key,  onChanged,  toggleable,  value}){
void onChangedProxy<T>( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

return CupertinoRadio(activeColor:activeColor, autofocus:autofocus ?? false, fillColor:fillColor, focusColor:focusColor, focusNode:focusNode, groupValue:groupValue, inactiveColor:inactiveColor, key:key, onChanged:onChangedProxy, toggleable:toggleable ?? false, value:value);
},
'package:flutter/src/cupertino/radio.dart@CupertinoRadio@createState': (m.Scope scope, CupertinoRadio target)=>target.createState,

};
}