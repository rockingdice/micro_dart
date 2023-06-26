import 'package:flutter/src/material/tooltip_visibility.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@#as': (m.Scope scope, target)=>()=>target as TooltipVisibility,
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@#is': (m.Scope scope, target)=>()=>target is TooltipVisibility,
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@child': (m.Scope scope, TooltipVisibility target)=>target.child,
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@visible': (m.Scope scope, TooltipVisibility target)=>target.visible,
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@': (m.Scope scope)=>TooltipVisibility,
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@of': (m.Scope scope)=>TooltipVisibility.of,
'package:flutter/src/material/tooltip_visibility.dart@TooltipVisibility@build': (m.Scope scope, TooltipVisibility target)=>target.build,

};
}