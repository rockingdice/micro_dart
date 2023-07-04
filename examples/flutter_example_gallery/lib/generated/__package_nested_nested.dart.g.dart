import 'package:nested/nested.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:nested/nested.dart@Nested@#as': (m.Scope scope, target)=>()=>target as Nested,
'package:nested/nested.dart@Nested@#is': (m.Scope scope, target)=>()=>target is Nested,
'package:nested/nested.dart@Nested@': (m.Scope scope)=>({ child,  children,  key}){
return Nested(child:child, children:children, key:key);
},
'package:nested/nested.dart@Nested@build': (m.Scope scope, Nested target)=>target.build,
'package:nested/nested.dart@Nested@createElement': (m.Scope scope, Nested target)=>target.createElement,
'package:nested/nested.dart@SingleChildWidget@#as': (m.Scope scope, target)=>()=>target as SingleChildWidget,
'package:nested/nested.dart@SingleChildWidget@#is': (m.Scope scope, target)=>()=>target is SingleChildWidget,
'package:nested/nested.dart@SingleChildWidget@createElement': (m.Scope scope, SingleChildWidget target)=>target.createElement,
'package:nested/nested.dart@SingleChildStatelessWidget@#as': (m.Scope scope, target)=>()=>target as SingleChildStatelessWidget,
'package:nested/nested.dart@SingleChildStatelessWidget@#is': (m.Scope scope, target)=>()=>target is SingleChildStatelessWidget,
'package:nested/nested.dart@SingleChildStatelessWidget@buildWithChild': (m.Scope scope, SingleChildStatelessWidget target)=>target.buildWithChild,
'package:nested/nested.dart@SingleChildStatelessWidget@build': (m.Scope scope, SingleChildStatelessWidget target)=>target.build,
'package:nested/nested.dart@SingleChildStatelessWidget@createElement': (m.Scope scope, SingleChildStatelessWidget target)=>target.createElement,
'package:nested/nested.dart@SingleChildStatelessElement@#as': (m.Scope scope, target)=>()=>target as SingleChildStatelessElement,
'package:nested/nested.dart@SingleChildStatelessElement@#is': (m.Scope scope, target)=>()=>target is SingleChildStatelessElement,
'package:nested/nested.dart@SingleChildStatelessElement@widget': (m.Scope scope, SingleChildStatelessElement target)=>target.widget,
'package:nested/nested.dart@SingleChildStatelessElement@': (m.Scope scope)=>( widget){
return SingleChildStatelessElement(widget);
},
'package:nested/nested.dart@SingleChildStatelessElement@build': (m.Scope scope, SingleChildStatelessElement target)=>target.build,
'package:nested/nested.dart@SingleChildStatefulWidget@#as': (m.Scope scope, target)=>()=>target as SingleChildStatefulWidget,
'package:nested/nested.dart@SingleChildStatefulWidget@#is': (m.Scope scope, target)=>()=>target is SingleChildStatefulWidget,
'package:nested/nested.dart@SingleChildStatefulWidget@createElement': (m.Scope scope, SingleChildStatefulWidget target)=>target.createElement,
'package:nested/nested.dart@SingleChildState@#as': (m.Scope scope, target)=>()=>target as SingleChildState,
'package:nested/nested.dart@SingleChildState@#is': (m.Scope scope, target)=>()=>target is SingleChildState,
'package:nested/nested.dart@SingleChildState@buildWithChild': (m.Scope scope, SingleChildState target)=>target.buildWithChild,
'package:nested/nested.dart@SingleChildState@build': (m.Scope scope, SingleChildState target)=>target.build,
'package:nested/nested.dart@SingleChildStatefulElement@#as': (m.Scope scope, target)=>()=>target as SingleChildStatefulElement,
'package:nested/nested.dart@SingleChildStatefulElement@#is': (m.Scope scope, target)=>()=>target is SingleChildStatefulElement,
'package:nested/nested.dart@SingleChildStatefulElement@widget': (m.Scope scope, SingleChildStatefulElement target)=>target.widget,
'package:nested/nested.dart@SingleChildStatefulElement@state': (m.Scope scope, SingleChildStatefulElement target)=>target.state,
'package:nested/nested.dart@SingleChildStatefulElement@': (m.Scope scope)=>( widget){
return SingleChildStatefulElement(widget);
},
'package:nested/nested.dart@SingleChildStatefulElement@build': (m.Scope scope, SingleChildStatefulElement target)=>target.build,
'package:nested/nested.dart@SingleChildBuilder@#as': (m.Scope scope, target)=>()=>target as SingleChildBuilder,
'package:nested/nested.dart@SingleChildBuilder@#is': (m.Scope scope, target)=>()=>target is SingleChildBuilder,
'package:nested/nested.dart@SingleChildBuilder@builder': (m.Scope scope, SingleChildBuilder target)=>target.builder,
'package:nested/nested.dart@SingleChildBuilder@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

return SingleChildBuilder(builder:builderProxy, child:child, key:key);
},
'package:nested/nested.dart@SingleChildBuilder@buildWithChild': (m.Scope scope, SingleChildBuilder target)=>target.buildWithChild,

};
}