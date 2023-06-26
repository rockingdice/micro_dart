import 'package:flutter/src/painting/binding.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show ServicesBinding;
import 'package:flutter/src/painting/image_cache.dart';
import 'package:flutter/src/painting/shader_warm_up.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/binding.dart@@imageCache': (m.Scope scope)=>imageCache,

};
}