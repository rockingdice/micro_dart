import 'package:flutter/src/services/keyboard_maps.g.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/keyboard_maps.g.dart@@kAndroidToLogicalKey': (m.Scope scope)=>kAndroidToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kAndroidToPhysicalKey': (m.Scope scope)=>kAndroidToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kAndroidNumPadMap': (m.Scope scope)=>kAndroidNumPadMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kFuchsiaToLogicalKey': (m.Scope scope)=>kFuchsiaToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kFuchsiaToPhysicalKey': (m.Scope scope)=>kFuchsiaToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kMacOsToPhysicalKey': (m.Scope scope)=>kMacOsToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kMacOsNumPadMap': (m.Scope scope)=>kMacOsNumPadMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kMacOsFunctionKeyMap': (m.Scope scope)=>kMacOsFunctionKeyMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kMacOsToLogicalKey': (m.Scope scope)=>kMacOsToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kIosToPhysicalKey': (m.Scope scope)=>kIosToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kIosSpecialLogicalMap': (m.Scope scope)=>kIosSpecialLogicalMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kIosNumPadMap': (m.Scope scope)=>kIosNumPadMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kIosToLogicalKey': (m.Scope scope)=>kIosToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kGlfwToLogicalKey': (m.Scope scope)=>kGlfwToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kGlfwNumpadMap': (m.Scope scope)=>kGlfwNumpadMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kGtkToLogicalKey': (m.Scope scope)=>kGtkToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kGtkNumpadMap': (m.Scope scope)=>kGtkNumpadMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kLinuxToPhysicalKey': (m.Scope scope)=>kLinuxToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kWebToLogicalKey': (m.Scope scope)=>kWebToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kWebToPhysicalKey': (m.Scope scope)=>kWebToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kWebNumPadMap': (m.Scope scope)=>kWebNumPadMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kWebLocationMap': (m.Scope scope)=>kWebLocationMap,
'package:flutter/src/services/keyboard_maps.g.dart@@kWindowsToLogicalKey': (m.Scope scope)=>kWindowsToLogicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kWindowsToPhysicalKey': (m.Scope scope)=>kWindowsToPhysicalKey,
'package:flutter/src/services/keyboard_maps.g.dart@@kWindowsNumPadMap': (m.Scope scope)=>kWindowsNumPadMap,

};
}