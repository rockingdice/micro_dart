import 'package:flutter/src/foundation/math.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/math.dart@@clampDouble': (m.Scope scope)=>clampDouble,

};
}