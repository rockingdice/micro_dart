import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/inherited_theme.dart@InheritedTheme@#as': (m.Scope scope, target)=>()=>target as InheritedTheme,
'package:flutter/src/widgets/inherited_theme.dart@InheritedTheme@#is': (m.Scope scope, target)=>()=>target is InheritedTheme,
'package:flutter/src/widgets/inherited_theme.dart@InheritedTheme@wrap': (m.Scope scope, InheritedTheme target)=>target.wrap,
'package:flutter/src/widgets/inherited_theme.dart@InheritedTheme@captureAll': (m.Scope scope)=>InheritedTheme.captureAll,
'package:flutter/src/widgets/inherited_theme.dart@InheritedTheme@capture': (m.Scope scope)=>InheritedTheme.capture,
'package:flutter/src/widgets/inherited_theme.dart@CapturedThemes@#as': (m.Scope scope, target)=>()=>target as CapturedThemes,
'package:flutter/src/widgets/inherited_theme.dart@CapturedThemes@#is': (m.Scope scope, target)=>()=>target is CapturedThemes,
'package:flutter/src/widgets/inherited_theme.dart@CapturedThemes@wrap': (m.Scope scope, CapturedThemes target)=>target.wrap,

};
}