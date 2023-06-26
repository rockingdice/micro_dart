import 'package:flutter/src/physics/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/physics/utils.dart@@nearEqual': (m.Scope scope)=>nearEqual,
'package:flutter/src/physics/utils.dart@@nearZero': (m.Scope scope)=>nearZero,

};
}