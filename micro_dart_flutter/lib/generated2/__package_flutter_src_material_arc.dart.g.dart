import 'package:flutter/src/material/arc.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/arc.dart@MaterialPointArcTween@#as': (m.Scope scope, target)=>()=>target as MaterialPointArcTween,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@#is': (m.Scope scope, target)=>()=>target is MaterialPointArcTween,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@center': (m.Scope scope, MaterialPointArcTween target)=>target.center,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@radius': (m.Scope scope, MaterialPointArcTween target)=>target.radius,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@beginAngle': (m.Scope scope, MaterialPointArcTween target)=>target.beginAngle,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@endAngle': (m.Scope scope, MaterialPointArcTween target)=>target.endAngle,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@begin:set': (m.Scope scope, MaterialPointArcTween target)=>(other)=>target.begin=other,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@end:set': (m.Scope scope, MaterialPointArcTween target)=>(other)=>target.end=other,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@': (m.Scope scope)=>({ begin,  end}){
return MaterialPointArcTween(begin:begin, end:end);
},
'package:flutter/src/material/arc.dart@MaterialPointArcTween@lerp': (m.Scope scope, MaterialPointArcTween target)=>target.lerp,
'package:flutter/src/material/arc.dart@MaterialPointArcTween@toString': (m.Scope scope, MaterialPointArcTween target)=>target.toString,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@#as': (m.Scope scope, target)=>()=>target as MaterialRectArcTween,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@#is': (m.Scope scope, target)=>()=>target is MaterialRectArcTween,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@beginArc': (m.Scope scope, MaterialRectArcTween target)=>target.beginArc,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@endArc': (m.Scope scope, MaterialRectArcTween target)=>target.endArc,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@begin:set': (m.Scope scope, MaterialRectArcTween target)=>(other)=>target.begin=other,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@end:set': (m.Scope scope, MaterialRectArcTween target)=>(other)=>target.end=other,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@': (m.Scope scope)=>({ begin,  end}){
return MaterialRectArcTween(begin:begin, end:end);
},
'package:flutter/src/material/arc.dart@MaterialRectArcTween@lerp': (m.Scope scope, MaterialRectArcTween target)=>target.lerp,
'package:flutter/src/material/arc.dart@MaterialRectArcTween@toString': (m.Scope scope, MaterialRectArcTween target)=>target.toString,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@#as': (m.Scope scope, target)=>()=>target as MaterialRectCenterArcTween,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@#is': (m.Scope scope, target)=>()=>target is MaterialRectCenterArcTween,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@centerArc': (m.Scope scope, MaterialRectCenterArcTween target)=>target.centerArc,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@begin:set': (m.Scope scope, MaterialRectCenterArcTween target)=>(other)=>target.begin=other,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@end:set': (m.Scope scope, MaterialRectCenterArcTween target)=>(other)=>target.end=other,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@': (m.Scope scope)=>({ begin,  end}){
return MaterialRectCenterArcTween(begin:begin, end:end);
},
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@lerp': (m.Scope scope, MaterialRectCenterArcTween target)=>target.lerp,
'package:flutter/src/material/arc.dart@MaterialRectCenterArcTween@toString': (m.Scope scope, MaterialRectCenterArcTween target)=>target.toString,

};
}