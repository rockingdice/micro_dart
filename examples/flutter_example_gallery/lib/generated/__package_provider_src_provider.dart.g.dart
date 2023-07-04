import 'package:provider/src/provider.dart';
import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nested/nested.dart';
import 'package:provider/src/reassemble_handler.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/provider.dart@MultiProvider@#as': (m.Scope scope, target)=>()=>target as MultiProvider,
'package:provider/src/provider.dart@MultiProvider@#is': (m.Scope scope, target)=>()=>target is MultiProvider,
'package:provider/src/provider.dart@MultiProvider@': (m.Scope scope)=>({ builder,  child,  key,  providers}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

return MultiProvider(builder:builder == null ? null :builderProxy, child:child, key:key, providers:providers);
},
'package:provider/src/provider.dart@Provider@#as': (m.Scope scope, target)=>()=>target as Provider,
'package:provider/src/provider.dart@Provider@#is': (m.Scope scope, target)=>()=>target is Provider,
'package:provider/src/provider.dart@Provider@debugCheckInvalidValueType': (m.Scope scope)=>Provider.debugCheckInvalidValueType,
'package:provider/src/provider.dart@Provider@debugCheckInvalidValueType:set': (m.Scope scope)=>(other)=>Provider.debugCheckInvalidValueType=other,
'package:provider/src/provider.dart@Provider@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T createProxy<T>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<T>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

