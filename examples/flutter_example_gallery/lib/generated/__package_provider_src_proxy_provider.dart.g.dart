import 'package:provider/src/proxy_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/proxy_provider.dart@ProxyProvider0@#as': (m.Scope scope, target)=>()=>target as ProxyProvider0,
'package:provider/src/proxy_provider.dart@ProxyProvider0@#is': (m.Scope scope, target)=>()=>target is ProxyProvider0,
'package:provider/src/proxy_provider.dart@ProxyProvider0@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R>( context,  value) {
return  engine.callFunctionPointer(scope, update!,[context, value], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider0(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/proxy_provider.dart@ProxyProvider@#as': (m.Scope scope, target)=>()=>target as ProxyProvider,
'package:provider/src/proxy_provider.dart@ProxyProvider@#is': (m.Scope scope, target)=>()=>target is ProxyProvider,
'package:provider/src/proxy_provider.dart@ProxyProvider@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R, T>( context,  value,  previous) {
return  engine.callFunctionPointer(scope, update!,[context, value, previous], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/proxy_provider.dart@ProxyProvider2@#as': (m.Scope scope, target)=>()=>target as ProxyProvider2,
'package:provider/src/proxy_provider.dart@ProxyProvider2@#is': (m.Scope scope, target)=>()=>target is ProxyProvider2,
'package:provider/src/proxy_provider.dart@ProxyProvider2@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R, T, T2>( context,  value,  value2,  previous) {
return  engine.callFunctionPointer(scope, update!,[context, value, value2, previous], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider2(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/proxy_provider.dart@ProxyProvider3@#as': (m.Scope scope, target)=>()=>target as ProxyProvider3,
'package:provider/src/proxy_provider.dart@ProxyProvider3@#is': (m.Scope scope, target)=>()=>target is ProxyProvider3,
'package:provider/src/proxy_provider.dart@ProxyProvider3@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R, T, T2, T3>( context,  value,  value2,  value3,  previous) {
return  engine.callFunctionPointer(scope, update!,[context, value, value2, value3, previous], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider3(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/proxy_provider.dart@ProxyProvider4@#as': (m.Scope scope, target)=>()=>target as ProxyProvider4,
'package:provider/src/proxy_provider.dart@ProxyProvider4@#is': (m.Scope scope, target)=>()=>target is ProxyProvider4,
'package:provider/src/proxy_provider.dart@ProxyProvider4@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R, T, T2, T3, T4>( context,  value,  value2,  value3,  value4,  previous) {
return  engine.callFunctionPointer(scope, update!,[context, value, value2, value3, value4, previous], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider4(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/proxy_provider.dart@ProxyProvider5@#as': (m.Scope scope, target)=>()=>target as ProxyProvider5,
'package:provider/src/proxy_provider.dart@ProxyProvider5@#is': (m.Scope scope, target)=>()=>target is ProxyProvider5,
'package:provider/src/proxy_provider.dart@ProxyProvider5@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R, T, T2, T3, T4, T5>( context,  value,  value2,  value3,  value4,  value5,  previous) {
return  engine.callFunctionPointer(scope, update!,[context, value, value2, value3, value4, value5, previous], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider5(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/proxy_provider.dart@ProxyProvider6@#as': (m.Scope scope, target)=>()=>target as ProxyProvider6,
'package:provider/src/proxy_provider.dart@ProxyProvider6@#is': (m.Scope scope, target)=>()=>target is ProxyProvider6,
'package:provider/src/proxy_provider.dart@ProxyProvider6@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

R createProxy<R>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<R>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

R updateProxy<R, T, T2, T3, T4, T5, T6>( context,  value,  value2,  value3,  value4,  value5,  value6,  previous) {
return  engine.callFunctionPointer(scope, update!,[context, value, value2, value3, value4, value5, value6, previous], {});
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return ProxyProvider6(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, update:updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},

};
}