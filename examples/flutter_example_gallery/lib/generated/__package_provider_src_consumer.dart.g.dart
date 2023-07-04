import 'package:provider/src/consumer.dart';
import 'package:flutter/widgets.dart';
import 'package:nested/nested.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/selector.dart' show Selector;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/consumer.dart@Consumer@#as': (m.Scope scope, target)=>()=>target as Consumer,
'package:provider/src/consumer.dart@Consumer@#is': (m.Scope scope, target)=>()=>target is Consumer,
'package:provider/src/consumer.dart@Consumer@builder': (m.Scope scope, Consumer target)=>target.builder,
'package:provider/src/consumer.dart@Consumer@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy<T>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

return Consumer(builder:builderProxy, child:child, key:key);
},
'package:provider/src/consumer.dart@Consumer@buildWithChild': (m.Scope scope, Consumer target)=>target.buildWithChild,
'package:provider/src/consumer.dart@Consumer2@#as': (m.Scope scope, target)=>()=>target as Consumer2,
'package:provider/src/consumer.dart@Consumer2@#is': (m.Scope scope, target)=>()=>target is Consumer2,
'package:provider/src/consumer.dart@Consumer2@builder': (m.Scope scope, Consumer2 target)=>target.builder,
'package:provider/src/consumer.dart@Consumer2@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy<A, B>( context,  value,  value2,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, value2, child], {});
}

return Consumer2(builder:builderProxy, child:child, key:key);
},
'package:provider/src/consumer.dart@Consumer2@buildWithChild': (m.Scope scope, Consumer2 target)=>target.buildWithChild,
'package:provider/src/consumer.dart@Consumer3@#as': (m.Scope scope, target)=>()=>target as Consumer3,
'package:provider/src/consumer.dart@Consumer3@#is': (m.Scope scope, target)=>()=>target is Consumer3,
'package:provider/src/consumer.dart@Consumer3@builder': (m.Scope scope, Consumer3 target)=>target.builder,
'package:provider/src/consumer.dart@Consumer3@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy<A, B, C>( context,  value,  value2,  value3,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, value2, value3, child], {});
}

return Consumer3(builder:builderProxy, child:child, key:key);
},
'package:provider/src/consumer.dart@Consumer3@buildWithChild': (m.Scope scope, Consumer3 target)=>target.buildWithChild,
'package:provider/src/consumer.dart@Consumer4@#as': (m.Scope scope, target)=>()=>target as Consumer4,
'package:provider/src/consumer.dart@Consumer4@#is': (m.Scope scope, target)=>()=>target is Consumer4,
'package:provider/src/consumer.dart@Consumer4@builder': (m.Scope scope, Consumer4 target)=>target.builder,
'package:provider/src/consumer.dart@Consumer4@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy<A, B, C, D>( context,  value,  value2,  value3,  value4,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, value2, value3, value4, child], {});
}

return Consumer4(builder:builderProxy, child:child, key:key);
},
'package:provider/src/consumer.dart@Consumer4@buildWithChild': (m.Scope scope, Consumer4 target)=>target.buildWithChild,
'package:provider/src/consumer.dart@Consumer5@#as': (m.Scope scope, target)=>()=>target as Consumer5,
'package:provider/src/consumer.dart@Consumer5@#is': (m.Scope scope, target)=>()=>target is Consumer5,
'package:provider/src/consumer.dart@Consumer5@builder': (m.Scope scope, Consumer5 target)=>target.builder,
'package:provider/src/consumer.dart@Consumer5@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy<A, B, C, D, E>( context,  value,  value2,  value3,  value4,  value5,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, value2, value3, value4, value5, child], {});
}

return Consumer5(builder:builderProxy, child:child, key:key);
},
'package:provider/src/consumer.dart@Consumer5@buildWithChild': (m.Scope scope, Consumer5 target)=>target.buildWithChild,
'package:provider/src/consumer.dart@Consumer6@#as': (m.Scope scope, target)=>()=>target as Consumer6,
'package:provider/src/consumer.dart@Consumer6@#is': (m.Scope scope, target)=>()=>target is Consumer6,
'package:provider/src/consumer.dart@Consumer6@builder': (m.Scope scope, Consumer6 target)=>target.builder,
'package:provider/src/consumer.dart@Consumer6@': (m.Scope scope)=>({ builder,  child,  key}){
Widget builderProxy<A, B, C, D, E, F>( context,  value,  value2,  value3,  value4,  value5,  value6,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, value2, value3, value4, value5, value6, child], {});
}

return Consumer6(builder:builderProxy, child:child, key:key);
},
'package:provider/src/consumer.dart@Consumer6@buildWithChild': (m.Scope scope, Consumer6 target)=>target.buildWithChild,

};
}