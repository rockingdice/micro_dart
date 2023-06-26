import 'package:flutter/src/widgets/scroll_notification_observer.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@#as': (m.Scope scope, target)=>()=>target as ScrollNotificationObserver,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@#is': (m.Scope scope, target)=>()=>target is ScrollNotificationObserver,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@child': (m.Scope scope, ScrollNotificationObserver target)=>target.child,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@': (m.Scope scope)=>ScrollNotificationObserver,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@maybeOf': (m.Scope scope)=>ScrollNotificationObserver.maybeOf,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@of': (m.Scope scope)=>ScrollNotificationObserver.of,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserver@createState': (m.Scope scope, ScrollNotificationObserver target)=>target.createState,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@#as': (m.Scope scope, target)=>()=>target as ScrollNotificationObserverState,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@#is': (m.Scope scope, target)=>()=>target is ScrollNotificationObserverState,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@': (m.Scope scope)=>(){
return ScrollNotificationObserverState();
},
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@addListener': (m.Scope scope, ScrollNotificationObserverState target)=>( listener){
void listenerProxy( notification) {
 engine.callFunctionPointer(scope, listener!,[notification], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@removeListener': (m.Scope scope, ScrollNotificationObserverState target)=>( listener){
void listenerProxy( notification) {
 engine.callFunctionPointer(scope, listener!,[notification], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@build': (m.Scope scope, ScrollNotificationObserverState target)=>target.build,
'package:flutter/src/widgets/scroll_notification_observer.dart@ScrollNotificationObserverState@dispose': (m.Scope scope, ScrollNotificationObserverState target)=>target.dispose,

};
}