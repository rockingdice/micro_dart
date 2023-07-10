import 'package:flutter/src/foundation/_platform_io.dart';
import 'dart:io';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/_platform_io.dart@@defaultTargetPlatform': (m.Scope scope)=>defaultTargetPlatform,

};
}