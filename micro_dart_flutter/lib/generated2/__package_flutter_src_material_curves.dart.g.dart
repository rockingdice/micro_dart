import 'package:flutter/src/material/curves.dart';
import 'package:flutter/animation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/curves.dart@@standardEasing': (m.Scope scope)=>standardEasing,
'package:flutter/src/material/curves.dart@@accelerateEasing': (m.Scope scope)=>accelerateEasing,
'package:flutter/src/material/curves.dart@@decelerateEasing': (m.Scope scope)=>decelerateEasing,

};
}