import 'package:flutter/src/widgets/size_changed_layout_notifier.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotification@#as': (m.Scope scope, target)=>()=>target as SizeChangedLayoutNotification,
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotification@#is': (m.Scope scope, target)=>()=>target is SizeChangedLayoutNotification,
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotification@': (m.Scope scope)=>(){
return SizeChangedLayoutNotification();
},
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotifier@#as': (m.Scope scope, target)=>()=>target as SizeChangedLayoutNotifier,
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotifier@#is': (m.Scope scope, target)=>()=>target is SizeChangedLayoutNotifier,
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotifier@': (m.Scope scope)=>({ child,  key}){
return SizeChangedLayoutNotifier(child:child, key:key);
},
'package:flutter/src/widgets/size_changed_layout_notifier.dart@SizeChangedLayoutNotifier@createRenderObject': (m.Scope scope, SizeChangedLayoutNotifier target)=>target.createRenderObject,

};
}