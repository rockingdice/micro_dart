import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/feedback.dart@Feedback@#as': (m.Scope scope, target)=>()=>target as Feedback,
'package:flutter/src/material/feedback.dart@Feedback@#is': (m.Scope scope, target)=>()=>target is Feedback,
'package:flutter/src/material/feedback.dart@Feedback@forTap': (m.Scope scope)=>Feedback.forTap,
'package:flutter/src/material/feedback.dart@Feedback@wrapForTap': (m.Scope scope)=>( callback,  context){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

return Feedback.wrapForTap(callbackProxy, context);
},
'package:flutter/src/material/feedback.dart@Feedback@forLongPress': (m.Scope scope)=>Feedback.forLongPress,
'package:flutter/src/material/feedback.dart@Feedback@wrapForLongPress': (m.Scope scope)=>( callback,  context){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

return Feedback.wrapForLongPress(callbackProxy, context);
},

};
}