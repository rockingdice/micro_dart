import 'package:flutter/src/widgets/async.dart';
import 'dart:async' show StreamSubscription;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/async.dart@StreamBuilderBase@#as': (m.Scope scope, target)=>()=>target as StreamBuilderBase,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@#is': (m.Scope scope, target)=>()=>target is StreamBuilderBase,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@stream': (m.Scope scope, StreamBuilderBase target)=>target.stream,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@initial': (m.Scope scope, StreamBuilderBase target)=>target.initial,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@afterConnected': (m.Scope scope, StreamBuilderBase target)=>target.afterConnected,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@afterData': (m.Scope scope, StreamBuilderBase target)=>target.afterData,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@afterError': (m.Scope scope, StreamBuilderBase target)=>target.afterError,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@afterDone': (m.Scope scope, StreamBuilderBase target)=>target.afterDone,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@afterDisconnected': (m.Scope scope, StreamBuilderBase target)=>target.afterDisconnected,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@build': (m.Scope scope, StreamBuilderBase target)=>target.build,
'package:flutter/src/widgets/async.dart@StreamBuilderBase@createState': (m.Scope scope, StreamBuilderBase target)=>target.createState,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@#as': (m.Scope scope, target)=>()=>target as AsyncSnapshot,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@#is': (m.Scope scope, target)=>()=>target is AsyncSnapshot,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@connectionState': (m.Scope scope, AsyncSnapshot target)=>target.connectionState,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@data': (m.Scope scope, AsyncSnapshot target)=>target.data,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@error': (m.Scope scope, AsyncSnapshot target)=>target.error,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@stackTrace': (m.Scope scope, AsyncSnapshot target)=>target.stackTrace,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@requireData': (m.Scope scope, AsyncSnapshot target)=>target.requireData,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@hasData': (m.Scope scope, AsyncSnapshot target)=>target.hasData,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@hasError': (m.Scope scope, AsyncSnapshot target)=>target.hasError,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@hashCode': (m.Scope scope, AsyncSnapshot target)=>target.hashCode,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@nothing': (m.Scope scope)=>AsyncSnapshot.nothing,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@waiting': (m.Scope scope)=>AsyncSnapshot.waiting,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@withData': (m.Scope scope)=>AsyncSnapshot.withData,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@withError': (m.Scope scope)=>AsyncSnapshot.withError,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@inState': (m.Scope scope, AsyncSnapshot target)=>target.inState,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@toString': (m.Scope scope, AsyncSnapshot target)=>target.toString,
'package:flutter/src/widgets/async.dart@AsyncSnapshot@==': (m.Scope scope, AsyncSnapshot target)=>(other)=> target == other,
'package:flutter/src/widgets/async.dart@StreamBuilder@#as': (m.Scope scope, target)=>()=>target as StreamBuilder,
'package:flutter/src/widgets/async.dart@StreamBuilder@#is': (m.Scope scope, target)=>()=>target is StreamBuilder,
'package:flutter/src/widgets/async.dart@StreamBuilder@builder': (m.Scope scope, StreamBuilder target)=>target.builder,
'package:flutter/src/widgets/async.dart@StreamBuilder@initialData': (m.Scope scope, StreamBuilder target)=>target.initialData,
'package:flutter/src/widgets/async.dart@StreamBuilder@': (m.Scope scope)=>({ builder,  initialData,  key,  stream}){
Widget builderProxy( context,  snapshot) {
return  engine.callFunctionPointer(scope, builder!,[context, snapshot], {});
}

return StreamBuilder(builder:builderProxy, initialData:initialData, key:key, stream:stream);
},
'package:flutter/src/widgets/async.dart@StreamBuilder@initial': (m.Scope scope, StreamBuilder target)=>target.initial,
'package:flutter/src/widgets/async.dart@StreamBuilder@afterConnected': (m.Scope scope, StreamBuilder target)=>target.afterConnected,
'package:flutter/src/widgets/async.dart@StreamBuilder@afterData': (m.Scope scope, StreamBuilder target)=>target.afterData,
'package:flutter/src/widgets/async.dart@StreamBuilder@afterError': (m.Scope scope, StreamBuilder target)=>target.afterError,
'package:flutter/src/widgets/async.dart@StreamBuilder@afterDone': (m.Scope scope, StreamBuilder target)=>target.afterDone,
'package:flutter/src/widgets/async.dart@StreamBuilder@afterDisconnected': (m.Scope scope, StreamBuilder target)=>target.afterDisconnected,
'package:flutter/src/widgets/async.dart@StreamBuilder@build': (m.Scope scope, StreamBuilder target)=>target.build,
'package:flutter/src/widgets/async.dart@FutureBuilder@#as': (m.Scope scope, target)=>()=>target as FutureBuilder,
'package:flutter/src/widgets/async.dart@FutureBuilder@#is': (m.Scope scope, target)=>()=>target is FutureBuilder,
'package:flutter/src/widgets/async.dart@FutureBuilder@future': (m.Scope scope, FutureBuilder target)=>target.future,
'package:flutter/src/widgets/async.dart@FutureBuilder@builder': (m.Scope scope, FutureBuilder target)=>target.builder,
'package:flutter/src/widgets/async.dart@FutureBuilder@initialData': (m.Scope scope, FutureBuilder target)=>target.initialData,
'package:flutter/src/widgets/async.dart@FutureBuilder@debugRethrowError': (m.Scope scope)=>FutureBuilder.debugRethrowError,
'package:flutter/src/widgets/async.dart@FutureBuilder@debugRethrowError:set': (m.Scope scope)=>(other)=>FutureBuilder.debugRethrowError=other,
'package:flutter/src/widgets/async.dart@FutureBuilder@': (m.Scope scope)=>({ builder,  future,  initialData,  key}){
Widget builderProxy( context,  snapshot) {
return  engine.callFunctionPointer(scope, builder!,[context, snapshot], {});
}

return FutureBuilder(builder:builderProxy, future:future, initialData:initialData, key:key);
},
'package:flutter/src/widgets/async.dart@FutureBuilder@createState': (m.Scope scope, FutureBuilder target)=>target.createState,

};
}