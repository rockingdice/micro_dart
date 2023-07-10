import 'package:flutter/src/widgets/raw_keyboard_listener.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@#as': (m.Scope scope, target)=>()=>target as RawKeyboardListener,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@#is': (m.Scope scope, target)=>()=>target is RawKeyboardListener,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@focusNode': (m.Scope scope, RawKeyboardListener target)=>target.focusNode,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@autofocus': (m.Scope scope, RawKeyboardListener target)=>target.autofocus,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@includeSemantics': (m.Scope scope, RawKeyboardListener target)=>target.includeSemantics,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@onKey': (m.Scope scope, RawKeyboardListener target)=>target.onKey,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@child': (m.Scope scope, RawKeyboardListener target)=>target.child,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@': (m.Scope scope)=>({ autofocus,  child,  focusNode,  includeSemantics,  key,  onKey}){
void onKeyProxy( value) {
 engine.callFunctionPointer(scope, onKey!,[value], {});
}

return RawKeyboardListener(autofocus:autofocus ?? false, child:child, focusNode:focusNode, includeSemantics:includeSemantics ?? true, key:key, onKey:onKey == null ? null :onKeyProxy);
},
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@createState': (m.Scope scope, RawKeyboardListener target)=>target.createState,
'package:flutter/src/widgets/raw_keyboard_listener.dart@RawKeyboardListener@debugFillProperties': (m.Scope scope, RawKeyboardListener target)=>target.debugFillProperties,

};
}