import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@#as': (m.Scope scope, target)=>()=>target as ScrollableDetails,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@#is': (m.Scope scope, target)=>()=>target is ScrollableDetails,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@direction': (m.Scope scope, ScrollableDetails target)=>target.direction,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@controller': (m.Scope scope, ScrollableDetails target)=>target.controller,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@physics': (m.Scope scope, ScrollableDetails target)=>target.physics,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@decorationClipBehavior': (m.Scope scope, ScrollableDetails target)=>target.decorationClipBehavior,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@hashCode': (m.Scope scope, ScrollableDetails target)=>target.hashCode,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@': (m.Scope scope)=>({ clipBehavior,  controller,  decorationClipBehavior,  direction,  physics}){
return ScrollableDetails(clipBehavior:clipBehavior, controller:controller, decorationClipBehavior:decorationClipBehavior, direction:direction, physics:physics);
},
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@vertical': (m.Scope scope)=>ScrollableDetails.vertical,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@horizontal': (m.Scope scope)=>ScrollableDetails.horizontal,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@copyWith': (m.Scope scope, ScrollableDetails target)=>target.copyWith,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@toString': (m.Scope scope, ScrollableDetails target)=>target.toString,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollableDetails@==': (m.Scope scope, ScrollableDetails target)=>(other)=> target == other,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@#as': (m.Scope scope, target)=>()=>target as EdgeDraggingAutoScroller,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@#is': (m.Scope scope, target)=>()=>target is EdgeDraggingAutoScroller,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@scrollable': (m.Scope scope, EdgeDraggingAutoScroller target)=>target.scrollable,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@onScrollViewScrolled': (m.Scope scope, EdgeDraggingAutoScroller target)=>target.onScrollViewScrolled,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@velocityScalar': (m.Scope scope, EdgeDraggingAutoScroller target)=>target.velocityScalar,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@scrolling': (m.Scope scope, EdgeDraggingAutoScroller target)=>target.scrolling,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@': (m.Scope scope)=>( scrollable, { onScrollViewScrolled,  velocityScalar}){
void onScrollViewScrolledProxy() {
 engine.callFunctionPointer(scope, onScrollViewScrolled!,[], {});
}

return EdgeDraggingAutoScroller(scrollable, onScrollViewScrolled:onScrollViewScrolled == null ? null :onScrollViewScrolledProxy, velocityScalar:velocityScalar ?? 7);
},
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@startAutoScrollIfNecessary': (m.Scope scope, EdgeDraggingAutoScroller target)=>target.startAutoScrollIfNecessary,
'package:flutter/src/widgets/scrollable_helpers.dart@EdgeDraggingAutoScroller@stopAutoScroll': (m.Scope scope, EdgeDraggingAutoScroller target)=>target.stopAutoScroll,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIncrementDetails@#as': (m.Scope scope, target)=>()=>target as ScrollIncrementDetails,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIncrementDetails@#is': (m.Scope scope, target)=>()=>target is ScrollIncrementDetails,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIncrementDetails@type': (m.Scope scope, ScrollIncrementDetails target)=>target.type,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIncrementDetails@metrics': (m.Scope scope, ScrollIncrementDetails target)=>target.metrics,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIncrementDetails@': (m.Scope scope)=>({ metrics,  type}){
return ScrollIncrementDetails(metrics:metrics, type:type);
},
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIntent@#as': (m.Scope scope, target)=>()=>target as ScrollIntent,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIntent@#is': (m.Scope scope, target)=>()=>target is ScrollIntent,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIntent@direction': (m.Scope scope, ScrollIntent target)=>target.direction,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIntent@type': (m.Scope scope, ScrollIntent target)=>target.type,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollIntent@': (m.Scope scope)=>({ direction,  type}){
return ScrollIntent(direction:direction, type:type ?? ScrollIncrementType.line);
},
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollAction@#as': (m.Scope scope, target)=>()=>target as ScrollAction,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollAction@#is': (m.Scope scope, target)=>()=>target is ScrollAction,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollAction@': (m.Scope scope)=>(){
return ScrollAction();
},
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollAction@isEnabled': (m.Scope scope, ScrollAction target)=>target.isEnabled,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollAction@getDirectionalIncrement': (m.Scope scope)=>ScrollAction.getDirectionalIncrement,
'package:flutter/src/widgets/scrollable_helpers.dart@ScrollAction@invoke': (m.Scope scope, ScrollAction target)=>target.invoke,

};
}