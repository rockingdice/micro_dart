import 'package:flutter/src/widgets/dual_transition_builder.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@#as': (m.Scope scope, target)=>()=>target as DualTransitionBuilder,
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@#is': (m.Scope scope, target)=>()=>target is DualTransitionBuilder,
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@animation': (m.Scope scope, DualTransitionBuilder target)=>target.animation,
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@forwardBuilder': (m.Scope scope, DualTransitionBuilder target)=>target.forwardBuilder,
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@reverseBuilder': (m.Scope scope, DualTransitionBuilder target)=>target.reverseBuilder,
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@child': (m.Scope scope, DualTransitionBuilder target)=>target.child,
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@': (m.Scope scope)=>({ animation,  child,  forwardBuilder,  key,  reverseBuilder}){
Widget forwardBuilderProxy( context,  animation,  child) {
return  engine.callFunctionPointer(scope, forwardBuilder!,[context, animation, child], {});
}

Widget reverseBuilderProxy( context,  animation,  child) {
return  engine.callFunctionPointer(scope, reverseBuilder!,[context, animation, child], {});
}

return DualTransitionBuilder(animation:animation, child:child, forwardBuilder:forwardBuilderProxy, key:key, reverseBuilder:reverseBuilderProxy);
},
'package:flutter/src/widgets/dual_transition_builder.dart@DualTransitionBuilder@createState': (m.Scope scope, DualTransitionBuilder target)=>target.createState,

};
}