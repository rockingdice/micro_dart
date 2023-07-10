import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/drag.dart@Drag@#as': (m.Scope scope, target)=>()=>target as Drag,
'package:flutter/src/gestures/drag.dart@Drag@#is': (m.Scope scope, target)=>()=>target is Drag,
'package:flutter/src/gestures/drag.dart@Drag@update': (m.Scope scope, Drag target)=>target.update,
'package:flutter/src/gestures/drag.dart@Drag@end': (m.Scope scope, Drag target)=>target.end,
'package:flutter/src/gestures/drag.dart@Drag@cancel': (m.Scope scope, Drag target)=>target.cancel,

};
}