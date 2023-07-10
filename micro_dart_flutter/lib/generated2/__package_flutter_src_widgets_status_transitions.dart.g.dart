import 'package:flutter/src/widgets/status_transitions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/status_transitions.dart@StatusTransitionWidget@#as': (m.Scope scope, target)=>()=>target as StatusTransitionWidget,
'package:flutter/src/widgets/status_transitions.dart@StatusTransitionWidget@#is': (m.Scope scope, target)=>()=>target is StatusTransitionWidget,
'package:flutter/src/widgets/status_transitions.dart@StatusTransitionWidget@animation': (m.Scope scope, StatusTransitionWidget target)=>target.animation,
'package:flutter/src/widgets/status_transitions.dart@StatusTransitionWidget@build': (m.Scope scope, StatusTransitionWidget target)=>target.build,
'package:flutter/src/widgets/status_transitions.dart@StatusTransitionWidget@createState': (m.Scope scope, StatusTransitionWidget target)=>target.createState,

};
}