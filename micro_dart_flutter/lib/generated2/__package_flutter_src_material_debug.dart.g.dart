import 'package:flutter/src/material/debug.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/scaffold.dart' show Scaffold,ScaffoldMessenger;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/debug.dart@@debugCheckHasMaterial': (m.Scope scope)=>debugCheckHasMaterial,
'package:flutter/src/material/debug.dart@@debugCheckHasMaterialLocalizations': (m.Scope scope)=>debugCheckHasMaterialLocalizations,
'package:flutter/src/material/debug.dart@@debugCheckHasScaffold': (m.Scope scope)=>debugCheckHasScaffold,
'package:flutter/src/material/debug.dart@@debugCheckHasScaffoldMessenger': (m.Scope scope)=>debugCheckHasScaffoldMessenger,

};
}