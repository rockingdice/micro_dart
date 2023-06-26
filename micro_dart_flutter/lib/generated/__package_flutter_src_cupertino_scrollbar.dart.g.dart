import 'package:flutter/src/cupertino/scrollbar.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@#as': (m.Scope scope, target)=>()=>target as CupertinoScrollbar,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@#is': (m.Scope scope, target)=>()=>target is CupertinoScrollbar,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@defaultThickness': (m.Scope scope)=>CupertinoScrollbar.defaultThickness,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@defaultThicknessWhileDragging': (m.Scope scope)=>CupertinoScrollbar.defaultThicknessWhileDragging,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@defaultRadius': (m.Scope scope)=>CupertinoScrollbar.defaultRadius,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@defaultRadiusWhileDragging': (m.Scope scope)=>CupertinoScrollbar.defaultRadiusWhileDragging,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@thicknessWhileDragging': (m.Scope scope, CupertinoScrollbar target)=>target.thicknessWhileDragging,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@radiusWhileDragging': (m.Scope scope, CupertinoScrollbar target)=>target.radiusWhileDragging,
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@': (m.Scope scope)=>({ child,  controller,  isAlwaysShown,  key,  notificationPredicate,  radius,  radiusWhileDragging,  scrollbarOrientation,  thickness,  thicknessWhileDragging,  thumbVisibility}){
bool notificationPredicateProxy( notification) {
return  engine.callFunctionPointer(scope, notificationPredicate!,[notification], {});
}

return CupertinoScrollbar(child:child, controller:controller, isAlwaysShown:isAlwaysShown, key:key, notificationPredicate:notificationPredicate == null ? null :notificationPredicateProxy, radius:radius ?? CupertinoScrollbar.defaultRadius, radiusWhileDragging:radiusWhileDragging ?? CupertinoScrollbar.defaultRadiusWhileDragging, scrollbarOrientation:scrollbarOrientation, thickness:thickness ?? CupertinoScrollbar.defaultThickness, thicknessWhileDragging:thicknessWhileDragging ?? CupertinoScrollbar.defaultThicknessWhileDragging, thumbVisibility:thumbVisibility);
},
'package:flutter/src/cupertino/scrollbar.dart@CupertinoScrollbar@createState': (m.Scope scope, CupertinoScrollbar target)=>target.createState,

};
}