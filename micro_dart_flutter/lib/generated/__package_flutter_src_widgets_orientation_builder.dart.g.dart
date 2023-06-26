import 'package:flutter/src/widgets/orientation_builder.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/orientation_builder.dart@OrientationBuilder@#as': (m.Scope scope, target)=>()=>target as OrientationBuilder,
'package:flutter/src/widgets/orientation_builder.dart@OrientationBuilder@#is': (m.Scope scope, target)=>()=>target is OrientationBuilder,
'package:flutter/src/widgets/orientation_builder.dart@OrientationBuilder@builder': (m.Scope scope, OrientationBuilder target)=>target.builder,
'package:flutter/src/widgets/orientation_builder.dart@OrientationBuilder@': (m.Scope scope)=>({ builder,  key}){
Widget builderProxy( context,  orientation) {
return  engine.callFunctionPointer(scope, builder!,[context, orientation], {});
}

return OrientationBuilder(builder:builderProxy, key:key);
},
'package:flutter/src/widgets/orientation_builder.dart@OrientationBuilder@build': (m.Scope scope, OrientationBuilder target)=>target.build,

};
}