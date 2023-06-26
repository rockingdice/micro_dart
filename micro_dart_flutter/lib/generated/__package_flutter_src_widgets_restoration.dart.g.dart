import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/restoration.dart@RestorationScope@#as': (m.Scope scope, target)=>()=>target as RestorationScope,
'package:flutter/src/widgets/restoration.dart@RestorationScope@#is': (m.Scope scope, target)=>()=>target is RestorationScope,
'package:flutter/src/widgets/restoration.dart@RestorationScope@child': (m.Scope scope, RestorationScope target)=>target.child,
'package:flutter/src/widgets/restoration.dart@RestorationScope@restorationId': (m.Scope scope, RestorationScope target)=>target.restorationId,
'package:flutter/src/widgets/restoration.dart@RestorationScope@': (m.Scope scope)=>RestorationScope,
'package:flutter/src/widgets/restoration.dart@RestorationScope@maybeOf': (m.Scope scope)=>RestorationScope.maybeOf,
'package:flutter/src/widgets/restoration.dart@RestorationScope@of': (m.Scope scope)=>RestorationScope.of,
'package:flutter/src/widgets/restoration.dart@RestorationScope@createState': (m.Scope scope, RestorationScope target)=>target.createState,
'package:flutter/src/widgets/restoration.dart@UnmanagedRestorationScope@#as': (m.Scope scope, target)=>()=>target as UnmanagedRestorationScope,
'package:flutter/src/widgets/restoration.dart@UnmanagedRestorationScope@#is': (m.Scope scope, target)=>()=>target is UnmanagedRestorationScope,
'package:flutter/src/widgets/restoration.dart@UnmanagedRestorationScope@bucket': (m.Scope scope, UnmanagedRestorationScope target)=>target.bucket,
'package:flutter/src/widgets/restoration.dart@UnmanagedRestorationScope@': (m.Scope scope)=>UnmanagedRestorationScope,
'package:flutter/src/widgets/restoration.dart@UnmanagedRestorationScope@updateShouldNotify': (m.Scope scope, UnmanagedRestorationScope target)=>target.updateShouldNotify,
'package:flutter/src/widgets/restoration.dart@RootRestorationScope@#as': (m.Scope scope, target)=>()=>target as RootRestorationScope,
'package:flutter/src/widgets/restoration.dart@RootRestorationScope@#is': (m.Scope scope, target)=>()=>target is RootRestorationScope,
'package:flutter/src/widgets/restoration.dart@RootRestorationScope@child': (m.Scope scope, RootRestorationScope target)=>target.child,
'package:flutter/src/widgets/restoration.dart@RootRestorationScope@restorationId': (m.Scope scope, RootRestorationScope target)=>target.restorationId,
'package:flutter/src/widgets/restoration.dart@RootRestorationScope@': (m.Scope scope)=>RootRestorationScope,
'package:flutter/src/widgets/restoration.dart@RootRestorationScope@createState': (m.Scope scope, RootRestorationScope target)=>target.createState,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@#as': (m.Scope scope, target)=>()=>target as RestorableProperty,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@#is': (m.Scope scope, target)=>()=>target is RestorableProperty,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@enabled': (m.Scope scope, RestorableProperty target)=>target.enabled,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@state': (m.Scope scope, RestorableProperty target)=>target.state,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@isRegistered': (m.Scope scope, RestorableProperty target)=>target.isRegistered,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@createDefaultValue': (m.Scope scope, RestorableProperty target)=>target.createDefaultValue,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@fromPrimitives': (m.Scope scope, RestorableProperty target)=>target.fromPrimitives,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@initWithValue': (m.Scope scope, RestorableProperty target)=>target.initWithValue,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@toPrimitives': (m.Scope scope, RestorableProperty target)=>target.toPrimitives,
'package:flutter/src/widgets/restoration.dart@RestorableProperty@dispose': (m.Scope scope, RestorableProperty target)=>target.dispose,

};
}