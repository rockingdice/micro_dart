import 'package:flutter/src/foundation/change_notifier.dart';
import 'dart:ui' show VoidCallback;
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/memory_allocations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/change_notifier.dart@Listenable@#as': (m.Scope scope, target)=>()=>target as Listenable,
'package:flutter/src/foundation/change_notifier.dart@Listenable@#is': (m.Scope scope, target)=>()=>target is Listenable,
'package:flutter/src/foundation/change_notifier.dart@Listenable@merge': (m.Scope scope)=>Listenable.merge,
'package:flutter/src/foundation/change_notifier.dart@Listenable@addListener': (m.Scope scope, Listenable target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/foundation/change_notifier.dart@Listenable@removeListener': (m.Scope scope, Listenable target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/foundation/change_notifier.dart@ValueListenable@#as': (m.Scope scope, target)=>()=>target as ValueListenable,
'package:flutter/src/foundation/change_notifier.dart@ValueListenable@#is': (m.Scope scope, target)=>()=>target is ValueListenable,
'package:flutter/src/foundation/change_notifier.dart@ValueListenable@value': (m.Scope scope, ValueListenable target)=>target.value,
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@#as': (m.Scope scope, target)=>()=>target as ChangeNotifier,
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@#is': (m.Scope scope, target)=>()=>target is ChangeNotifier,
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@hasListeners': (m.Scope scope, ChangeNotifier target)=>target.hasListeners,
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@': (m.Scope scope)=>(){
return ChangeNotifier();
},
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@debugAssertNotDisposed': (m.Scope scope)=>ChangeNotifier.debugAssertNotDisposed,
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@addListener': (m.Scope scope, ChangeNotifier target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@removeListener': (m.Scope scope, ChangeNotifier target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@dispose': (m.Scope scope, ChangeNotifier target)=>target.dispose,
'package:flutter/src/foundation/change_notifier.dart@ChangeNotifier@notifyListeners': (m.Scope scope, ChangeNotifier target)=>target.notifyListeners,
'package:flutter/src/foundation/change_notifier.dart@ValueNotifier@#as': (m.Scope scope, target)=>()=>target as ValueNotifier,
'package:flutter/src/foundation/change_notifier.dart@ValueNotifier@#is': (m.Scope scope, target)=>()=>target is ValueNotifier,
'package:flutter/src/foundation/change_notifier.dart@ValueNotifier@value': (m.Scope scope, ValueNotifier target)=>target.value,
'package:flutter/src/foundation/change_notifier.dart@ValueNotifier@value:set': (m.Scope scope, ValueNotifier target)=>(other)=>target.value=other,
'package:flutter/src/foundation/change_notifier.dart@ValueNotifier@': (m.Scope scope)=><T>( _value){
return ValueNotifier(_value);
},
'package:flutter/src/foundation/change_notifier.dart@ValueNotifier@toString': (m.Scope scope, ValueNotifier target)=>target.toString,

};
}