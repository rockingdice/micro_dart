import 'package:provider/src/selector.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nested/nested.dart';
import 'package:provider/src/consumer.dart';
import 'package:provider/src/provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/selector.dart@Selector0@#as': (m.Scope scope, target)=>()=>target as Selector0,
'package:provider/src/selector.dart@Selector0@#is': (m.Scope scope, target)=>()=>target is Selector0,
'package:provider/src/selector.dart@Selector0@builder': (m.Scope scope, Selector0 target)=>target.builder,
'package:provider/src/selector.dart@Selector0@selector': (m.Scope scope, Selector0 target)=>target.selector,
'package:provider/src/selector.dart@Selector0@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<T>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

T selectorProxy<T>( $p0) {
return  engine.callFunctionPointer(scope, selector!,[$p0], {});
}

bool shouldRebuildProxy<T>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector0(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},
'package:provider/src/selector.dart@Selector0@createState': (m.Scope scope, Selector0 target)=>target.createState,
'package:provider/src/selector.dart@Selector@#as': (m.Scope scope, target)=>()=>target as Selector,
'package:provider/src/selector.dart@Selector@#is': (m.Scope scope, target)=>()=>target is Selector,
'package:provider/src/selector.dart@Selector@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<S>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

S selectorProxy<S, A>( $p0,  $p1) {
return  engine.callFunctionPointer(scope, selector!,[$p0, $p1], {});
}

bool shouldRebuildProxy<S>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},
'package:provider/src/selector.dart@Selector2@#as': (m.Scope scope, target)=>()=>target as Selector2,
'package:provider/src/selector.dart@Selector2@#is': (m.Scope scope, target)=>()=>target is Selector2,
'package:provider/src/selector.dart@Selector2@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<S>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

S selectorProxy<S, A, B>( $p0,  $p1,  $p2) {
return  engine.callFunctionPointer(scope, selector!,[$p0, $p1, $p2], {});
}

bool shouldRebuildProxy<S>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector2(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},
'package:provider/src/selector.dart@Selector3@#as': (m.Scope scope, target)=>()=>target as Selector3,
'package:provider/src/selector.dart@Selector3@#is': (m.Scope scope, target)=>()=>target is Selector3,
'package:provider/src/selector.dart@Selector3@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<S>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

S selectorProxy<S, A, B, C>( $p0,  $p1,  $p2,  $p3) {
return  engine.callFunctionPointer(scope, selector!,[$p0, $p1, $p2, $p3], {});
}

bool shouldRebuildProxy<S>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector3(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},
'package:provider/src/selector.dart@Selector4@#as': (m.Scope scope, target)=>()=>target as Selector4,
'package:provider/src/selector.dart@Selector4@#is': (m.Scope scope, target)=>()=>target is Selector4,
'package:provider/src/selector.dart@Selector4@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<S>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

S selectorProxy<S, A, B, C, D>( $p0,  $p1,  $p2,  $p3,  $p4) {
return  engine.callFunctionPointer(scope, selector!,[$p0, $p1, $p2, $p3, $p4], {});
}

bool shouldRebuildProxy<S>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector4(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},
'package:provider/src/selector.dart@Selector5@#as': (m.Scope scope, target)=>()=>target as Selector5,
'package:provider/src/selector.dart@Selector5@#is': (m.Scope scope, target)=>()=>target is Selector5,
'package:provider/src/selector.dart@Selector5@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<S>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

S selectorProxy<S, A, B, C, D, E>( $p0,  $p1,  $p2,  $p3,  $p4,  $p5) {
return  engine.callFunctionPointer(scope, selector!,[$p0, $p1, $p2, $p3, $p4, $p5], {});
}

bool shouldRebuildProxy<S>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector5(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},
'package:provider/src/selector.dart@Selector6@#as': (m.Scope scope, target)=>()=>target as Selector6,
'package:provider/src/selector.dart@Selector6@#is': (m.Scope scope, target)=>()=>target is Selector6,
'package:provider/src/selector.dart@Selector6@': (m.Scope scope)=>({ builder,  child,  key,  selector,  shouldRebuild}){
Widget builderProxy<S>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

S selectorProxy<S, A, B, C, D, E, F>( $p0,  $p1,  $p2,  $p3,  $p4,  $p5,  $p6) {
return  engine.callFunctionPointer(scope, selector!,[$p0, $p1, $p2, $p3, $p4, $p5, $p6], {});
}

bool shouldRebuildProxy<S>( previous,  next) {
return  engine.callFunctionPointer(scope, shouldRebuild!,[previous, next], {});
}

return Selector6(builder:builderProxy, child:child, key:key, selector:selectorProxy, shouldRebuild:shouldRebuild == null ? null :shouldRebuildProxy);
},

};
}