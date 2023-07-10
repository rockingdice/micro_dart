import 'package:flutter/src/services/system_navigator.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/system_navigator.dart@SystemNavigator@#as': (m.Scope scope, target)=>()=>target as SystemNavigator,
'package:flutter/src/services/system_navigator.dart@SystemNavigator@#is': (m.Scope scope, target)=>()=>target is SystemNavigator,
'package:flutter/src/services/system_navigator.dart@SystemNavigator@pop': (m.Scope scope)=>SystemNavigator.pop,
'package:flutter/src/services/system_navigator.dart@SystemNavigator@selectSingleEntryHistory': (m.Scope scope)=>SystemNavigator.selectSingleEntryHistory,
'package:flutter/src/services/system_navigator.dart@SystemNavigator@selectMultiEntryHistory': (m.Scope scope)=>SystemNavigator.selectMultiEntryHistory,
'package:flutter/src/services/system_navigator.dart@SystemNavigator@routeInformationUpdated': (m.Scope scope)=>SystemNavigator.routeInformationUpdated,

};
}