import 'package:flutter/src/widgets/draggable_scrollable_sheet.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'package:flutter/src/widgets/value_listenable_builder.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@#as': (m.Scope scope, target)=>()=>target as DraggableScrollableController,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@#is': (m.Scope scope, target)=>()=>target is DraggableScrollableController,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@size': (m.Scope scope, DraggableScrollableController target)=>target.size,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@pixels': (m.Scope scope, DraggableScrollableController target)=>target.pixels,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@isAttached': (m.Scope scope, DraggableScrollableController target)=>target.isAttached,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@': (m.Scope scope)=>(){
return DraggableScrollableController();
},
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@sizeToPixels': (m.Scope scope, DraggableScrollableController target)=>target.sizeToPixels,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@pixelsToSize': (m.Scope scope, DraggableScrollableController target)=>target.pixelsToSize,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@animateTo': (m.Scope scope, DraggableScrollableController target)=>target.animateTo,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@jumpTo': (m.Scope scope, DraggableScrollableController target)=>target.jumpTo,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableController@reset': (m.Scope scope, DraggableScrollableController target)=>target.reset,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@#as': (m.Scope scope, target)=>()=>target as DraggableScrollableSheet,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@#is': (m.Scope scope, target)=>()=>target is DraggableScrollableSheet,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@initialChildSize': (m.Scope scope, DraggableScrollableSheet target)=>target.initialChildSize,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@minChildSize': (m.Scope scope, DraggableScrollableSheet target)=>target.minChildSize,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@maxChildSize': (m.Scope scope, DraggableScrollableSheet target)=>target.maxChildSize,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@expand': (m.Scope scope, DraggableScrollableSheet target)=>target.expand,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@snap': (m.Scope scope, DraggableScrollableSheet target)=>target.snap,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@snapSizes': (m.Scope scope, DraggableScrollableSheet target)=>target.snapSizes,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@snapAnimationDuration': (m.Scope scope, DraggableScrollableSheet target)=>target.snapAnimationDuration,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@controller': (m.Scope scope, DraggableScrollableSheet target)=>target.controller,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@builder': (m.Scope scope, DraggableScrollableSheet target)=>target.builder,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@': (m.Scope scope)=>({ builder,  controller,  expand,  initialChildSize,  key,  maxChildSize,  minChildSize,  snap,  snapAnimationDuration,  snapSizes}){
Widget builderProxy( context,  scrollController) {
return  engine.callFunctionPointer(scope, builder!,[context, scrollController], {});
}

return DraggableScrollableSheet(builder:builderProxy, controller:controller, expand:expand ?? true, initialChildSize:initialChildSize ?? 0.5, key:key, maxChildSize:maxChildSize ?? 1.0, minChildSize:minChildSize ?? 0.25, snap:snap ?? false, snapAnimationDuration:snapAnimationDuration, snapSizes:snapSizes);
},
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableSheet@createState': (m.Scope scope, DraggableScrollableSheet target)=>target.createState,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@#as': (m.Scope scope, target)=>()=>target as DraggableScrollableNotification,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@#is': (m.Scope scope, target)=>()=>target is DraggableScrollableNotification,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@extent': (m.Scope scope, DraggableScrollableNotification target)=>target.extent,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@minExtent': (m.Scope scope, DraggableScrollableNotification target)=>target.minExtent,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@maxExtent': (m.Scope scope, DraggableScrollableNotification target)=>target.maxExtent,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@initialExtent': (m.Scope scope, DraggableScrollableNotification target)=>target.initialExtent,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@context': (m.Scope scope, DraggableScrollableNotification target)=>target.context,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@': (m.Scope scope)=>({ context,  extent,  initialExtent,  maxExtent,  minExtent}){
return DraggableScrollableNotification(context:context, extent:extent, initialExtent:initialExtent, maxExtent:maxExtent, minExtent:minExtent);
},
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableNotification@debugFillDescription': (m.Scope scope, DraggableScrollableNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableActuator@#as': (m.Scope scope, target)=>()=>target as DraggableScrollableActuator,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableActuator@#is': (m.Scope scope, target)=>()=>target is DraggableScrollableActuator,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableActuator@child': (m.Scope scope, DraggableScrollableActuator target)=>target.child,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableActuator@': (m.Scope scope)=>({ child,  key}){
return DraggableScrollableActuator(child:child, key:key);
},
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableActuator@reset': (m.Scope scope)=>DraggableScrollableActuator.reset,
'package:flutter/src/widgets/draggable_scrollable_sheet.dart@DraggableScrollableActuator@build': (m.Scope scope, DraggableScrollableActuator target)=>target.build,

};
}