import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@#as': (m.Scope scope, target)=>()=>target as TickerMode,
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@#is': (m.Scope scope, target)=>()=>target is TickerMode,
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@enabled': (m.Scope scope, TickerMode target)=>target.enabled,
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@child': (m.Scope scope, TickerMode target)=>target.child,
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@': (m.Scope scope)=>({ child,  enabled,  key}){
return TickerMode(child:child, enabled:enabled, key:key);
},
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@of': (m.Scope scope)=>TickerMode.of,
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@getNotifier': (m.Scope scope)=>TickerMode.getNotifier,
'package:flutter/src/widgets/ticker_provider.dart@TickerMode@createState': (m.Scope scope, TickerMode target)=>target.createState,

};
}