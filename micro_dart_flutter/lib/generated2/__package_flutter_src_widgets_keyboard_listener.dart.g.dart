import 'package:flutter/src/widgets/keyboard_listener.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@#as': (m.Scope scope, target)=>()=>target as KeyboardListener,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@#is': (m.Scope scope, target)=>()=>target is KeyboardListener,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@focusNode': (m.Scope scope, KeyboardListener target)=>target.focusNode,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@autofocus': (m.Scope scope, KeyboardListener target)=>target.autofocus,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@includeSemantics': (m.Scope scope, KeyboardListener target)=>target.includeSemantics,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@onKeyEvent': (m.Scope scope, KeyboardListener target)=>target.onKeyEvent,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@child': (m.Scope scope, KeyboardListener target)=>target.child,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@': (m.Scope scope)=>({ autofocus,  child,  focusNode,  includeSemantics,  key,  onKeyEvent}){
void onKeyEventProxy( value) {
 engine.callFunctionPointer(scope, onKeyEvent!,[value], {});
}

return KeyboardListener(autofocus:autofocus ?? false, child:child, focusNode:focusNode, includeSemantics:includeSemantics ?? true, key:key, onKeyEvent:onKeyEvent == null ? null :onKeyEventProxy);
},
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@build': (m.Scope scope, KeyboardListener target)=>target.build,
'package:flutter/src/widgets/keyboard_listener.dart@KeyboardListener@debugFillProperties': (m.Scope scope, KeyboardListener target)=>target.debugFillProperties,

};
}