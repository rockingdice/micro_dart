import 'package:flutter/src/widgets/display_feature_sub_screen.dart';
import 'dart:math';
import 'dart:ui' show DisplayFeature,DisplayFeatureState;
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@#as': (m.Scope scope, target)=>()=>target as DisplayFeatureSubScreen,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@#is': (m.Scope scope, target)=>()=>target is DisplayFeatureSubScreen,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@anchorPoint': (m.Scope scope, DisplayFeatureSubScreen target)=>target.anchorPoint,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@child': (m.Scope scope, DisplayFeatureSubScreen target)=>target.child,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@': (m.Scope scope)=>DisplayFeatureSubScreen,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@build': (m.Scope scope, DisplayFeatureSubScreen target)=>target.build,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@avoidBounds': (m.Scope scope)=>DisplayFeatureSubScreen.avoidBounds,
'package:flutter/src/widgets/display_feature_sub_screen.dart@DisplayFeatureSubScreen@subScreensInBounds': (m.Scope scope)=>DisplayFeatureSubScreen.subScreensInBounds,

};
}