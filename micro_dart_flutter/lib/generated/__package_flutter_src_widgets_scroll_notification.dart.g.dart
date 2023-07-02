import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_notification.dart@ScrollNotification@#as': (m.Scope scope, target)=>()=>target as ScrollNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollNotification@#is': (m.Scope scope, target)=>()=>target is ScrollNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollNotification@metrics': (m.Scope scope, ScrollNotification target)=>target.metrics,
'package:flutter/src/widgets/scroll_notification.dart@ScrollNotification@context': (m.Scope scope, ScrollNotification target)=>target.context,
'package:flutter/src/widgets/scroll_notification.dart@ScrollNotification@debugFillDescription': (m.Scope scope, ScrollNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_notification.dart@ScrollStartNotification@#as': (m.Scope scope, target)=>()=>target as ScrollStartNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollStartNotification@#is': (m.Scope scope, target)=>()=>target is ScrollStartNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollStartNotification@dragDetails': (m.Scope scope, ScrollStartNotification target)=>target.dragDetails,
'package:flutter/src/widgets/scroll_notification.dart@ScrollStartNotification@': (m.Scope scope)=>({ context,  dragDetails,  metrics}){
return ScrollStartNotification(context:context, dragDetails:dragDetails, metrics:metrics);
},
'package:flutter/src/widgets/scroll_notification.dart@ScrollStartNotification@debugFillDescription': (m.Scope scope, ScrollStartNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_notification.dart@ScrollUpdateNotification@#as': (m.Scope scope, target)=>()=>target as ScrollUpdateNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollUpdateNotification@#is': (m.Scope scope, target)=>()=>target is ScrollUpdateNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollUpdateNotification@dragDetails': (m.Scope scope, ScrollUpdateNotification target)=>target.dragDetails,
'package:flutter/src/widgets/scroll_notification.dart@ScrollUpdateNotification@scrollDelta': (m.Scope scope, ScrollUpdateNotification target)=>target.scrollDelta,
'package:flutter/src/widgets/scroll_notification.dart@ScrollUpdateNotification@': (m.Scope scope)=>({ context,  depth,  dragDetails,  metrics,  scrollDelta}){
return ScrollUpdateNotification(context:context, depth:depth, dragDetails:dragDetails, metrics:metrics, scrollDelta:scrollDelta);
},
'package:flutter/src/widgets/scroll_notification.dart@ScrollUpdateNotification@debugFillDescription': (m.Scope scope, ScrollUpdateNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@#as': (m.Scope scope, target)=>()=>target as OverscrollNotification,
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@#is': (m.Scope scope, target)=>()=>target is OverscrollNotification,
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@dragDetails': (m.Scope scope, OverscrollNotification target)=>target.dragDetails,
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@overscroll': (m.Scope scope, OverscrollNotification target)=>target.overscroll,
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@velocity': (m.Scope scope, OverscrollNotification target)=>target.velocity,
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@': (m.Scope scope)=>({ context,  dragDetails,  metrics,  overscroll,  velocity}){
return OverscrollNotification(context:context, dragDetails:dragDetails, metrics:metrics, overscroll:overscroll, velocity:velocity ?? 0.0);
},
'package:flutter/src/widgets/scroll_notification.dart@OverscrollNotification@debugFillDescription': (m.Scope scope, OverscrollNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_notification.dart@ScrollEndNotification@#as': (m.Scope scope, target)=>()=>target as ScrollEndNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollEndNotification@#is': (m.Scope scope, target)=>()=>target is ScrollEndNotification,
'package:flutter/src/widgets/scroll_notification.dart@ScrollEndNotification@dragDetails': (m.Scope scope, ScrollEndNotification target)=>target.dragDetails,
'package:flutter/src/widgets/scroll_notification.dart@ScrollEndNotification@': (m.Scope scope)=>({ context,  dragDetails,  metrics}){
return ScrollEndNotification(context:context, dragDetails:dragDetails, metrics:metrics);
},
'package:flutter/src/widgets/scroll_notification.dart@ScrollEndNotification@debugFillDescription': (m.Scope scope, ScrollEndNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_notification.dart@UserScrollNotification@#as': (m.Scope scope, target)=>()=>target as UserScrollNotification,
'package:flutter/src/widgets/scroll_notification.dart@UserScrollNotification@#is': (m.Scope scope, target)=>()=>target is UserScrollNotification,
'package:flutter/src/widgets/scroll_notification.dart@UserScrollNotification@direction': (m.Scope scope, UserScrollNotification target)=>target.direction,
'package:flutter/src/widgets/scroll_notification.dart@UserScrollNotification@': (m.Scope scope)=>({ context,  direction,  metrics}){
return UserScrollNotification(context:context, direction:direction, metrics:metrics);
},
'package:flutter/src/widgets/scroll_notification.dart@UserScrollNotification@debugFillDescription': (m.Scope scope, UserScrollNotification target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_notification.dart@@defaultScrollNotificationPredicate': (m.Scope scope)=>defaultScrollNotificationPredicate,

};
}