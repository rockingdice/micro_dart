import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/drag_details.dart@DragDownDetails@#as': (m.Scope scope, target)=>()=>target as DragDownDetails,
'package:flutter/src/gestures/drag_details.dart@DragDownDetails@#is': (m.Scope scope, target)=>()=>target is DragDownDetails,
'package:flutter/src/gestures/drag_details.dart@DragDownDetails@globalPosition': (m.Scope scope, DragDownDetails target)=>target.globalPosition,
'package:flutter/src/gestures/drag_details.dart@DragDownDetails@localPosition': (m.Scope scope, DragDownDetails target)=>target.localPosition,
'package:flutter/src/gestures/drag_details.dart@DragDownDetails@': (m.Scope scope)=>({ globalPosition,  localPosition}){
return DragDownDetails(globalPosition:globalPosition ?? Offset.zero, localPosition:localPosition);
},
'package:flutter/src/gestures/drag_details.dart@DragDownDetails@toString': (m.Scope scope, DragDownDetails target)=>target.toString,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@#as': (m.Scope scope, target)=>()=>target as DragStartDetails,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@#is': (m.Scope scope, target)=>()=>target is DragStartDetails,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@sourceTimeStamp': (m.Scope scope, DragStartDetails target)=>target.sourceTimeStamp,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@globalPosition': (m.Scope scope, DragStartDetails target)=>target.globalPosition,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@localPosition': (m.Scope scope, DragStartDetails target)=>target.localPosition,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@kind': (m.Scope scope, DragStartDetails target)=>target.kind,
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@': (m.Scope scope)=>({ globalPosition,  kind,  localPosition,  sourceTimeStamp}){
return DragStartDetails(globalPosition:globalPosition ?? Offset.zero, kind:kind, localPosition:localPosition, sourceTimeStamp:sourceTimeStamp);
},
'package:flutter/src/gestures/drag_details.dart@DragStartDetails@toString': (m.Scope scope, DragStartDetails target)=>target.toString,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@#as': (m.Scope scope, target)=>()=>target as DragUpdateDetails,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@#is': (m.Scope scope, target)=>()=>target is DragUpdateDetails,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@sourceTimeStamp': (m.Scope scope, DragUpdateDetails target)=>target.sourceTimeStamp,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@delta': (m.Scope scope, DragUpdateDetails target)=>target.delta,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@primaryDelta': (m.Scope scope, DragUpdateDetails target)=>target.primaryDelta,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@globalPosition': (m.Scope scope, DragUpdateDetails target)=>target.globalPosition,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@localPosition': (m.Scope scope, DragUpdateDetails target)=>target.localPosition,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@': (m.Scope scope)=>DragUpdateDetails,
'package:flutter/src/gestures/drag_details.dart@DragUpdateDetails@toString': (m.Scope scope, DragUpdateDetails target)=>target.toString,
'package:flutter/src/gestures/drag_details.dart@DragEndDetails@#as': (m.Scope scope, target)=>()=>target as DragEndDetails,
'package:flutter/src/gestures/drag_details.dart@DragEndDetails@#is': (m.Scope scope, target)=>()=>target is DragEndDetails,
'package:flutter/src/gestures/drag_details.dart@DragEndDetails@velocity': (m.Scope scope, DragEndDetails target)=>target.velocity,
'package:flutter/src/gestures/drag_details.dart@DragEndDetails@primaryVelocity': (m.Scope scope, DragEndDetails target)=>target.primaryVelocity,
'package:flutter/src/gestures/drag_details.dart@DragEndDetails@': (m.Scope scope)=>({ primaryVelocity,  velocity}){
return DragEndDetails(primaryVelocity:primaryVelocity, velocity:velocity ?? Velocity.zero);
},
'package:flutter/src/gestures/drag_details.dart@DragEndDetails@toString': (m.Scope scope, DragEndDetails target)=>target.toString,

};
}