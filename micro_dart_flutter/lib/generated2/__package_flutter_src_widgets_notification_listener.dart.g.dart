import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/notification_listener.dart@Notification@#as': (m.Scope scope, target)=>()=>target as Notification,
'package:flutter/src/widgets/notification_listener.dart@Notification@#is': (m.Scope scope, target)=>()=>target is Notification,
'package:flutter/src/widgets/notification_listener.dart@Notification@dispatch': (m.Scope scope, Notification target)=>target.dispatch,
'package:flutter/src/widgets/notification_listener.dart@Notification@toString': (m.Scope scope, Notification target)=>target.toString,
'package:flutter/src/widgets/notification_listener.dart@Notification@debugFillDescription': (m.Scope scope, Notification target)=>target.debugFillDescription,
'package:flutter/src/widgets/notification_listener.dart@NotificationListener@#as': (m.Scope scope, target)=>()=>target as NotificationListener,
'package:flutter/src/widgets/notification_listener.dart@NotificationListener@#is': (m.Scope scope, target)=>()=>target is NotificationListener,
'package:flutter/src/widgets/notification_listener.dart@NotificationListener@onNotification': (m.Scope scope, NotificationListener target)=>target.onNotification,
'package:flutter/src/widgets/notification_listener.dart@NotificationListener@': (m.Scope scope)=>({ child,  key,  onNotification}){
bool onNotificationProxy<T>( notification) {
return  engine.callFunctionPointer(scope, onNotification!,[notification], {});
}

return NotificationListener(child:child, key:key, onNotification:onNotification == null ? null :onNotificationProxy);
},
'package:flutter/src/widgets/notification_listener.dart@NotificationListener@createElement': (m.Scope scope, NotificationListener target)=>target.createElement,
'package:flutter/src/widgets/notification_listener.dart@LayoutChangedNotification@#as': (m.Scope scope, target)=>()=>target as LayoutChangedNotification,
'package:flutter/src/widgets/notification_listener.dart@LayoutChangedNotification@#is': (m.Scope scope, target)=>()=>target is LayoutChangedNotification,
'package:flutter/src/widgets/notification_listener.dart@LayoutChangedNotification@': (m.Scope scope)=>(){
return LayoutChangedNotification();
},

};
}