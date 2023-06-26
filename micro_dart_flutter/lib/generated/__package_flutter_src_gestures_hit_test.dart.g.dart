import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/hit_test.dart@HitTestable@#as': (m.Scope scope, target)=>()=>target as HitTestable,
'package:flutter/src/gestures/hit_test.dart@HitTestable@#is': (m.Scope scope, target)=>()=>target is HitTestable,
'package:flutter/src/gestures/hit_test.dart@HitTestable@hitTest': (m.Scope scope, HitTestable target)=>target.hitTest,
'package:flutter/src/gestures/hit_test.dart@HitTestDispatcher@#as': (m.Scope scope, target)=>()=>target as HitTestDispatcher,
'package:flutter/src/gestures/hit_test.dart@HitTestDispatcher@#is': (m.Scope scope, target)=>()=>target is HitTestDispatcher,
'package:flutter/src/gestures/hit_test.dart@HitTestDispatcher@dispatchEvent': (m.Scope scope, HitTestDispatcher target)=>target.dispatchEvent,
'package:flutter/src/gestures/hit_test.dart@HitTestTarget@#as': (m.Scope scope, target)=>()=>target as HitTestTarget,
'package:flutter/src/gestures/hit_test.dart@HitTestTarget@#is': (m.Scope scope, target)=>()=>target is HitTestTarget,
'package:flutter/src/gestures/hit_test.dart@HitTestTarget@handleEvent': (m.Scope scope, HitTestTarget target)=>target.handleEvent,
'package:flutter/src/gestures/hit_test.dart@HitTestEntry@#as': (m.Scope scope, target)=>()=>target as HitTestEntry,
'package:flutter/src/gestures/hit_test.dart@HitTestEntry@#is': (m.Scope scope, target)=>()=>target is HitTestEntry,
'package:flutter/src/gestures/hit_test.dart@HitTestEntry@target': (m.Scope scope, HitTestEntry target)=>target.target,
'package:flutter/src/gestures/hit_test.dart@HitTestEntry@transform': (m.Scope scope, HitTestEntry target)=>target.transform,
'package:flutter/src/gestures/hit_test.dart@HitTestEntry@': (m.Scope scope)=>HitTestEntry,
'package:flutter/src/gestures/hit_test.dart@HitTestEntry@toString': (m.Scope scope, HitTestEntry target)=>target.toString,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@#as': (m.Scope scope, target)=>()=>target as HitTestResult,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@#is': (m.Scope scope, target)=>()=>target is HitTestResult,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@path': (m.Scope scope, HitTestResult target)=>target.path,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@': (m.Scope scope)=>(){
return HitTestResult();
},
'package:flutter/src/gestures/hit_test.dart@HitTestResult@wrap': (m.Scope scope)=>HitTestResult.wrap,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@add': (m.Scope scope, HitTestResult target)=>target.add,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@pushTransform': (m.Scope scope, HitTestResult target)=>target.pushTransform,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@pushOffset': (m.Scope scope, HitTestResult target)=>target.pushOffset,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@popTransform': (m.Scope scope, HitTestResult target)=>target.popTransform,
'package:flutter/src/gestures/hit_test.dart@HitTestResult@toString': (m.Scope scope, HitTestResult target)=>target.toString,

};
}