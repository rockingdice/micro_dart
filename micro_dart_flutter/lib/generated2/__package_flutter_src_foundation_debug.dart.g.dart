import 'package:flutter/src/foundation/debug.dart';
import 'dart:ui' show Brightness;
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/platform.dart';
import 'package:flutter/src/foundation/print.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/debug.dart@@debugInstrumentationEnabled': (m.Scope scope)=>debugInstrumentationEnabled,
'package:flutter/src/foundation/debug.dart@@debugInstrumentationEnabled:set': (m.Scope scope)=>(other)=>debugInstrumentationEnabled=other,
'package:flutter/src/foundation/debug.dart@@debugDoublePrecision': (m.Scope scope)=>debugDoublePrecision,
'package:flutter/src/foundation/debug.dart@@debugDoublePrecision:set': (m.Scope scope)=>(other)=>debugDoublePrecision=other,
'package:flutter/src/foundation/debug.dart@@debugBrightnessOverride': (m.Scope scope)=>debugBrightnessOverride,
'package:flutter/src/foundation/debug.dart@@debugBrightnessOverride:set': (m.Scope scope)=>(other)=>debugBrightnessOverride=other,
'package:flutter/src/foundation/debug.dart@@activeDevToolsServerAddress': (m.Scope scope)=>activeDevToolsServerAddress,
'package:flutter/src/foundation/debug.dart@@activeDevToolsServerAddress:set': (m.Scope scope)=>(other)=>activeDevToolsServerAddress=other,
'package:flutter/src/foundation/debug.dart@@connectedVmServiceUri': (m.Scope scope)=>connectedVmServiceUri,
'package:flutter/src/foundation/debug.dart@@connectedVmServiceUri:set': (m.Scope scope)=>(other)=>connectedVmServiceUri=other,
'package:flutter/src/foundation/debug.dart@@debugAssertAllFoundationVarsUnset': (m.Scope scope)=>( reason, { debugPrintOverride}){
void debugPrintOverrideProxy( message, { wrapWidth}) {
 engine.callFunctionPointer(scope, debugPrintOverride!,[message], {'wrapWidth':wrapWidth});
}

return debugAssertAllFoundationVarsUnset(reason, debugPrintOverride:debugPrintOverride == null ? debugPrintThrottled :debugPrintOverrideProxy);
},
'package:flutter/src/foundation/debug.dart@@debugInstrumentAction': (m.Scope scope)=>( description,  action){
Future<T> actionProxy<T>() async{
return await engine.callFunctionPointerAsync(scope, action!,[], {});
}

return debugInstrumentAction(description, actionProxy);
},
'package:flutter/src/foundation/debug.dart@@debugFormatDouble': (m.Scope scope)=>debugFormatDouble,

};
}