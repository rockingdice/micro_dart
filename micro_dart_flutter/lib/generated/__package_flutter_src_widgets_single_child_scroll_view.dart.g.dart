import 'package:flutter/src/widgets/single_child_scroll_view.dart';
import 'dart:math';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@#as': (m.Scope scope, target)=>()=>target as SingleChildScrollView,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@#is': (m.Scope scope, target)=>()=>target is SingleChildScrollView,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@scrollDirection': (m.Scope scope, SingleChildScrollView target)=>target.scrollDirection,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@reverse': (m.Scope scope, SingleChildScrollView target)=>target.reverse,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@padding': (m.Scope scope, SingleChildScrollView target)=>target.padding,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@controller': (m.Scope scope, SingleChildScrollView target)=>target.controller,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@primary': (m.Scope scope, SingleChildScrollView target)=>target.primary,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@physics': (m.Scope scope, SingleChildScrollView target)=>target.physics,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@child': (m.Scope scope, SingleChildScrollView target)=>target.child,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@dragStartBehavior': (m.Scope scope, SingleChildScrollView target)=>target.dragStartBehavior,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@clipBehavior': (m.Scope scope, SingleChildScrollView target)=>target.clipBehavior,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@restorationId': (m.Scope scope, SingleChildScrollView target)=>target.restorationId,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@keyboardDismissBehavior': (m.Scope scope, SingleChildScrollView target)=>target.keyboardDismissBehavior,
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@': (m.Scope scope)=>({ child,  clipBehavior,  controller,  dragStartBehavior,  key,  keyboardDismissBehavior,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection}){
return SingleChildScrollView(child:child, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical);
},
'package:flutter/src/widgets/single_child_scroll_view.dart@SingleChildScrollView@build': (m.Scope scope, SingleChildScrollView target)=>target.build,

};
}