import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/inherited_notifier.dart@InheritedNotifier@#as': (m.Scope scope, target)=>()=>target as InheritedNotifier,
'package:flutter/src/widgets/inherited_notifier.dart@InheritedNotifier@#is': (m.Scope scope, target)=>()=>target is InheritedNotifier,
'package:flutter/src/widgets/inherited_notifier.dart@InheritedNotifier@notifier': (m.Scope scope, InheritedNotifier target)=>target.notifier,
'package:flutter/src/widgets/inherited_notifier.dart@InheritedNotifier@updateShouldNotify': (m.Scope scope, InheritedNotifier target)=>target.updateShouldNotify,
'package:flutter/src/widgets/inherited_notifier.dart@InheritedNotifier@createElement': (m.Scope scope, InheritedNotifier target)=>target.createElement,

};
}