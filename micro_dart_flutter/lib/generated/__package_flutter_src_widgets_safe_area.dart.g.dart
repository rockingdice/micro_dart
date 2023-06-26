import 'package:flutter/src/widgets/safe_area.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/safe_area.dart@SafeArea@#as': (m.Scope scope, target)=>()=>target as SafeArea,
'package:flutter/src/widgets/safe_area.dart@SafeArea@#is': (m.Scope scope, target)=>()=>target is SafeArea,
'package:flutter/src/widgets/safe_area.dart@SafeArea@left': (m.Scope scope, SafeArea target)=>target.left,
'package:flutter/src/widgets/safe_area.dart@SafeArea@top': (m.Scope scope, SafeArea target)=>target.top,
'package:flutter/src/widgets/safe_area.dart@SafeArea@right': (m.Scope scope, SafeArea target)=>target.right,
'package:flutter/src/widgets/safe_area.dart@SafeArea@bottom': (m.Scope scope, SafeArea target)=>target.bottom,
'package:flutter/src/widgets/safe_area.dart@SafeArea@minimum': (m.Scope scope, SafeArea target)=>target.minimum,
'package:flutter/src/widgets/safe_area.dart@SafeArea@maintainBottomViewPadding': (m.Scope scope, SafeArea target)=>target.maintainBottomViewPadding,
'package:flutter/src/widgets/safe_area.dart@SafeArea@child': (m.Scope scope, SafeArea target)=>target.child,
'package:flutter/src/widgets/safe_area.dart@SafeArea@': (m.Scope scope)=>SafeArea,
'package:flutter/src/widgets/safe_area.dart@SafeArea@build': (m.Scope scope, SafeArea target)=>target.build,
'package:flutter/src/widgets/safe_area.dart@SafeArea@debugFillProperties': (m.Scope scope, SafeArea target)=>target.debugFillProperties,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@#as': (m.Scope scope, target)=>()=>target as SliverSafeArea,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@#is': (m.Scope scope, target)=>()=>target is SliverSafeArea,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@left': (m.Scope scope, SliverSafeArea target)=>target.left,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@top': (m.Scope scope, SliverSafeArea target)=>target.top,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@right': (m.Scope scope, SliverSafeArea target)=>target.right,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@bottom': (m.Scope scope, SliverSafeArea target)=>target.bottom,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@minimum': (m.Scope scope, SliverSafeArea target)=>target.minimum,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@sliver': (m.Scope scope, SliverSafeArea target)=>target.sliver,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@': (m.Scope scope)=>SliverSafeArea,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@build': (m.Scope scope, SliverSafeArea target)=>target.build,
'package:flutter/src/widgets/safe_area.dart@SliverSafeArea@debugFillProperties': (m.Scope scope, SliverSafeArea target)=>target.debugFillProperties,

};
}