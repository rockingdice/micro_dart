import 'package:flutter/src/widgets/page_view.dart';
import 'dart:math';
import 'package:flutter/foundation.dart' show clampDouble,precisionErrorTolerance;
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/sliver_fill.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/page_view.dart@PageController@#as': (m.Scope scope, target)=>()=>target as PageController,
'package:flutter/src/widgets/page_view.dart@PageController@#is': (m.Scope scope, target)=>()=>target is PageController,
'package:flutter/src/widgets/page_view.dart@PageController@initialPage': (m.Scope scope, PageController target)=>target.initialPage,
'package:flutter/src/widgets/page_view.dart@PageController@keepPage': (m.Scope scope, PageController target)=>target.keepPage,
'package:flutter/src/widgets/page_view.dart@PageController@viewportFraction': (m.Scope scope, PageController target)=>target.viewportFraction,
'package:flutter/src/widgets/page_view.dart@PageController@page': (m.Scope scope, PageController target)=>target.page,
'package:flutter/src/widgets/page_view.dart@PageController@': (m.Scope scope)=>({ initialPage,  keepPage,  viewportFraction}){
return PageController(initialPage:initialPage ?? 0, keepPage:keepPage ?? true, viewportFraction:viewportFraction ?? 1.0);
},
'package:flutter/src/widgets/page_view.dart@PageController@animateToPage': (m.Scope scope, PageController target)=>target.animateToPage,
'package:flutter/src/widgets/page_view.dart@PageController@jumpToPage': (m.Scope scope, PageController target)=>target.jumpToPage,
'package:flutter/src/widgets/page_view.dart@PageController@nextPage': (m.Scope scope, PageController target)=>target.nextPage,
'package:flutter/src/widgets/page_view.dart@PageController@previousPage': (m.Scope scope, PageController target)=>target.previousPage,
'package:flutter/src/widgets/page_view.dart@PageController@createScrollPosition': (m.Scope scope, PageController target)=>target.createScrollPosition,
'package:flutter/src/widgets/page_view.dart@PageController@attach': (m.Scope scope, PageController target)=>target.attach,
'package:flutter/src/widgets/page_view.dart@PageMetrics@#as': (m.Scope scope, target)=>()=>target as PageMetrics,
'package:flutter/src/widgets/page_view.dart@PageMetrics@#is': (m.Scope scope, target)=>()=>target is PageMetrics,
'package:flutter/src/widgets/page_view.dart@PageMetrics@viewportFraction': (m.Scope scope, PageMetrics target)=>target.viewportFraction,
'package:flutter/src/widgets/page_view.dart@PageMetrics@page': (m.Scope scope, PageMetrics target)=>target.page,
'package:flutter/src/widgets/page_view.dart@PageMetrics@': (m.Scope scope)=>({ axisDirection,  devicePixelRatio,  maxScrollExtent,  minScrollExtent,  pixels,  viewportDimension,  viewportFraction}){
return PageMetrics(axisDirection:axisDirection, devicePixelRatio:devicePixelRatio, maxScrollExtent:maxScrollExtent, minScrollExtent:minScrollExtent, pixels:pixels, viewportDimension:viewportDimension, viewportFraction:viewportFraction);
},
'package:flutter/src/widgets/page_view.dart@PageMetrics@copyWith': (m.Scope scope, PageMetrics target)=>target.copyWith,
'package:flutter/src/widgets/page_view.dart@PageScrollPhysics@#as': (m.Scope scope, target)=>()=>target as PageScrollPhysics,
'package:flutter/src/widgets/page_view.dart@PageScrollPhysics@#is': (m.Scope scope, target)=>()=>target is PageScrollPhysics,
'package:flutter/src/widgets/page_view.dart@PageScrollPhysics@allowImplicitScrolling': (m.Scope scope, PageScrollPhysics target)=>target.allowImplicitScrolling,
'package:flutter/src/widgets/page_view.dart@PageScrollPhysics@': (m.Scope scope)=>({ parent}){
return PageScrollPhysics(parent:parent);
},
'package:flutter/src/widgets/page_view.dart@PageScrollPhysics@applyTo': (m.Scope scope, PageScrollPhysics target)=>target.applyTo,
'package:flutter/src/widgets/page_view.dart@PageScrollPhysics@createBallisticSimulation': (m.Scope scope, PageScrollPhysics target)=>target.createBallisticSimulation,
'package:flutter/src/widgets/page_view.dart@PageView@#as': (m.Scope scope, target)=>()=>target as PageView,
'package:flutter/src/widgets/page_view.dart@PageView@#is': (m.Scope scope, target)=>()=>target is PageView,
'package:flutter/src/widgets/page_view.dart@PageView@allowImplicitScrolling': (m.Scope scope, PageView target)=>target.allowImplicitScrolling,
'package:flutter/src/widgets/page_view.dart@PageView@restorationId': (m.Scope scope, PageView target)=>target.restorationId,
'package:flutter/src/widgets/page_view.dart@PageView@scrollDirection': (m.Scope scope, PageView target)=>target.scrollDirection,
'package:flutter/src/widgets/page_view.dart@PageView@reverse': (m.Scope scope, PageView target)=>target.reverse,
'package:flutter/src/widgets/page_view.dart@PageView@controller': (m.Scope scope, PageView target)=>target.controller,
'package:flutter/src/widgets/page_view.dart@PageView@physics': (m.Scope scope, PageView target)=>target.physics,
'package:flutter/src/widgets/page_view.dart@PageView@pageSnapping': (m.Scope scope, PageView target)=>target.pageSnapping,
'package:flutter/src/widgets/page_view.dart@PageView@onPageChanged': (m.Scope scope, PageView target)=>target.onPageChanged,
'package:flutter/src/widgets/page_view.dart@PageView@childrenDelegate': (m.Scope scope, PageView target)=>target.childrenDelegate,
'package:flutter/src/widgets/page_view.dart@PageView@dragStartBehavior': (m.Scope scope, PageView target)=>target.dragStartBehavior,
'package:flutter/src/widgets/page_view.dart@PageView@clipBehavior': (m.Scope scope, PageView target)=>target.clipBehavior,
'package:flutter/src/widgets/page_view.dart@PageView@scrollBehavior': (m.Scope scope, PageView target)=>target.scrollBehavior,
'package:flutter/src/widgets/page_view.dart@PageView@padEnds': (m.Scope scope, PageView target)=>target.padEnds,
'package:flutter/src/widgets/page_view.dart@PageView@': (m.Scope scope)=>({ allowImplicitScrolling,  children,  clipBehavior,  controller,  dragStartBehavior,  key,  onPageChanged,  padEnds,  pageSnapping,  physics,  restorationId,  reverse,  scrollBehavior,  scrollDirection}){
void onPageChangedProxy( value) {
 engine.callFunctionPointer(scope, onPageChanged!,[value], {});
}

return PageView(allowImplicitScrolling:allowImplicitScrolling ?? false, children:children ?? const <Widget>[], clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, key:key, onPageChanged:onPageChanged == null ? null :onPageChangedProxy, padEnds:padEnds ?? true, pageSnapping:pageSnapping ?? true, physics:physics, restorationId:restorationId, reverse:reverse ?? false, scrollBehavior:scrollBehavior, scrollDirection:scrollDirection ?? Axis.horizontal);
},
'package:flutter/src/widgets/page_view.dart@PageView@builder': (m.Scope scope)=>({ allowImplicitScrolling,  clipBehavior,  controller,  dragStartBehavior,  findChildIndexCallback,  itemBuilder,  itemCount,  key,  onPageChanged,  padEnds,  pageSnapping,  physics,  restorationId,  reverse,  scrollBehavior,  scrollDirection}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

void onPageChangedProxy( value) {
 engine.callFunctionPointer(scope, onPageChanged!,[value], {});
}

return PageView.builder(allowImplicitScrolling:allowImplicitScrolling ?? false, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, onPageChanged:onPageChanged == null ? null :onPageChangedProxy, padEnds:padEnds ?? true, pageSnapping:pageSnapping ?? true, physics:physics, restorationId:restorationId, reverse:reverse ?? false, scrollBehavior:scrollBehavior, scrollDirection:scrollDirection ?? Axis.horizontal);
},
'package:flutter/src/widgets/page_view.dart@PageView@custom': (m.Scope scope)=>({ allowImplicitScrolling,  childrenDelegate,  clipBehavior,  controller,  dragStartBehavior,  key,  onPageChanged,  padEnds,  pageSnapping,  physics,  restorationId,  reverse,  scrollBehavior,  scrollDirection}){
void onPageChangedProxy( value) {
 engine.callFunctionPointer(scope, onPageChanged!,[value], {});
}

return PageView.custom(allowImplicitScrolling:allowImplicitScrolling ?? false, childrenDelegate:childrenDelegate, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, key:key, onPageChanged:onPageChanged == null ? null :onPageChangedProxy, padEnds:padEnds ?? true, pageSnapping:pageSnapping ?? true, physics:physics, restorationId:restorationId, reverse:reverse ?? false, scrollBehavior:scrollBehavior, scrollDirection:scrollDirection ?? Axis.horizontal);
},
'package:flutter/src/widgets/page_view.dart@PageView@createState': (m.Scope scope, PageView target)=>target.createState,

};
}