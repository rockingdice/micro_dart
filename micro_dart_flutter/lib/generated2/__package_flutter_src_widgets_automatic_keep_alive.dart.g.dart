import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/automatic_keep_alive.dart@AutomaticKeepAlive@#as': (m.Scope scope, target)=>()=>target as AutomaticKeepAlive,
'package:flutter/src/widgets/automatic_keep_alive.dart@AutomaticKeepAlive@#is': (m.Scope scope, target)=>()=>target is AutomaticKeepAlive,
'package:flutter/src/widgets/automatic_keep_alive.dart@AutomaticKeepAlive@child': (m.Scope scope, AutomaticKeepAlive target)=>target.child,
'package:flutter/src/widgets/automatic_keep_alive.dart@AutomaticKeepAlive@': (m.Scope scope)=>({ child,  key}){
return AutomaticKeepAlive(child:child, key:key);
},
'package:flutter/src/widgets/automatic_keep_alive.dart@AutomaticKeepAlive@createState': (m.Scope scope, AutomaticKeepAlive target)=>target.createState,
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveNotification@#as': (m.Scope scope, target)=>()=>target as KeepAliveNotification,
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveNotification@#is': (m.Scope scope, target)=>()=>target is KeepAliveNotification,
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveNotification@handle': (m.Scope scope, KeepAliveNotification target)=>target.handle,
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveNotification@': (m.Scope scope)=>( handle){
return KeepAliveNotification(handle);
},
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveHandle@#as': (m.Scope scope, target)=>()=>target as KeepAliveHandle,
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveHandle@#is': (m.Scope scope, target)=>()=>target is KeepAliveHandle,
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveHandle@': (m.Scope scope)=>(){
return KeepAliveHandle();
},
'package:flutter/src/widgets/automatic_keep_alive.dart@KeepAliveHandle@dispose': (m.Scope scope, KeepAliveHandle target)=>target.dispose,

};
}