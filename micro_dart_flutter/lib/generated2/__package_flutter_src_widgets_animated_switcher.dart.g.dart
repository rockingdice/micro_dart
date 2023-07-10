import 'package:flutter/src/widgets/animated_switcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@#as': (m.Scope scope, target)=>()=>target as AnimatedSwitcher,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@#is': (m.Scope scope, target)=>()=>target is AnimatedSwitcher,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@child': (m.Scope scope, AnimatedSwitcher target)=>target.child,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@duration': (m.Scope scope, AnimatedSwitcher target)=>target.duration,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@reverseDuration': (m.Scope scope, AnimatedSwitcher target)=>target.reverseDuration,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@switchInCurve': (m.Scope scope, AnimatedSwitcher target)=>target.switchInCurve,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@switchOutCurve': (m.Scope scope, AnimatedSwitcher target)=>target.switchOutCurve,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@transitionBuilder': (m.Scope scope, AnimatedSwitcher target)=>target.transitionBuilder,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@layoutBuilder': (m.Scope scope, AnimatedSwitcher target)=>target.layoutBuilder,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@': (m.Scope scope)=>({ child,  duration,  key,  layoutBuilder,  reverseDuration,  switchInCurve,  switchOutCurve,  transitionBuilder}){
Widget layoutBuilderProxy( currentChild,  previousChildren) {
return  engine.callFunctionPointer(scope, layoutBuilder!,[currentChild, previousChildren], {});
}

Widget transitionBuilderProxy( child,  animation) {
return  engine.callFunctionPointer(scope, transitionBuilder!,[child, animation], {});
}

return AnimatedSwitcher(child:child, duration:duration, key:key, layoutBuilder:layoutBuilder == null ? AnimatedSwitcher.defaultLayoutBuilder :layoutBuilderProxy, reverseDuration:reverseDuration, switchInCurve:switchInCurve ?? Curves.linear, switchOutCurve:switchOutCurve ?? Curves.linear, transitionBuilder:transitionBuilder == null ? AnimatedSwitcher.defaultTransitionBuilder :transitionBuilderProxy);
},
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@createState': (m.Scope scope, AnimatedSwitcher target)=>target.createState,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@defaultTransitionBuilder': (m.Scope scope)=>AnimatedSwitcher.defaultTransitionBuilder,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@defaultLayoutBuilder': (m.Scope scope)=>AnimatedSwitcher.defaultLayoutBuilder,
'package:flutter/src/widgets/animated_switcher.dart@AnimatedSwitcher@debugFillProperties': (m.Scope scope, AnimatedSwitcher target)=>target.debugFillProperties,

};
}