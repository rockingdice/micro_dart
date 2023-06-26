import 'package:flutter/src/widgets/animated_size.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@#as': (m.Scope scope, target)=>()=>target as AnimatedSize,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@#is': (m.Scope scope, target)=>()=>target is AnimatedSize,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@child': (m.Scope scope, AnimatedSize target)=>target.child,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@alignment': (m.Scope scope, AnimatedSize target)=>target.alignment,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@curve': (m.Scope scope, AnimatedSize target)=>target.curve,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@duration': (m.Scope scope, AnimatedSize target)=>target.duration,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@reverseDuration': (m.Scope scope, AnimatedSize target)=>target.reverseDuration,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@clipBehavior': (m.Scope scope, AnimatedSize target)=>target.clipBehavior,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@': (m.Scope scope)=>AnimatedSize,
'package:flutter/src/widgets/animated_size.dart@AnimatedSize@createState': (m.Scope scope, AnimatedSize target)=>target.createState,

};
}