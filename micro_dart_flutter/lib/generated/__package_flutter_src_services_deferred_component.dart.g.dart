import 'package:flutter/src/services/deferred_component.dart';
import 'dart:async';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/deferred_component.dart@DeferredComponent@#as': (m.Scope scope, target)=>()=>target as DeferredComponent,
'package:flutter/src/services/deferred_component.dart@DeferredComponent@#is': (m.Scope scope, target)=>()=>target is DeferredComponent,
'package:flutter/src/services/deferred_component.dart@DeferredComponent@installDeferredComponent': (m.Scope scope)=>DeferredComponent.installDeferredComponent,
'package:flutter/src/services/deferred_component.dart@DeferredComponent@uninstallDeferredComponent': (m.Scope scope)=>DeferredComponent.uninstallDeferredComponent,

};
}