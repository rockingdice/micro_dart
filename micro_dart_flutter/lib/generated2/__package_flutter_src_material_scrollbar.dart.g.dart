import 'package:flutter/src/material/scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scrollbar_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/scrollbar.dart@Scrollbar@#as': (m.Scope scope, target)=>()=>target as Scrollbar,
'package:flutter/src/material/scrollbar.dart@Scrollbar@#is': (m.Scope scope, target)=>()=>target is Scrollbar,
'package:flutter/src/material/scrollbar.dart@Scrollbar@child': (m.Scope scope, Scrollbar target)=>target.child,
'package:flutter/src/material/scrollbar.dart@Scrollbar@controller': (m.Scope scope, Scrollbar target)=>target.controller,
'package:flutter/src/material/scrollbar.dart@Scrollbar@thumbVisibility': (m.Scope scope, Scrollbar target)=>target.thumbVisibility,
'package:flutter/src/material/scrollbar.dart@Scrollbar@isAlwaysShown': (m.Scope scope, Scrollbar target)=>target.isAlwaysShown,
'package:flutter/src/material/scrollbar.dart@Scrollbar@trackVisibility': (m.Scope scope, Scrollbar target)=>target.trackVisibility,
'package:flutter/src/material/scrollbar.dart@Scrollbar@showTrackOnHover': (m.Scope scope, Scrollbar target)=>target.showTrackOnHover,
'package:flutter/src/material/scrollbar.dart@Scrollbar@hoverThickness': (m.Scope scope, Scrollbar target)=>target.hoverThickness,
'package:flutter/src/material/scrollbar.dart@Scrollbar@thickness': (m.Scope scope, Scrollbar target)=>target.thickness,
'package:flutter/src/material/scrollbar.dart@Scrollbar@radius': (m.Scope scope, Scrollbar target)=>target.radius,
'package:flutter/src/material/scrollbar.dart@Scrollbar@interactive': (m.Scope scope, Scrollbar target)=>target.interactive,
'package:flutter/src/material/scrollbar.dart@Scrollbar@notificationPredicate': (m.Scope scope, Scrollbar target)=>target.notificationPredicate,
'package:flutter/src/material/scrollbar.dart@Scrollbar@scrollbarOrientation': (m.Scope scope, Scrollbar target)=>target.scrollbarOrientation,
'package:flutter/src/material/scrollbar.dart@Scrollbar@': (m.Scope scope)=>({ child,  controller,  hoverThickness,  interactive,  isAlwaysShown,  key,  notificationPredicate,  radius,  scrollbarOrientation,  showTrackOnHover,  thickness,  thumbVisibility,  trackVisibility}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

return Scrollbar(child:child, controller:controller, hoverThickness:hoverThickness, interactive:interactive, isAlwaysShown:isAlwaysShown, key:key, notificationPredicate:notificationPredicate == null ? null :notificationPredicateProxy, radius:radius, scrollbarOrientation:scrollbarOrientation, showTrackOnHover:showTrackOnHover, thickness:thickness, thumbVisibility:thumbVisibility, trackVisibility:trackVisibility);
},
'package:flutter/src/material/scrollbar.dart@Scrollbar@build': (m.Scope scope, Scrollbar target)=>target.build,

};
}