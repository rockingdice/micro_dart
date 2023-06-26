import 'package:flutter/src/gestures/lsq_solver.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@#as': (m.Scope scope, target)=>()=>target as PolynomialFit,
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@#is': (m.Scope scope, target)=>()=>target is PolynomialFit,
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@coefficients': (m.Scope scope, PolynomialFit target)=>target.coefficients,
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@confidence': (m.Scope scope, PolynomialFit target)=>target.confidence,
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@confidence:set': (m.Scope scope, PolynomialFit target)=>(other)=>target.confidence=other,
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@': (m.Scope scope)=>PolynomialFit,
'package:flutter/src/gestures/lsq_solver.dart@PolynomialFit@toString': (m.Scope scope, PolynomialFit target)=>target.toString,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@#as': (m.Scope scope, target)=>()=>target as LeastSquaresSolver,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@#is': (m.Scope scope, target)=>()=>target is LeastSquaresSolver,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@x': (m.Scope scope, LeastSquaresSolver target)=>target.x,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@y': (m.Scope scope, LeastSquaresSolver target)=>target.y,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@w': (m.Scope scope, LeastSquaresSolver target)=>target.w,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@': (m.Scope scope)=>LeastSquaresSolver,
'package:flutter/src/gestures/lsq_solver.dart@LeastSquaresSolver@solve': (m.Scope scope, LeastSquaresSolver target)=>target.solve,

};
}