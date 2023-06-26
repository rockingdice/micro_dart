import 'package:flutter/src/services/debug.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/hardware_keyboard.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/debug.dart@@debugKeyEventSimulatorTransitModeOverride': (m.Scope scope)=>debugKeyEventSimulatorTransitModeOverride,
'package:flutter/src/services/debug.dart@@debugKeyEventSimulatorTransitModeOverride:set': (m.Scope scope)=>(other)=>debugKeyEventSimulatorTransitModeOverride=other,
'package:flutter/src/services/debug.dart@@debugProfilePlatformChannels': (m.Scope scope)=>debugProfilePlatformChannels,
'package:flutter/src/services/debug.dart@@debugProfilePlatformChannels:set': (m.Scope scope)=>(other)=>debugProfilePlatformChannels=other,
'package:flutter/src/services/debug.dart@@debugAssertAllServicesVarsUnset': (m.Scope scope)=>debugAssertAllServicesVarsUnset,

};
}