import 'package:flutter/src/rendering/tweens.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/painting.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/tweens.dart@FractionalOffsetTween@#as': (m.Scope scope, target)=>()=>target as FractionalOffsetTween,
'package:flutter/src/rendering/tweens.dart@FractionalOffsetTween@#is': (m.Scope scope, target)=>()=>target is FractionalOffsetTween,
'package:flutter/src/rendering/tweens.dart@FractionalOffsetTween@': (m.Scope scope)=>({ begin,  end}){
return FractionalOffsetTween(begin:begin, end:end);
},
'package:flutter/src/rendering/tweens.dart@FractionalOffsetTween@lerp': (m.Scope scope, FractionalOffsetTween target)=>target.lerp,
'package:flutter/src/rendering/tweens.dart@AlignmentTween@#as': (m.Scope scope, target)=>()=>target as AlignmentTween,
'package:flutter/src/rendering/tweens.dart@AlignmentTween@#is': (m.Scope scope, target)=>()=>target is AlignmentTween,
'package:flutter/src/rendering/tweens.dart@AlignmentTween@': (m.Scope scope)=>({ begin,  end}){
return AlignmentTween(begin:begin, end:end);
},
'package:flutter/src/rendering/tweens.dart@AlignmentTween@lerp': (m.Scope scope, AlignmentTween target)=>target.lerp,
'package:flutter/src/rendering/tweens.dart@AlignmentGeometryTween@#as': (m.Scope scope, target)=>()=>target as AlignmentGeometryTween,
'package:flutter/src/rendering/tweens.dart@AlignmentGeometryTween@#is': (m.Scope scope, target)=>()=>target is AlignmentGeometryTween,
'package:flutter/src/rendering/tweens.dart@AlignmentGeometryTween@': (m.Scope scope)=>({ begin,  end}){
return AlignmentGeometryTween(begin:begin, end:end);
},
'package:flutter/src/rendering/tweens.dart@AlignmentGeometryTween@lerp': (m.Scope scope, AlignmentGeometryTween target)=>target.lerp,

};
}