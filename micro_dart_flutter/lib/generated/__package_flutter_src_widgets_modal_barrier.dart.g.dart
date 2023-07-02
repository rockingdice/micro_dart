import 'package:flutter/src/widgets/modal_barrier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@#as': (m.Scope scope, target)=>()=>target as ModalBarrier,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@#is': (m.Scope scope, target)=>()=>target is ModalBarrier,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@color': (m.Scope scope, ModalBarrier target)=>target.color,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@dismissible': (m.Scope scope, ModalBarrier target)=>target.dismissible,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@onDismiss': (m.Scope scope, ModalBarrier target)=>target.onDismiss,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@barrierSemanticsDismissible': (m.Scope scope, ModalBarrier target)=>target.barrierSemanticsDismissible,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@semanticsLabel': (m.Scope scope, ModalBarrier target)=>target.semanticsLabel,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@clipDetailsNotifier': (m.Scope scope, ModalBarrier target)=>target.clipDetailsNotifier,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@semanticsOnTapHint': (m.Scope scope, ModalBarrier target)=>target.semanticsOnTapHint,
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@': (m.Scope scope)=>({ barrierSemanticsDismissible,  clipDetailsNotifier,  color,  dismissible,  key,  onDismiss,  semanticsLabel,  semanticsOnTapHint}){
void onDismissProxy() {
 engine.callFunctionPointer(scope, onDismiss!,[], {});
}

return ModalBarrier(barrierSemanticsDismissible:barrierSemanticsDismissible ?? true, clipDetailsNotifier:clipDetailsNotifier, color:color, dismissible:dismissible ?? true, key:key, onDismiss:onDismiss == null ? null :onDismissProxy, semanticsLabel:semanticsLabel, semanticsOnTapHint:semanticsOnTapHint);
},
'package:flutter/src/widgets/modal_barrier.dart@ModalBarrier@build': (m.Scope scope, ModalBarrier target)=>target.build,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@#as': (m.Scope scope, target)=>()=>target as AnimatedModalBarrier,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@#is': (m.Scope scope, target)=>()=>target is AnimatedModalBarrier,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@dismissible': (m.Scope scope, AnimatedModalBarrier target)=>target.dismissible,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@semanticsLabel': (m.Scope scope, AnimatedModalBarrier target)=>target.semanticsLabel,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@barrierSemanticsDismissible': (m.Scope scope, AnimatedModalBarrier target)=>target.barrierSemanticsDismissible,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@onDismiss': (m.Scope scope, AnimatedModalBarrier target)=>target.onDismiss,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@clipDetailsNotifier': (m.Scope scope, AnimatedModalBarrier target)=>target.clipDetailsNotifier,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@semanticsOnTapHint': (m.Scope scope, AnimatedModalBarrier target)=>target.semanticsOnTapHint,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@color': (m.Scope scope, AnimatedModalBarrier target)=>target.color,
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@': (m.Scope scope)=>({ barrierSemanticsDismissible,  clipDetailsNotifier,  color,  dismissible,  key,  onDismiss,  semanticsLabel,  semanticsOnTapHint}){
void onDismissProxy() {
 engine.callFunctionPointer(scope, onDismiss!,[], {});
}

return AnimatedModalBarrier(barrierSemanticsDismissible:barrierSemanticsDismissible, clipDetailsNotifier:clipDetailsNotifier, color:color, dismissible:dismissible ?? true, key:key, onDismiss:onDismiss == null ? null :onDismissProxy, semanticsLabel:semanticsLabel, semanticsOnTapHint:semanticsOnTapHint);
},
'package:flutter/src/widgets/modal_barrier.dart@AnimatedModalBarrier@build': (m.Scope scope, AnimatedModalBarrier target)=>target.build,

};
}