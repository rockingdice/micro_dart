import 'package:flutter/src/painting/shader_warm_up.dart';
import 'dart:developer';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/debug.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/shader_warm_up.dart@ShaderWarmUp@#as': (m.Scope scope, target)=>()=>target as ShaderWarmUp,
'package:flutter/src/painting/shader_warm_up.dart@ShaderWarmUp@#is': (m.Scope scope, target)=>()=>target is ShaderWarmUp,
'package:flutter/src/painting/shader_warm_up.dart@ShaderWarmUp@size': (m.Scope scope, ShaderWarmUp target)=>target.size,
'package:flutter/src/painting/shader_warm_up.dart@ShaderWarmUp@warmUpOnCanvas': (m.Scope scope, ShaderWarmUp target)=>target.warmUpOnCanvas,
'package:flutter/src/painting/shader_warm_up.dart@ShaderWarmUp@execute': (m.Scope scope, ShaderWarmUp target)=>target.execute,

};
}