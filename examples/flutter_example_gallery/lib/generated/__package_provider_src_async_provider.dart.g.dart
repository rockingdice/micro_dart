import 'package:provider/src/async_provider.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/async_provider.dart@StreamProvider@#as': (m.Scope scope, target)=>()=>target as StreamProvider,
'package:provider/src/async_provider.dart@StreamProvider@#is': (m.Scope scope, target)=>()=>target is StreamProvider,
'package:provider/src/async_provider.dart@StreamProvider@': (m.Scope scope)=>({ builder,  catchError,  child,  create,  initialData,  key,  lazy,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T catchErrorProxy<T>( context,  error) {
return  engine.callFunctionPointer(scope, catchError!,[context, error], {});
}

Stream<T> createProxy<T>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return StreamProvider(builder:builder == null ? null :builderProxy, catchError:catchError == null ? null :catchErrorProxy, child:child, create:createProxy, initialData:initialData, key:key, lazy:lazy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/async_provider.dart@StreamProvider@value': (m.Scope scope)=>({ builder,  catchError,  child,  initialData,  key,  lazy,  updateShouldNotify,  value}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T catchErrorProxy<T>( context,  error) {
return  engine.callFunctionPointer(scope, catchError!,[context, error], {});
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return StreamProvider.value(builder:builder == null ? null :builderProxy, catchError:catchError == null ? null :catchErrorProxy, child:child, initialData:initialData, key:key, lazy:lazy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy, value:value);
},
'package:provider/src/async_provider.dart@FutureProvider@#as': (m.Scope scope, target)=>()=>target as FutureProvider,
'package:provider/src/async_provider.dart@FutureProvider@#is': (m.Scope scope, target)=>()=>target is FutureProvider,
'package:provider/src/async_provider.dart@FutureProvider@': (m.Scope scope)=>({ builder,  catchError,  child,  create,  initialData,  key,  lazy,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T catchErrorProxy<T>( context,  error) {
return  engine.callFunctionPointer(scope, catchError!,[context, error], {});
}

Future<T> createProxy<T>( context) async{
return await engine.callFunctionPointerAsync(scope, create!,[context], {});
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return FutureProvider(builder:builder == null ? null :builderProxy, catchError:catchError == null ? null :catchErrorProxy, child:child, create:createProxy, initialData:initialData, key:key, lazy:lazy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/async_provider.dart@FutureProvider@value': (m.Scope scope)=>({ builder,  catchError,  child,  initialData,  key,  updateShouldNotify,  value}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T catchErrorProxy<T>( context,  error) {
return  engine.callFunctionPointer(scope, catchError!,[context, error], {});
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return FutureProvider.value(builder:builder == null ? null :builderProxy, catchError:catchError == null ? null :catchErrorProxy, child:child, initialData:initialData, key:key, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy, value:value);
},

};
}