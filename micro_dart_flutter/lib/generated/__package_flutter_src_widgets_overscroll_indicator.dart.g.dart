import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'dart:async' show Timer;
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart' show Tolerance,nearEqual;
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@#as': (m.Scope scope, target)=>()=>target as GlowingOverscrollIndicator,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@#is': (m.Scope scope, target)=>()=>target is GlowingOverscrollIndicator,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@showLeading': (m.Scope scope, GlowingOverscrollIndicator target)=>target.showLeading,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@showTrailing': (m.Scope scope, GlowingOverscrollIndicator target)=>target.showTrailing,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@axisDirection': (m.Scope scope, GlowingOverscrollIndicator target)=>target.axisDirection,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@color': (m.Scope scope, GlowingOverscrollIndicator target)=>target.color,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@notificationPredicate': (m.Scope scope, GlowingOverscrollIndicator target)=>target.notificationPredicate,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@child': (m.Scope scope, GlowingOverscrollIndicator target)=>target.child,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@axis': (m.Scope scope, GlowingOverscrollIndicator target)=>target.axis,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@': (m.Scope scope)=>({ axisDirection,  child,  color,  key,  notificationPredicate,  showLeading,  showTrailing}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

return GlowingOverscrollIndicator(axisDirection:axisDirection, child:child, color:color, key:key, notificationPredicate:notificationPredicate == null ? defaultScrollNotificationPredicate :notificationPredicateProxy, showLeading:showLeading ?? true, showTrailing:showTrailing ?? true);
},
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@createState': (m.Scope scope, GlowingOverscrollIndicator target)=>target.createState,
'package:flutter/src/widgets/overscroll_indicator.dart@GlowingOverscrollIndicator@debugFillProperties': (m.Scope scope, GlowingOverscrollIndicator target)=>target.debugFillProperties,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@#as': (m.Scope scope, target)=>()=>target as StretchingOverscrollIndicator,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@#is': (m.Scope scope, target)=>()=>target is StretchingOverscrollIndicator,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@axisDirection': (m.Scope scope, StretchingOverscrollIndicator target)=>target.axisDirection,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@notificationPredicate': (m.Scope scope, StretchingOverscrollIndicator target)=>target.notificationPredicate,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@clipBehavior': (m.Scope scope, StretchingOverscrollIndicator target)=>target.clipBehavior,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@child': (m.Scope scope, StretchingOverscrollIndicator target)=>target.child,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@axis': (m.Scope scope, StretchingOverscrollIndicator target)=>target.axis,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@': (m.Scope scope)=>({ axisDirection,  child,  clipBehavior,  key,  notificationPredicate}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

return StretchingOverscrollIndicator(axisDirection:axisDirection, child:child, clipBehavior:clipBehavior ?? Clip.hardEdge, key:key, notificationPredicate:notificationPredicate == null ? defaultScrollNotificationPredicate :notificationPredicateProxy);
},
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@createState': (m.Scope scope, StretchingOverscrollIndicator target)=>target.createState,
'package:flutter/src/widgets/overscroll_indicator.dart@StretchingOverscrollIndicator@debugFillProperties': (m.Scope scope, StretchingOverscrollIndicator target)=>target.debugFillProperties,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@#as': (m.Scope scope, target)=>()=>target as OverscrollIndicatorNotification,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@#is': (m.Scope scope, target)=>()=>target is OverscrollIndicatorNotification,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@leading': (m.Scope scope, OverscrollIndicatorNotification target)=>target.leading,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@paintOffset': (m.Scope scope, OverscrollIndicatorNotification target)=>target.paintOffset,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@paintOffset:set': (m.Scope scope, OverscrollIndicatorNotification target)=>(other)=>target.paintOffset=other,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@accepted': (m.Scope scope, OverscrollIndicatorNotification target)=>target.accepted,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@accepted:set': (m.Scope scope, OverscrollIndicatorNotification target)=>(other)=>target.accepted=other,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@': (m.Scope scope)=>({ leading}){
return OverscrollIndicatorNotification(leading:leading);
},
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@disallowIndicator': (m.Scope scope, OverscrollIndicatorNotification target)=>target.disallowIndicator,
'package:flutter/src/widgets/overscroll_indicator.dart@OverscrollIndicatorNotification@debugFillDescription': (m.Scope scope, OverscrollIndicatorNotification target)=>target.debugFillDescription,

};
}