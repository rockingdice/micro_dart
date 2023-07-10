import 'package:flutter/src/foundation/constants.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/constants.dart@@kReleaseMode': (m.Scope scope)=>kReleaseMode,
'package:flutter/src/foundation/constants.dart@@kProfileMode': (m.Scope scope)=>kProfileMode,
'package:flutter/src/foundation/constants.dart@@kDebugMode': (m.Scope scope)=>kDebugMode,
'package:flutter/src/foundation/constants.dart@@precisionErrorTolerance': (m.Scope scope)=>precisionErrorTolerance,
'package:flutter/src/foundation/constants.dart@@kIsWeb': (m.Scope scope)=>kIsWeb,

};
}