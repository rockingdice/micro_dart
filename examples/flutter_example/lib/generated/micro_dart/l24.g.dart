import 'package:flutter_example/main.dart';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example/main.dart@@main': (m.Scope scope)=>main,

};
}