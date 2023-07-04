import 'package:dual_screen/src/two_pane.dart';
import 'dart:math';
import 'dart:ui' show DisplayFeature;
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:dual_screen/src/two_pane.dart@TwoPane@#as': (m.Scope scope, target)=>()=>target as TwoPane,
'package:dual_screen/src/two_pane.dart@TwoPane@#is': (m.Scope scope, target)=>()=>target is TwoPane,
'package:dual_screen/src/two_pane.dart@TwoPane@startPane': (m.Scope scope, TwoPane target)=>target.startPane,
'package:dual_screen/src/two_pane.dart@TwoPane@endPane': (m.Scope scope, TwoPane target)=>target.endPane,
'package:dual_screen/src/two_pane.dart@TwoPane@paneProportion': (m.Scope scope, TwoPane target)=>target.paneProportion,
'package:dual_screen/src/two_pane.dart@TwoPane@textDirection': (m.Scope scope, TwoPane target)=>target.textDirection,
'package:dual_screen/src/two_pane.dart@TwoPane@verticalDirection': (m.Scope scope, TwoPane target)=>target.verticalDirection,
'package:dual_screen/src/two_pane.dart@TwoPane@direction': (m.Scope scope, TwoPane target)=>target.direction,
'package:dual_screen/src/two_pane.dart@TwoPane@panePriority': (m.Scope scope, TwoPane target)=>target.panePriority,
'package:dual_screen/src/two_pane.dart@TwoPane@padding': (m.Scope scope, TwoPane target)=>target.padding,
'package:dual_screen/src/two_pane.dart@TwoPane@allowedOverrides': (m.Scope scope, TwoPane target)=>target.allowedOverrides,
'package:dual_screen/src/two_pane.dart@TwoPane@': (m.Scope scope)=>({ allowedOverrides,  direction,  endPane,  key,  padding,  panePriority,  paneProportion,  startPane,  textDirection,  verticalDirection}){
return TwoPane(allowedOverrides:allowedOverrides ?? const {TwoPaneAllowedOverrides.paneProportion, TwoPaneAllowedOverrides.direction, TwoPaneAllowedOverrides.panePriority}, direction:direction ?? Axis.horizontal, endPane:endPane, key:key, padding:padding ?? EdgeInsets.zero, panePriority:panePriority ?? TwoPanePriority.both, paneProportion:paneProportion ?? 0.5, startPane:startPane, textDirection:textDirection, verticalDirection:verticalDirection ?? VerticalDirection.down);
},
'package:dual_screen/src/two_pane.dart@TwoPane@build': (m.Scope scope, TwoPane target)=>target.build,

};
}