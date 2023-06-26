import 'package:flutter/src/widgets/sliver_layout_builder.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/sliver_layout_builder.dart@SliverLayoutBuilder@#as': (m.Scope scope, target)=>()=>target as SliverLayoutBuilder,
'package:flutter/src/widgets/sliver_layout_builder.dart@SliverLayoutBuilder@#is': (m.Scope scope, target)=>()=>target is SliverLayoutBuilder,
'package:flutter/src/widgets/sliver_layout_builder.dart@SliverLayoutBuilder@': (m.Scope scope)=>({ builder,  key}){
Widget builderProxy( context,  constraints) {
return  engine.callFunctionPointer(scope, builder!,[context, constraints], {});
}

return SliverLayoutBuilder(builder:builderProxy, key:key);
},
'package:flutter/src/widgets/sliver_layout_builder.dart@SliverLayoutBuilder@createRenderObject': (m.Scope scope, SliverLayoutBuilder target)=>target.createRenderObject,

};
}