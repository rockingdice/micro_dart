import 'package:flutter/src/foundation/print.dart';
import 'dart:async';
import 'dart:collection';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/print.dart@@debugPrint': (m.Scope scope)=>debugPrint,
'package:flutter/src/foundation/print.dart@@debugPrint:set': (m.Scope scope)=>(other)=>debugPrint=other,
'package:flutter/src/foundation/print.dart@@debugPrintDone': (m.Scope scope)=>debugPrintDone,
'package:flutter/src/foundation/print.dart@@debugPrintSynchronously': (m.Scope scope)=>debugPrintSynchronously,
'package:flutter/src/foundation/print.dart@@debugPrintThrottled': (m.Scope scope)=>debugPrintThrottled,
'package:flutter/src/foundation/print.dart@@debugWordWrap': (m.Scope scope)=>debugWordWrap,

};
}