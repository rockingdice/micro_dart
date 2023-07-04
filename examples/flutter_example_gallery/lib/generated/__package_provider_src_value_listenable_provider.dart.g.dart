import 'package:provider/src/value_listenable_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nested/nested.dart';
import 'package:provider/src/provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/value_listenable_provider.dart@ValueListenableProvider@#as': (m.Scope scope, target)=>()=>target as ValueListenableProvider,
'package:provider/src/value_listenable_provider.dart@ValueListenableProvider@#is': (m.Scope scope, target)=>()=>target is ValueListenableProvider,
'package:provider/src/value_listenable_provider.dart@ValueListenableProvider@value': (m.Scope scope)=>({ child,  key,  updateShouldNotify,  value}){
bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ValueListenableProvider.value(child:child, key:key, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy, value:value);
},
'package:provider/src/value_listenable_provider.dart@ValueListenableProvider@buildWithChild': (m.Scope scope, ValueListenableProvider target)=>target.buildWithChild,
'package:provider/src/value_listenable_provider.dart@ValueListenableProvider@debugFillProperties': (m.Scope scope, ValueListenableProvider target)=>target.debugFillProperties,

};
}