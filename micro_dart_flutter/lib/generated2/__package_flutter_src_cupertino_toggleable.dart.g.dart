import 'package:flutter/src/cupertino/toggleable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@#as': (m.Scope scope, target)=>()=>target as ToggleablePainter,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@#is': (m.Scope scope, target)=>()=>target is ToggleablePainter,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@activeColor': (m.Scope scope, ToggleablePainter target)=>target.activeColor,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@activeColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.activeColor=other,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@inactiveColor': (m.Scope scope, ToggleablePainter target)=>target.inactiveColor,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@inactiveColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.inactiveColor=other,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@focusColor': (m.Scope scope, ToggleablePainter target)=>target.focusColor,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@focusColor:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.focusColor=other,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@downPosition': (m.Scope scope, ToggleablePainter target)=>target.downPosition,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@downPosition:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.downPosition=other,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@isFocused': (m.Scope scope, ToggleablePainter target)=>target.isFocused,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@isFocused:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.isFocused=other,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@isActive': (m.Scope scope, ToggleablePainter target)=>target.isActive,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@isActive:set': (m.Scope scope, ToggleablePainter target)=>(other)=>target.isActive=other,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@semanticsBuilder': (m.Scope scope, ToggleablePainter target)=>target.semanticsBuilder,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@shouldRepaint': (m.Scope scope, ToggleablePainter target)=>target.shouldRepaint,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@hitTest': (m.Scope scope, ToggleablePainter target)=>target.hitTest,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@shouldRebuildSemantics': (m.Scope scope, ToggleablePainter target)=>target.shouldRebuildSemantics,
'package:flutter/src/cupertino/toggleable.dart@ToggleablePainter@toString': (m.Scope scope, ToggleablePainter target)=>target.toString,

};
}