import 'package:provider/src/reassemble_handler.dart';
import 'package:flutter/foundation.dart' show BindingBase;
import 'package:flutter/widgets.dart' show Element;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:provider/src/reassemble_handler.dart@ReassembleHandler@#as': (m.Scope scope, target)=>()=>target as ReassembleHandler,
'package:provider/src/reassemble_handler.dart@ReassembleHandler@#is': (m.Scope scope, target)=>()=>target is ReassembleHandler,
'package:provider/src/reassemble_handler.dart@ReassembleHandler@reassemble': (m.Scope scope, ReassembleHandler target)=>target.reassemble,

};
}