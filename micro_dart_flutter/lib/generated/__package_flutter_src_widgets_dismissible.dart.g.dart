import 'package:flutter/src/widgets/dismissible.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/dismissible.dart@Dismissible@#as': (m.Scope scope, target)=>()=>target as Dismissible,
'package:flutter/src/widgets/dismissible.dart@Dismissible@#is': (m.Scope scope, target)=>()=>target is Dismissible,
'package:flutter/src/widgets/dismissible.dart@Dismissible@child': (m.Scope scope, Dismissible target)=>target.child,
'package:flutter/src/widgets/dismissible.dart@Dismissible@background': (m.Scope scope, Dismissible target)=>target.background,
'package:flutter/src/widgets/dismissible.dart@Dismissible@secondaryBackground': (m.Scope scope, Dismissible target)=>target.secondaryBackground,
'package:flutter/src/widgets/dismissible.dart@Dismissible@confirmDismiss': (m.Scope scope, Dismissible target)=>target.confirmDismiss,
'package:flutter/src/widgets/dismissible.dart@Dismissible@onResize': (m.Scope scope, Dismissible target)=>target.onResize,
'package:flutter/src/widgets/dismissible.dart@Dismissible@onDismissed': (m.Scope scope, Dismissible target)=>target.onDismissed,
'package:flutter/src/widgets/dismissible.dart@Dismissible@direction': (m.Scope scope, Dismissible target)=>target.direction,
'package:flutter/src/widgets/dismissible.dart@Dismissible@resizeDuration': (m.Scope scope, Dismissible target)=>target.resizeDuration,
'package:flutter/src/widgets/dismissible.dart@Dismissible@dismissThresholds': (m.Scope scope, Dismissible target)=>target.dismissThresholds,
'package:flutter/src/widgets/dismissible.dart@Dismissible@movementDuration': (m.Scope scope, Dismissible target)=>target.movementDuration,
'package:flutter/src/widgets/dismissible.dart@Dismissible@crossAxisEndOffset': (m.Scope scope, Dismissible target)=>target.crossAxisEndOffset,
'package:flutter/src/widgets/dismissible.dart@Dismissible@dragStartBehavior': (m.Scope scope, Dismissible target)=>target.dragStartBehavior,
'package:flutter/src/widgets/dismissible.dart@Dismissible@behavior': (m.Scope scope, Dismissible target)=>target.behavior,
'package:flutter/src/widgets/dismissible.dart@Dismissible@onUpdate': (m.Scope scope, Dismissible target)=>target.onUpdate,
'package:flutter/src/widgets/dismissible.dart@Dismissible@': (m.Scope scope)=>({ background,  behavior,  child,  confirmDismiss,  crossAxisEndOffset,  direction,  dismissThresholds,  dragStartBehavior,  key,  movementDuration,  onDismissed,  onResize,  onUpdate,  resizeDuration,  secondaryBackground}){
Future<bool> confirmDismissProxy( direction) async{
return await engine.callFunctionPointerAsync(scope, confirmDismiss!,[direction], {});
}

void onDismissedProxy( direction) {
 engine.callFunctionPointer(scope, onDismissed!,[direction], {});
}

void onResizeProxy() {
 engine.callFunctionPointer(scope, onResize!,[], {});
}

void onUpdateProxy( details) {
 engine.callFunctionPointer(scope, onUpdate!,[details], {});
}

return Dismissible(background:background, behavior:behavior ?? HitTestBehavior.opaque, child:child, confirmDismiss:confirmDismiss == null ? null :confirmDismissProxy, crossAxisEndOffset:crossAxisEndOffset ?? 0.0, direction:direction ?? DismissDirection.horizontal, dismissThresholds:dismissThresholds ?? const <DismissDirection, double>{}, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, key:key, movementDuration:movementDuration ?? const Duration(milliseconds: 200), onDismissed:onDismissed == null ? null :onDismissedProxy, onResize:onResize == null ? null :onResizeProxy, onUpdate:onUpdate == null ? null :onUpdateProxy, resizeDuration:resizeDuration ?? const Duration(milliseconds: 300), secondaryBackground:secondaryBackground);
},
'package:flutter/src/widgets/dismissible.dart@Dismissible@createState': (m.Scope scope, Dismissible target)=>target.createState,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@#as': (m.Scope scope, target)=>()=>target as DismissUpdateDetails,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@#is': (m.Scope scope, target)=>()=>target is DismissUpdateDetails,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@direction': (m.Scope scope, DismissUpdateDetails target)=>target.direction,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@reached': (m.Scope scope, DismissUpdateDetails target)=>target.reached,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@previousReached': (m.Scope scope, DismissUpdateDetails target)=>target.previousReached,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@progress': (m.Scope scope, DismissUpdateDetails target)=>target.progress,
'package:flutter/src/widgets/dismissible.dart@DismissUpdateDetails@': (m.Scope scope)=>({ direction,  previousReached,  progress,  reached}){
return DismissUpdateDetails(direction:direction ?? DismissDirection.horizontal, previousReached:previousReached ?? false, progress:progress ?? 0.0, reached:reached ?? false);
},

};
}