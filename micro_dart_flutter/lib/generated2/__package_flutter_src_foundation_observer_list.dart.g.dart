import 'package:flutter/src/foundation/observer_list.dart';
import 'dart:collection';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/observer_list.dart@ObserverList@#as': (m.Scope scope, target)=>()=>target as ObserverList,
'package:flutter/src/foundation/observer_list.dart@ObserverList@#is': (m.Scope scope, target)=>()=>target is ObserverList,
'package:flutter/src/foundation/observer_list.dart@ObserverList@iterator': (m.Scope scope, ObserverList target)=>target.iterator,
'package:flutter/src/foundation/observer_list.dart@ObserverList@isEmpty': (m.Scope scope, ObserverList target)=>target.isEmpty,
'package:flutter/src/foundation/observer_list.dart@ObserverList@isNotEmpty': (m.Scope scope, ObserverList target)=>target.isNotEmpty,
'package:flutter/src/foundation/observer_list.dart@ObserverList@': (m.Scope scope)=><T>(){
return ObserverList();
},
'package:flutter/src/foundation/observer_list.dart@ObserverList@add': (m.Scope scope, ObserverList target)=>target.add,
'package:flutter/src/foundation/observer_list.dart@ObserverList@remove': (m.Scope scope, ObserverList target)=>target.remove,
'package:flutter/src/foundation/observer_list.dart@ObserverList@clear': (m.Scope scope, ObserverList target)=>target.clear,
'package:flutter/src/foundation/observer_list.dart@ObserverList@contains': (m.Scope scope, ObserverList target)=>target.contains,
'package:flutter/src/foundation/observer_list.dart@ObserverList@toList': (m.Scope scope, ObserverList target)=>target.toList,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@#as': (m.Scope scope, target)=>()=>target as HashedObserverList,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@#is': (m.Scope scope, target)=>()=>target is HashedObserverList,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@iterator': (m.Scope scope, HashedObserverList target)=>target.iterator,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@isEmpty': (m.Scope scope, HashedObserverList target)=>target.isEmpty,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@isNotEmpty': (m.Scope scope, HashedObserverList target)=>target.isNotEmpty,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@': (m.Scope scope)=><T>(){
return HashedObserverList();
},
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@add': (m.Scope scope, HashedObserverList target)=>target.add,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@remove': (m.Scope scope, HashedObserverList target)=>target.remove,
'package:flutter/src/foundation/observer_list.dart@HashedObserverList@contains': (m.Scope scope, HashedObserverList target)=>target.contains,

};
}