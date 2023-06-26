import 'package:flutter/src/foundation/capabilities.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/capabilities.dart@@isCanvasKit': (m.Scope scope)=>isCanvasKit,

};
}