return Provider(builder:builder == null ? null :builderProxy, child:child, create:createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy);
},
'package:provider/src/provider.dart@Provider@value': (m.Scope scope)=>({ builder,  child,  key,  updateShouldNotify,  value}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return Provider.value(builder:builder == null ? null :builderProxy, child:child, key:key, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy, value:value);
},
'package:provider/src/provider.dart@Provider@of': (m.Scope scope)=>Provider.of,
'package:provider/src/provider.dart@ProviderNullException@#as': (m.Scope scope, target)=>()=>target as ProviderNullException,
'package:provider/src/provider.dart@ProviderNullException@#is': (m.Scope scope, target)=>()=>target is ProviderNullException,
'package:provider/src/provider.dart@ProviderNullException@valueType': (m.Scope scope, ProviderNullException target)=>target.valueType,
'package:provider/src/provider.dart@ProviderNullException@widgetType': (m.Scope scope, ProviderNullException target)=>target.widgetType,
'package:provider/src/provider.dart@ProviderNullException@': (m.Scope scope)=>( valueType,  widgetType){
return ProviderNullException(valueType, widgetType);
},
'package:provider/src/provider.dart@ProviderNullException@toString': (m.Scope scope, ProviderNullException target)=>target.toString,
'package:provider/src/provider.dart@ProviderNotFoundException@#as': (m.Scope scope, target)=>()=>target as ProviderNotFoundException,
'package:provider/src/provider.dart@ProviderNotFoundException@#is': (m.Scope scope, target)=>()=>target is ProviderNotFoundException,
'package:provider/src/provider.dart@ProviderNotFoundException@valueType': (m.Scope scope, ProviderNotFoundException target)=>target.valueType,
'package:provider/src/provider.dart@ProviderNotFoundException@widgetType': (m.Scope scope, ProviderNotFoundException target)=>target.widgetType,
'package:provider/src/provider.dart@ProviderNotFoundException@': (m.Scope scope)=>( valueType,  widgetType){
return ProviderNotFoundException(valueType, widgetType);
},
'package:provider/src/provider.dart@ProviderNotFoundException@toString': (m.Scope scope, ProviderNotFoundException target)=>target.toString,
'package:provider/src/provider.dart@DeferredInheritedProvider@#as': (m.Scope scope, target)=>()=>target as DeferredInheritedProvider,
'package:provider/src/provider.dart@DeferredInheritedProvider@#is': (m.Scope scope, target)=>()=>target is DeferredInheritedProvider,
'package:provider/src/provider.dart@DeferredInheritedProvider@': (m.Scope scope)=>({ builder,  child,  create,  dispose,  key,  lazy,  startListening,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T createProxy<T>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void disposeProxy<T>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

void Function() startListeningProxy<R, T>( context,  setState,  controller,  value) {
var $fp =   engine.callFunctionPointer(scope, startListening!,[context, setState, controller, value], {});
void $f() {
 engine.callFunctionPointer(scope, $fp!,[], {});
}

return $f;
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return DeferredInheritedProvider(builder:builder == null ? null :builderProxy, child:child, create:createProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, startListening:startListeningProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/provider.dart@DeferredInheritedProvider@value': (m.Scope scope)=>({ builder,  child,  key,  lazy,  startListening,  updateShouldNotify,  value}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

void Function() startListeningProxy<R, T>( context,  setState,  controller,  value) {
var $fp =   engine.callFunctionPointer(scope, startListening!,[context, setState, controller, value], {});
void $f() {
 engine.callFunctionPointer(scope, $fp!,[], {});
}

return $f;
}

bool updateShouldNotifyProxy<R>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return DeferredInheritedProvider.value(builder:builder == null ? null :builderProxy, child:child, key:key, lazy:lazy, startListening:startListeningProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy, value:value);
},
'package:provider/src/provider.dart@PostEventCall@#as': (m.Scope scope, target)=>()=>target as PostEventCall,
'package:provider/src/provider.dart@PostEventCall@#is': (m.Scope scope, target)=>()=>target is PostEventCall,
'package:provider/src/provider.dart@PostEventCall@eventKind': (m.Scope scope, PostEventCall target)=>target.eventKind,
'package:provider/src/provider.dart@PostEventCall@event': (m.Scope scope, PostEventCall target)=>target.event,
'package:provider/src/provider.dart@PostEventSpy@#as': (m.Scope scope, target)=>()=>target as PostEventSpy,
'package:provider/src/provider.dart@PostEventSpy@#is': (m.Scope scope, target)=>()=>target is PostEventSpy,
'package:provider/src/provider.dart@PostEventSpy@logs': (m.Scope scope, PostEventSpy target)=>target.logs,
'package:provider/src/provider.dart@PostEventSpy@dispose': (m.Scope scope, PostEventSpy target)=>target.dispose,
'package:provider/src/provider.dart@ProviderNode@#as': (m.Scope scope, target)=>()=>target as ProviderNode,
'package:provider/src/provider.dart@ProviderNode@#is': (m.Scope scope, target)=>()=>target is ProviderNode,
'package:provider/src/provider.dart@ProviderNode@id': (m.Scope scope, ProviderNode target)=>target.id,
'package:provider/src/provider.dart@ProviderNode@type': (m.Scope scope, ProviderNode target)=>target.type,
'package:provider/src/provider.dart@ProviderNode@childrenNodeIds': (m.Scope scope, ProviderNode target)=>target.childrenNodeIds,
'package:provider/src/provider.dart@ProviderNode@value': (m.Scope scope, ProviderNode target)=>target.value,
'package:provider/src/provider.dart@ProviderNode@': (m.Scope scope)=>({ childrenNodeIds,  element,  id,  type}){
return ProviderNode(childrenNodeIds:childrenNodeIds, element:element, id:id, type:type);
},
'package:provider/src/provider.dart@ProviderBinding@#as': (m.Scope scope, target)=>()=>target as ProviderBinding,
'package:provider/src/provider.dart@ProviderBinding@#is': (m.Scope scope, target)=>()=>target is ProviderBinding,
'package:provider/src/provider.dart@ProviderBinding@debugInstance': (m.Scope scope)=>ProviderBinding.debugInstance,
'package:provider/src/provider.dart@ProviderBinding@providerDetails': (m.Scope scope, ProviderBinding target)=>target.providerDetails,
'package:provider/src/provider.dart@ProviderBinding@providerDetails:set': (m.Scope scope, ProviderBinding target)=>(other)=>target.providerDetails=other,
'package:provider/src/provider.dart@ProviderBinding@providerDidChange': (m.Scope scope, ProviderBinding target)=>target.providerDidChange,
'package:provider/src/provider.dart@@debugPostEvent': (m.Scope scope)=>debugPostEvent,
'package:provider/src/provider.dart@@spyPostEvent': (m.Scope scope)=>spyPostEvent,
'package:provider/src/provider.dart@@debugIsInInheritedProviderUpdate': (m.Scope scope)=>debugIsInInheritedProviderUpdate,
'package:provider/src/provider.dart@@debugIsInInheritedProviderUpdate:set': (m.Scope scope)=>(other)=>debugIsInInheritedProviderUpdate=other,
'package:provider/src/provider.dart@@debugIsInInheritedProviderCreate': (m.Scope scope)=>debugIsInInheritedProviderCreate,
'package:provider/src/provider.dart@@debugIsInInheritedProviderCreate:set': (m.Scope scope)=>(other)=>debugIsInInheritedProviderCreate=other,
'package:provider/src/provider.dart@InheritedProvider@#as': (m.Scope scope, target)=>()=>target as InheritedProvider,
'package:provider/src/provider.dart@InheritedProvider@#is': (m.Scope scope, target)=>()=>target is InheritedProvider,
'package:provider/src/provider.dart@InheritedProvider@builder': (m.Scope scope, InheritedProvider target)=>target.builder,
'package:provider/src/provider.dart@InheritedProvider@': (m.Scope scope)=>({ builder,  child,  create,  debugCheckInvalidValueType,  dispose,  key,  lazy,  startListening,  update,  updateShouldNotify}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

T createProxy<T>( context) {
return  engine.callFunctionPointer(scope, create!,[context], {});
}

void debugCheckInvalidValueTypeProxy<T>( value) {
 engine.callFunctionPointer(scope, debugCheckInvalidValueType!,[value], {});
}

void disposeProxy<T>( context,  value) {
 engine.callFunctionPointer(scope, dispose!,[context, value], {});
}

void Function() startListeningProxy<T>( element,  value) {
var $fp =   engine.callFunctionPointer(scope, startListening!,[element, value], {});
void $f() {
 engine.callFunctionPointer(scope, $fp!,[], {});
}

return $f;
}

T updateProxy<T>( context,  value) {
return  engine.callFunctionPointer(scope, update!,[context, value], {});
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return InheritedProvider(builder:builder == null ? null :builderProxy, child:child, create:create == null ? null :createProxy, debugCheckInvalidValueType:debugCheckInvalidValueType == null ? null :debugCheckInvalidValueTypeProxy, dispose:dispose == null ? null :disposeProxy, key:key, lazy:lazy, startListening:startListening == null ? null :startListeningProxy, update:update == null ? null :updateProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy);
},
'package:provider/src/provider.dart@InheritedProvider@value': (m.Scope scope)=>({ builder,  child,  key,  lazy,  startListening,  updateShouldNotify,  value}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

void Function() startListeningProxy<T>( element,  value) {
var $fp =   engine.callFunctionPointer(scope, startListening!,[element, value], {});
void $f() {
 engine.callFunctionPointer(scope, $fp!,[], {});
}

return $f;
}

bool updateShouldNotifyProxy<T>( previous,  current) {
return  engine.callFunctionPointer(scope, updateShouldNotify!,[previous, current], {});
}

return InheritedProvider.value(builder:builder == null ? null :builderProxy, child:child, key:key, lazy:lazy, startListening:startListening == null ? null :startListeningProxy, updateShouldNotify:updateShouldNotify == null ? null :updateShouldNotifyProxy, value:value);
},
'package:provider/src/provider.dart@InheritedProvider@debugFillProperties': (m.Scope scope, InheritedProvider target)=>target.debugFillProperties,
'package:provider/src/provider.dart@InheritedProvider@createElement': (m.Scope scope, InheritedProvider target)=>target.createElement,
'package:provider/src/provider.dart@InheritedProvider@buildWithChild': (m.Scope scope, InheritedProvider target)=>target.buildWithChild,
'package:provider/src/provider.dart@InheritedContext@#as': (m.Scope scope, target)=>()=>target as InheritedContext,
'package:provider/src/provider.dart@InheritedContext@#is': (m.Scope scope, target)=>()=>target is InheritedContext,
'package:provider/src/provider.dart@InheritedContext@value': (m.Scope scope, InheritedContext target)=>target.value,
'package:provider/src/provider.dart@InheritedContext@hasValue': (m.Scope scope, InheritedContext target)=>target.hasValue,
'package:provider/src/provider.dart@InheritedContext@markNeedsNotifyDependents': (m.Scope scope, InheritedContext target)=>target.markNeedsNotifyDependents,

};
}