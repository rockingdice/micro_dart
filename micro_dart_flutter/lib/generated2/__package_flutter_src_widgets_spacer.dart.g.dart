import 'package:flutter/src/widgets/spacer.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/spacer.dart@Spacer@#as': (m.Scope scope, target)=>()=>target as Spacer,
'package:flutter/src/widgets/spacer.dart@Spacer@#is': (m.Scope scope, target)=>()=>target is Spacer,
'package:flutter/src/widgets/spacer.dart@Spacer@flex': (m.Scope scope, Spacer target)=>target.flex,
'package:flutter/src/widgets/spacer.dart@Spacer@': (m.Scope scope)=>({ flex,  key}){
return Spacer(flex:flex ?? 1, key:key);
},
'package:flutter/src/widgets/spacer.dart@Spacer@build': (m.Scope scope, Spacer target)=>target.build,

};
}