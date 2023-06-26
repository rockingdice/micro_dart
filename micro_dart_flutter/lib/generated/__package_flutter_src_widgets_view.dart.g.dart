import 'package:flutter/src/widgets/view.dart';
import 'dart:ui' show FlutterView;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/lookup_boundary.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/view.dart@View@#as': (m.Scope scope, target)=>()=>target as View,
'package:flutter/src/widgets/view.dart@View@#is': (m.Scope scope, target)=>()=>target is View,
'package:flutter/src/widgets/view.dart@View@view': (m.Scope scope, View target)=>target.view,
'package:flutter/src/widgets/view.dart@View@child': (m.Scope scope, View target)=>target.child,
'package:flutter/src/widgets/view.dart@View@': (m.Scope scope)=>View,
'package:flutter/src/widgets/view.dart@View@build': (m.Scope scope, View target)=>target.build,
'package:flutter/src/widgets/view.dart@View@maybeOf': (m.Scope scope)=>View.maybeOf,
'package:flutter/src/widgets/view.dart@View@of': (m.Scope scope)=>View.of,

};
}