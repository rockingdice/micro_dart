import 'package:flutter/src/painting/matrix_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@#as': (m.Scope scope, target)=>()=>target as MatrixUtils,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@#is': (m.Scope scope, target)=>()=>target is MatrixUtils,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@getAsTranslation': (m.Scope scope)=>MatrixUtils.getAsTranslation,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@getAsScale': (m.Scope scope)=>MatrixUtils.getAsScale,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@matrixEquals': (m.Scope scope)=>MatrixUtils.matrixEquals,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@isIdentity': (m.Scope scope)=>MatrixUtils.isIdentity,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@transformPoint': (m.Scope scope)=>MatrixUtils.transformPoint,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@transformRect': (m.Scope scope)=>MatrixUtils.transformRect,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@inverseTransformRect': (m.Scope scope)=>MatrixUtils.inverseTransformRect,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@createCylindricalProjectionTransform': (m.Scope scope)=>MatrixUtils.createCylindricalProjectionTransform,
'package:flutter/src/painting/matrix_utils.dart@MatrixUtils@forceToPoint': (m.Scope scope)=>MatrixUtils.forceToPoint,
'package:flutter/src/painting/matrix_utils.dart@TransformProperty@#as': (m.Scope scope, target)=>()=>target as TransformProperty,
'package:flutter/src/painting/matrix_utils.dart@TransformProperty@#is': (m.Scope scope, target)=>()=>target is TransformProperty,
'package:flutter/src/painting/matrix_utils.dart@TransformProperty@': (m.Scope scope)=>TransformProperty,
'package:flutter/src/painting/matrix_utils.dart@TransformProperty@valueToString': (m.Scope scope, TransformProperty target)=>target.valueToString,
'package:flutter/src/painting/matrix_utils.dart@@debugDescribeTransform': (m.Scope scope)=>debugDescribeTransform,

};
}