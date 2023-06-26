import 'package:flutter/src/services/font_loader.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/font_loader.dart@FontLoader@#as': (m.Scope scope, target)=>()=>target as FontLoader,
'package:flutter/src/services/font_loader.dart@FontLoader@#is': (m.Scope scope, target)=>()=>target is FontLoader,
'package:flutter/src/services/font_loader.dart@FontLoader@family': (m.Scope scope, FontLoader target)=>target.family,
'package:flutter/src/services/font_loader.dart@FontLoader@': (m.Scope scope)=>FontLoader,
'package:flutter/src/services/font_loader.dart@FontLoader@addFont': (m.Scope scope, FontLoader target)=>target.addFont,
'package:flutter/src/services/font_loader.dart@FontLoader@load': (m.Scope scope, FontLoader target)=>target.load,
'package:flutter/src/services/font_loader.dart@FontLoader@loadFont': (m.Scope scope, FontLoader target)=>target.loadFont,

};
}