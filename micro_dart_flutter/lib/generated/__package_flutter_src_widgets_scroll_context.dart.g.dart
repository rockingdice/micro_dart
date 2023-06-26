import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@#as': (m.Scope scope, target)=>()=>target as ScrollContext,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@#is': (m.Scope scope, target)=>()=>target is ScrollContext,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@notificationContext': (m.Scope scope, ScrollContext target)=>target.notificationContext,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@storageContext': (m.Scope scope, ScrollContext target)=>target.storageContext,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@vsync': (m.Scope scope, ScrollContext target)=>target.vsync,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@axisDirection': (m.Scope scope, ScrollContext target)=>target.axisDirection,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@setIgnorePointer': (m.Scope scope, ScrollContext target)=>target.setIgnorePointer,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@setCanDrag': (m.Scope scope, ScrollContext target)=>target.setCanDrag,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@setSemanticsActions': (m.Scope scope, ScrollContext target)=>target.setSemanticsActions,
'package:flutter/src/widgets/scroll_context.dart@ScrollContext@saveOffset': (m.Scope scope, ScrollContext target)=>target.saveOffset,

};
}