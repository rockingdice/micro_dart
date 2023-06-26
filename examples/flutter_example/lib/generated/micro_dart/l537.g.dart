import 'package:flutter/src/gestures/debug.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/debug.dart@@debugPrintHitTestResults': (m.Scope scope)=>debugPrintHitTestResults,
'package:flutter/src/gestures/debug.dart@@debugPrintHitTestResults:set': (m.Scope scope)=>(other)=>debugPrintHitTestResults=other,
'package:flutter/src/gestures/debug.dart@@debugPrintMouseHoverEvents': (m.Scope scope)=>debugPrintMouseHoverEvents,
'package:flutter/src/gestures/debug.dart@@debugPrintMouseHoverEvents:set': (m.Scope scope)=>(other)=>debugPrintMouseHoverEvents=other,
'package:flutter/src/gestures/debug.dart@@debugPrintGestureArenaDiagnostics': (m.Scope scope)=>debugPrintGestureArenaDiagnostics,
'package:flutter/src/gestures/debug.dart@@debugPrintGestureArenaDiagnostics:set': (m.Scope scope)=>(other)=>debugPrintGestureArenaDiagnostics=other,
'package:flutter/src/gestures/debug.dart@@debugPrintRecognizerCallbacksTrace': (m.Scope scope)=>debugPrintRecognizerCallbacksTrace,
'package:flutter/src/gestures/debug.dart@@debugPrintRecognizerCallbacksTrace:set': (m.Scope scope)=>(other)=>debugPrintRecognizerCallbacksTrace=other,
'package:flutter/src/gestures/debug.dart@@debugPrintResamplingMargin': (m.Scope scope)=>debugPrintResamplingMargin,
'package:flutter/src/gestures/debug.dart@@debugPrintResamplingMargin:set': (m.Scope scope)=>(other)=>debugPrintResamplingMargin=other,
'package:flutter/src/gestures/debug.dart@@debugAssertAllGesturesVarsUnset': (m.Scope scope)=>debugAssertAllGesturesVarsUnset,

};
}