import 'package:flutter/src/widgets/unique_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/unique_widget.dart@UniqueWidget@#as': (m.Scope scope, target)=>()=>target as UniqueWidget,
'package:flutter/src/widgets/unique_widget.dart@UniqueWidget@#is': (m.Scope scope, target)=>()=>target is UniqueWidget,
'package:flutter/src/widgets/unique_widget.dart@UniqueWidget@currentState': (m.Scope scope, UniqueWidget target)=>target.currentState,
'package:flutter/src/widgets/unique_widget.dart@UniqueWidget@createState': (m.Scope scope, UniqueWidget target)=>target.createState,

};
}