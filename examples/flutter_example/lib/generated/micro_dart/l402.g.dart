import 'package:flutter/src/cupertino/debug.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/debug.dart@@debugCheckHasCupertinoLocalizations': (m.Scope scope)=>debugCheckHasCupertinoLocalizations,

};
}