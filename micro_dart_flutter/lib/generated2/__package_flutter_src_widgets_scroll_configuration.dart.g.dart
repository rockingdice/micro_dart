import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' show LogicalKeyboardKey;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/scrollbar.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@#as': (m.Scope scope, target)=>()=>target as ScrollBehavior,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@#is': (m.Scope scope, target)=>()=>target is ScrollBehavior,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@dragDevices': (m.Scope scope, ScrollBehavior target)=>target.dragDevices,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@pointerAxisModifiers': (m.Scope scope, ScrollBehavior target)=>target.pointerAxisModifiers,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@': (m.Scope scope)=>({ androidOverscrollIndicator}){
return ScrollBehavior(androidOverscrollIndicator:androidOverscrollIndicator);
},
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@copyWith': (m.Scope scope, ScrollBehavior target)=>target.copyWith,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@getPlatform': (m.Scope scope, ScrollBehavior target)=>target.getPlatform,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@buildScrollbar': (m.Scope scope, ScrollBehavior target)=>target.buildScrollbar,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@buildOverscrollIndicator': (m.Scope scope, ScrollBehavior target)=>target.buildOverscrollIndicator,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@velocityTrackerBuilder': (m.Scope scope, ScrollBehavior target)=>target.velocityTrackerBuilder,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@getScrollPhysics': (m.Scope scope, ScrollBehavior target)=>target.getScrollPhysics,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@shouldNotify': (m.Scope scope, ScrollBehavior target)=>target.shouldNotify,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollBehavior@toString': (m.Scope scope, ScrollBehavior target)=>target.toString,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@#as': (m.Scope scope, target)=>()=>target as ScrollConfiguration,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@#is': (m.Scope scope, target)=>()=>target is ScrollConfiguration,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@behavior': (m.Scope scope, ScrollConfiguration target)=>target.behavior,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@': (m.Scope scope)=>({ behavior,  child,  key}){
return ScrollConfiguration(behavior:behavior, child:child, key:key);
},
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@of': (m.Scope scope)=>ScrollConfiguration.of,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@updateShouldNotify': (m.Scope scope, ScrollConfiguration target)=>target.updateShouldNotify,
'package:flutter/src/widgets/scroll_configuration.dart@ScrollConfiguration@debugFillProperties': (m.Scope scope, ScrollConfiguration target)=>target.debugFillProperties,

};
}