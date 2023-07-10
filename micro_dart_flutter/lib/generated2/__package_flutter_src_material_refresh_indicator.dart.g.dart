import 'package:flutter/src/material/refresh_indicator.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@#as': (m.Scope scope, target)=>()=>target as RefreshIndicator,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@#is': (m.Scope scope, target)=>()=>target is RefreshIndicator,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@child': (m.Scope scope, RefreshIndicator target)=>target.child,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@displacement': (m.Scope scope, RefreshIndicator target)=>target.displacement,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@edgeOffset': (m.Scope scope, RefreshIndicator target)=>target.edgeOffset,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@onRefresh': (m.Scope scope, RefreshIndicator target)=>target.onRefresh,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@color': (m.Scope scope, RefreshIndicator target)=>target.color,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@backgroundColor': (m.Scope scope, RefreshIndicator target)=>target.backgroundColor,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@notificationPredicate': (m.Scope scope, RefreshIndicator target)=>target.notificationPredicate,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@semanticsLabel': (m.Scope scope, RefreshIndicator target)=>target.semanticsLabel,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@semanticsValue': (m.Scope scope, RefreshIndicator target)=>target.semanticsValue,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@strokeWidth': (m.Scope scope, RefreshIndicator target)=>target.strokeWidth,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@triggerMode': (m.Scope scope, RefreshIndicator target)=>target.triggerMode,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@': (m.Scope scope)=>({ backgroundColor,  child,  color,  displacement,  edgeOffset,  key,  notificationPredicate,  onRefresh,  semanticsLabel,  semanticsValue,  strokeWidth,  triggerMode}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

Future onRefreshProxy() async{
return await engine.callFunctionPointerAsync(scope, onRefresh!,[], {});
}

return RefreshIndicator(backgroundColor:backgroundColor, child:child, color:color, displacement:displacement ?? 40.0, edgeOffset:edgeOffset ?? 0.0, key:key, notificationPredicate:notificationPredicate == null ? defaultScrollNotificationPredicate :notificationPredicateProxy, onRefresh:onRefreshProxy, semanticsLabel:semanticsLabel, semanticsValue:semanticsValue, strokeWidth:strokeWidth ?? RefreshProgressIndicator.defaultStrokeWidth, triggerMode:triggerMode ?? RefreshIndicatorTriggerMode.onEdge);
},
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@adaptive': (m.Scope scope)=>({ backgroundColor,  child,  color,  displacement,  edgeOffset,  key,  notificationPredicate,  onRefresh,  semanticsLabel,  semanticsValue,  strokeWidth,  triggerMode}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

Future onRefreshProxy() async{
return await engine.callFunctionPointerAsync(scope, onRefresh!,[], {});
}

return RefreshIndicator.adaptive(backgroundColor:backgroundColor, child:child, color:color, displacement:displacement ?? 40.0, edgeOffset:edgeOffset ?? 0.0, key:key, notificationPredicate:notificationPredicate == null ? defaultScrollNotificationPredicate :notificationPredicateProxy, onRefresh:onRefreshProxy, semanticsLabel:semanticsLabel, semanticsValue:semanticsValue, strokeWidth:strokeWidth ?? RefreshProgressIndicator.defaultStrokeWidth, triggerMode:triggerMode ?? RefreshIndicatorTriggerMode.onEdge);
},
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicator@createState': (m.Scope scope, RefreshIndicator target)=>target.createState,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@#as': (m.Scope scope, target)=>()=>target as RefreshIndicatorState,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@#is': (m.Scope scope, target)=>()=>target is RefreshIndicatorState,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@': (m.Scope scope)=>(){
return RefreshIndicatorState();
},
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@initState': (m.Scope scope, RefreshIndicatorState target)=>target.initState,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@didChangeDependencies': (m.Scope scope, RefreshIndicatorState target)=>target.didChangeDependencies,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@didUpdateWidget': (m.Scope scope, RefreshIndicatorState target)=>target.didUpdateWidget,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@dispose': (m.Scope scope, RefreshIndicatorState target)=>target.dispose,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@show': (m.Scope scope, RefreshIndicatorState target)=>target.show,
'package:flutter/src/material/refresh_indicator.dart@RefreshIndicatorState@build': (m.Scope scope, RefreshIndicatorState target)=>target.build,

};
}