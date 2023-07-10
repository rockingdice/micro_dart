import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/preferred_size.dart@PreferredSizeWidget@#as': (m.Scope scope, target)=>()=>target as PreferredSizeWidget,
'package:flutter/src/widgets/preferred_size.dart@PreferredSizeWidget@#is': (m.Scope scope, target)=>()=>target is PreferredSizeWidget,
'package:flutter/src/widgets/preferred_size.dart@PreferredSizeWidget@preferredSize': (m.Scope scope, PreferredSizeWidget target)=>target.preferredSize,
'package:flutter/src/widgets/preferred_size.dart@PreferredSize@#as': (m.Scope scope, target)=>()=>target as PreferredSize,
'package:flutter/src/widgets/preferred_size.dart@PreferredSize@#is': (m.Scope scope, target)=>()=>target is PreferredSize,
'package:flutter/src/widgets/preferred_size.dart@PreferredSize@child': (m.Scope scope, PreferredSize target)=>target.child,
'package:flutter/src/widgets/preferred_size.dart@PreferredSize@preferredSize': (m.Scope scope, PreferredSize target)=>target.preferredSize,
'package:flutter/src/widgets/preferred_size.dart@PreferredSize@': (m.Scope scope)=>({ child,  key,  preferredSize}){
return PreferredSize(child:child, key:key, preferredSize:preferredSize);
},
'package:flutter/src/widgets/preferred_size.dart@PreferredSize@build': (m.Scope scope, PreferredSize target)=>target.build,

};
}