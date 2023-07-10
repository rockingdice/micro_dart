import 'package:flutter/src/rendering/shifted_box.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/debug_overflow_indicator.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/stack.dart' show RelativeRect;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@#as': (m.Scope scope, target)=>()=>target as RenderShiftedBox,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@#is': (m.Scope scope, target)=>()=>target is RenderShiftedBox,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@computeMinIntrinsicWidth': (m.Scope scope, RenderShiftedBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderShiftedBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@computeMinIntrinsicHeight': (m.Scope scope, RenderShiftedBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderShiftedBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@computeDistanceToActualBaseline': (m.Scope scope, RenderShiftedBox target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@paint': (m.Scope scope, RenderShiftedBox target)=>target.paint,
'package:flutter/src/rendering/shifted_box.dart@RenderShiftedBox@hitTestChildren': (m.Scope scope, RenderShiftedBox target)=>target.hitTestChildren,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@#as': (m.Scope scope, target)=>()=>target as RenderPadding,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@#is': (m.Scope scope, target)=>()=>target is RenderPadding,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@padding': (m.Scope scope, RenderPadding target)=>target.padding,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@padding:set': (m.Scope scope, RenderPadding target)=>(other)=>target.padding=other,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@textDirection': (m.Scope scope, RenderPadding target)=>target.textDirection,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@textDirection:set': (m.Scope scope, RenderPadding target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@': (m.Scope scope)=>({ child,  padding,  textDirection}){
return RenderPadding(child:child, padding:padding, textDirection:textDirection);
},
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@computeMinIntrinsicWidth': (m.Scope scope, RenderPadding target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@computeMaxIntrinsicWidth': (m.Scope scope, RenderPadding target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@computeMinIntrinsicHeight': (m.Scope scope, RenderPadding target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@computeMaxIntrinsicHeight': (m.Scope scope, RenderPadding target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@computeDryLayout': (m.Scope scope, RenderPadding target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@performLayout': (m.Scope scope, RenderPadding target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@debugPaintSize': (m.Scope scope, RenderPadding target)=>target.debugPaintSize,
'package:flutter/src/rendering/shifted_box.dart@RenderPadding@debugFillProperties': (m.Scope scope, RenderPadding target)=>target.debugFillProperties,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@#as': (m.Scope scope, target)=>()=>target as RenderAligningShiftedBox,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@#is': (m.Scope scope, target)=>()=>target is RenderAligningShiftedBox,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@alignment': (m.Scope scope, RenderAligningShiftedBox target)=>target.alignment,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@alignment:set': (m.Scope scope, RenderAligningShiftedBox target)=>(other)=>target.alignment=other,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@textDirection': (m.Scope scope, RenderAligningShiftedBox target)=>target.textDirection,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@textDirection:set': (m.Scope scope, RenderAligningShiftedBox target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@alignChild': (m.Scope scope, RenderAligningShiftedBox target)=>target.alignChild,
'package:flutter/src/rendering/shifted_box.dart@RenderAligningShiftedBox@debugFillProperties': (m.Scope scope, RenderAligningShiftedBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@#as': (m.Scope scope, target)=>()=>target as RenderPositionedBox,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@#is': (m.Scope scope, target)=>()=>target is RenderPositionedBox,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@widthFactor': (m.Scope scope, RenderPositionedBox target)=>target.widthFactor,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@widthFactor:set': (m.Scope scope, RenderPositionedBox target)=>(other)=>target.widthFactor=other,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@heightFactor': (m.Scope scope, RenderPositionedBox target)=>target.heightFactor,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@heightFactor:set': (m.Scope scope, RenderPositionedBox target)=>(other)=>target.heightFactor=other,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@': (m.Scope scope)=>({ alignment,  child,  heightFactor,  textDirection,  widthFactor}){
return RenderPositionedBox(alignment:alignment ?? Alignment.center, child:child, heightFactor:heightFactor, textDirection:textDirection, widthFactor:widthFactor);
},
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@computeDryLayout': (m.Scope scope, RenderPositionedBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@performLayout': (m.Scope scope, RenderPositionedBox target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@debugPaintSize': (m.Scope scope, RenderPositionedBox target)=>target.debugPaintSize,
'package:flutter/src/rendering/shifted_box.dart@RenderPositionedBox@debugFillProperties': (m.Scope scope, RenderPositionedBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@#as': (m.Scope scope, target)=>()=>target as RenderConstrainedOverflowBox,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@#is': (m.Scope scope, target)=>()=>target is RenderConstrainedOverflowBox,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@minWidth': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.minWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@minWidth:set': (m.Scope scope, RenderConstrainedOverflowBox target)=>(other)=>target.minWidth=other,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@maxWidth': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.maxWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@maxWidth:set': (m.Scope scope, RenderConstrainedOverflowBox target)=>(other)=>target.maxWidth=other,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@minHeight': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.minHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@minHeight:set': (m.Scope scope, RenderConstrainedOverflowBox target)=>(other)=>target.minHeight=other,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@maxHeight': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.maxHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@maxHeight:set': (m.Scope scope, RenderConstrainedOverflowBox target)=>(other)=>target.maxHeight=other,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@sizedByParent': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.sizedByParent,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@': (m.Scope scope)=>({ alignment,  child,  maxHeight,  maxWidth,  minHeight,  minWidth,  textDirection}){
return RenderConstrainedOverflowBox(alignment:alignment ?? Alignment.center, child:child, maxHeight:maxHeight, maxWidth:maxWidth, minHeight:minHeight, minWidth:minWidth, textDirection:textDirection);
},
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@computeDryLayout': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@performLayout': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderConstrainedOverflowBox@debugFillProperties': (m.Scope scope, RenderConstrainedOverflowBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@#as': (m.Scope scope, target)=>()=>target as RenderConstraintsTransformBox,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@#is': (m.Scope scope, target)=>()=>target is RenderConstraintsTransformBox,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@constraintsTransform': (m.Scope scope, RenderConstraintsTransformBox target)=>target.constraintsTransform,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@constraintsTransform:set': (m.Scope scope, RenderConstraintsTransformBox target)=>(other)=>target.constraintsTransform=other,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@clipBehavior': (m.Scope scope, RenderConstraintsTransformBox target)=>target.clipBehavior,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@clipBehavior:set': (m.Scope scope, RenderConstraintsTransformBox target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@': (m.Scope scope)=>({ alignment,  child,  clipBehavior,  constraintsTransform,  textDirection}){
BoxConstraints constraintsTransformProxy( $p0) {
return  engine.callFunctionPointer(scope, constraintsTransform!,[$p0], {});
}

return RenderConstraintsTransformBox(alignment:alignment ?? Alignment.center, child:child, clipBehavior:clipBehavior ?? Clip.none, constraintsTransform:constraintsTransformProxy, textDirection:textDirection);
},
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@computeMinIntrinsicHeight': (m.Scope scope, RenderConstraintsTransformBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderConstraintsTransformBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@computeMinIntrinsicWidth': (m.Scope scope, RenderConstraintsTransformBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderConstraintsTransformBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@computeDryLayout': (m.Scope scope, RenderConstraintsTransformBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@performLayout': (m.Scope scope, RenderConstraintsTransformBox target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@paint': (m.Scope scope, RenderConstraintsTransformBox target)=>target.paint,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@dispose': (m.Scope scope, RenderConstraintsTransformBox target)=>target.dispose,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@describeApproximatePaintClip': (m.Scope scope, RenderConstraintsTransformBox target)=>target.describeApproximatePaintClip,
'package:flutter/src/rendering/shifted_box.dart@RenderConstraintsTransformBox@toStringShort': (m.Scope scope, RenderConstraintsTransformBox target)=>target.toStringShort,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@#as': (m.Scope scope, target)=>()=>target as RenderSizedOverflowBox,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@#is': (m.Scope scope, target)=>()=>target is RenderSizedOverflowBox,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@requestedSize': (m.Scope scope, RenderSizedOverflowBox target)=>target.requestedSize,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@requestedSize:set': (m.Scope scope, RenderSizedOverflowBox target)=>(other)=>target.requestedSize=other,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@': (m.Scope scope)=>({ alignment,  child,  requestedSize,  textDirection}){
return RenderSizedOverflowBox(alignment:alignment ?? Alignment.center, child:child, requestedSize:requestedSize, textDirection:textDirection);
},
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@computeMinIntrinsicWidth': (m.Scope scope, RenderSizedOverflowBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderSizedOverflowBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@computeMinIntrinsicHeight': (m.Scope scope, RenderSizedOverflowBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderSizedOverflowBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@computeDistanceToActualBaseline': (m.Scope scope, RenderSizedOverflowBox target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@computeDryLayout': (m.Scope scope, RenderSizedOverflowBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderSizedOverflowBox@performLayout': (m.Scope scope, RenderSizedOverflowBox target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@#as': (m.Scope scope, target)=>()=>target as RenderFractionallySizedOverflowBox,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@#is': (m.Scope scope, target)=>()=>target is RenderFractionallySizedOverflowBox,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@widthFactor': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.widthFactor,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@widthFactor:set': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>(other)=>target.widthFactor=other,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@heightFactor': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.heightFactor,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@heightFactor:set': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>(other)=>target.heightFactor=other,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@': (m.Scope scope)=>({ alignment,  child,  heightFactor,  textDirection,  widthFactor}){
return RenderFractionallySizedOverflowBox(alignment:alignment ?? Alignment.center, child:child, heightFactor:heightFactor, textDirection:textDirection, widthFactor:widthFactor);
},
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@computeMinIntrinsicWidth': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@computeMinIntrinsicHeight': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@computeDryLayout': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@performLayout': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderFractionallySizedOverflowBox@debugFillProperties': (m.Scope scope, RenderFractionallySizedOverflowBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/shifted_box.dart@SingleChildLayoutDelegate@#as': (m.Scope scope, target)=>()=>target as SingleChildLayoutDelegate,
'package:flutter/src/rendering/shifted_box.dart@SingleChildLayoutDelegate@#is': (m.Scope scope, target)=>()=>target is SingleChildLayoutDelegate,
'package:flutter/src/rendering/shifted_box.dart@SingleChildLayoutDelegate@getSize': (m.Scope scope, SingleChildLayoutDelegate target)=>target.getSize,
'package:flutter/src/rendering/shifted_box.dart@SingleChildLayoutDelegate@getConstraintsForChild': (m.Scope scope, SingleChildLayoutDelegate target)=>target.getConstraintsForChild,
'package:flutter/src/rendering/shifted_box.dart@SingleChildLayoutDelegate@getPositionForChild': (m.Scope scope, SingleChildLayoutDelegate target)=>target.getPositionForChild,
'package:flutter/src/rendering/shifted_box.dart@SingleChildLayoutDelegate@shouldRelayout': (m.Scope scope, SingleChildLayoutDelegate target)=>target.shouldRelayout,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@#as': (m.Scope scope, target)=>()=>target as RenderCustomSingleChildLayoutBox,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@#is': (m.Scope scope, target)=>()=>target is RenderCustomSingleChildLayoutBox,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@delegate': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.delegate,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@delegate:set': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>(other)=>target.delegate=other,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@': (m.Scope scope)=>({ child,  delegate}){
return RenderCustomSingleChildLayoutBox(child:child, delegate:delegate);
},
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@attach': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.attach,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@detach': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.detach,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@computeMinIntrinsicWidth': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@computeMinIntrinsicHeight': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@computeDryLayout': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderCustomSingleChildLayoutBox@performLayout': (m.Scope scope, RenderCustomSingleChildLayoutBox target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@#as': (m.Scope scope, target)=>()=>target as RenderBaseline,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@#is': (m.Scope scope, target)=>()=>target is RenderBaseline,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@baseline': (m.Scope scope, RenderBaseline target)=>target.baseline,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@baseline:set': (m.Scope scope, RenderBaseline target)=>(other)=>target.baseline=other,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@baselineType': (m.Scope scope, RenderBaseline target)=>target.baselineType,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@baselineType:set': (m.Scope scope, RenderBaseline target)=>(other)=>target.baselineType=other,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@': (m.Scope scope)=>({ baseline,  baselineType,  child}){
return RenderBaseline(baseline:baseline, baselineType:baselineType, child:child);
},
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@computeDryLayout': (m.Scope scope, RenderBaseline target)=>target.computeDryLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@performLayout': (m.Scope scope, RenderBaseline target)=>target.performLayout,
'package:flutter/src/rendering/shifted_box.dart@RenderBaseline@debugFillProperties': (m.Scope scope, RenderBaseline target)=>target.debugFillProperties,

};
}