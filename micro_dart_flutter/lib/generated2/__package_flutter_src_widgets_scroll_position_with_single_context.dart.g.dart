import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@#as': (m.Scope scope, target)=>()=>target as ScrollPositionWithSingleContext,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@#is': (m.Scope scope, target)=>()=>target is ScrollPositionWithSingleContext,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@axisDirection': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.axisDirection,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@userScrollDirection': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.userScrollDirection,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@': (m.Scope scope)=>({ context,  debugLabel,  initialPixels,  keepScrollOffset,  oldPosition,  physics}){
return ScrollPositionWithSingleContext(context:context, debugLabel:debugLabel, initialPixels:initialPixels ?? 0.0, keepScrollOffset:keepScrollOffset ?? true, oldPosition:oldPosition, physics:physics);
},
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@setPixels': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.setPixels,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@absorb': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.absorb,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@applyNewDimensions': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.applyNewDimensions,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@beginActivity': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.beginActivity,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@applyUserOffset': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.applyUserOffset,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@goIdle': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.goIdle,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@goBallistic': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.goBallistic,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@updateUserScrollDirection': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.updateUserScrollDirection,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@animateTo': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.animateTo,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@jumpTo': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.jumpTo,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@pointerScroll': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.pointerScroll,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@hold': (m.Scope scope, ScrollPositionWithSingleContext target)=>( holdCancelCallback){
void holdCancelCallbackProxy() {
 engine.callFunctionPointer(scope, holdCancelCallback!,[], {});
}

return target.hold(holdCancelCallbackProxy);
},
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@drag': (m.Scope scope, ScrollPositionWithSingleContext target)=>( details,  dragCancelCallback){
void dragCancelCallbackProxy() {
 engine.callFunctionPointer(scope, dragCancelCallback!,[], {});
}

return target.drag(details, dragCancelCallbackProxy);
},
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@dispose': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.dispose,
'package:flutter/src/widgets/scroll_position_with_single_context.dart@ScrollPositionWithSingleContext@debugFillDescription': (m.Scope scope, ScrollPositionWithSingleContext target)=>target.debugFillDescription,

};
}