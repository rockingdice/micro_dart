import 'package:flutter/src/widgets/magnifier.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@#as': (m.Scope scope, target)=>()=>target as MagnifierInfo,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@#is': (m.Scope scope, target)=>()=>target is MagnifierInfo,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@empty': (m.Scope scope)=>MagnifierInfo.empty,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@globalGesturePosition': (m.Scope scope, MagnifierInfo target)=>target.globalGesturePosition,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@currentLineBoundaries': (m.Scope scope, MagnifierInfo target)=>target.currentLineBoundaries,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@caretRect': (m.Scope scope, MagnifierInfo target)=>target.caretRect,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@fieldBounds': (m.Scope scope, MagnifierInfo target)=>target.fieldBounds,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@hashCode': (m.Scope scope, MagnifierInfo target)=>target.hashCode,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@': (m.Scope scope)=>MagnifierInfo,
'package:flutter/src/widgets/magnifier.dart@MagnifierInfo@==': (m.Scope scope, MagnifierInfo target)=>(other)=> target == other,
'package:flutter/src/widgets/magnifier.dart@TextMagnifierConfiguration@#as': (m.Scope scope, target)=>()=>target as TextMagnifierConfiguration,
'package:flutter/src/widgets/magnifier.dart@TextMagnifierConfiguration@#is': (m.Scope scope, target)=>()=>target is TextMagnifierConfiguration,
'package:flutter/src/widgets/magnifier.dart@TextMagnifierConfiguration@shouldDisplayHandlesInMagnifier': (m.Scope scope, TextMagnifierConfiguration target)=>target.shouldDisplayHandlesInMagnifier,
'package:flutter/src/widgets/magnifier.dart@TextMagnifierConfiguration@disabled': (m.Scope scope)=>TextMagnifierConfiguration.disabled,
'package:flutter/src/widgets/magnifier.dart@TextMagnifierConfiguration@magnifierBuilder': (m.Scope scope, TextMagnifierConfiguration target)=>target.magnifierBuilder,
'package:flutter/src/widgets/magnifier.dart@TextMagnifierConfiguration@': (m.Scope scope)=>({ magnifierBuilder,  shouldDisplayHandlesInMagnifier}){
Widget magnifierBuilderProxy( context,  controller,  magnifierInfo) {
return  engine.callFunctionPointer(scope, magnifierBuilder!,[context, controller, magnifierInfo], {});
}

return TextMagnifierConfiguration(magnifierBuilder:magnifierBuilder == null ? null :magnifierBuilderProxy, shouldDisplayHandlesInMagnifier:shouldDisplayHandlesInMagnifier ?? true);
},
'package:flutter/src/widgets/magnifier.dart@MagnifierController@#as': (m.Scope scope, target)=>()=>target as MagnifierController,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@#is': (m.Scope scope, target)=>()=>target is MagnifierController,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@animationController': (m.Scope scope, MagnifierController target)=>target.animationController,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@animationController:set': (m.Scope scope, MagnifierController target)=>(other)=>target.animationController=other,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@overlayEntry': (m.Scope scope, MagnifierController target)=>target.overlayEntry,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@shown': (m.Scope scope, MagnifierController target)=>target.shown,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@': (m.Scope scope)=>({ animationController}){
return MagnifierController(animationController:animationController);
},
'package:flutter/src/widgets/magnifier.dart@MagnifierController@show': (m.Scope scope, MagnifierController target)=>({ below,  builder,  context,  debugRequiredFor}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return target.show(below:below, builder:builderProxy, context:context, debugRequiredFor:debugRequiredFor);
},
'package:flutter/src/widgets/magnifier.dart@MagnifierController@hide': (m.Scope scope, MagnifierController target)=>target.hide,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@removeFromOverlay': (m.Scope scope, MagnifierController target)=>target.removeFromOverlay,
'package:flutter/src/widgets/magnifier.dart@MagnifierController@shiftWithinBounds': (m.Scope scope)=>MagnifierController.shiftWithinBounds,
'package:flutter/src/widgets/magnifier.dart@MagnifierDecoration@#as': (m.Scope scope, target)=>()=>target as MagnifierDecoration,
'package:flutter/src/widgets/magnifier.dart@MagnifierDecoration@#is': (m.Scope scope, target)=>()=>target is MagnifierDecoration,
'package:flutter/src/widgets/magnifier.dart@MagnifierDecoration@opacity': (m.Scope scope, MagnifierDecoration target)=>target.opacity,
'package:flutter/src/widgets/magnifier.dart@MagnifierDecoration@hashCode': (m.Scope scope, MagnifierDecoration target)=>target.hashCode,
'package:flutter/src/widgets/magnifier.dart@MagnifierDecoration@': (m.Scope scope)=>({ opacity,  shadows,  shape}){
return MagnifierDecoration(opacity:opacity ?? 1, shadows:shadows, shape:shape ?? const RoundedRectangleBorder());
},
'package:flutter/src/widgets/magnifier.dart@MagnifierDecoration@==': (m.Scope scope, MagnifierDecoration target)=>(other)=> target == other,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@#as': (m.Scope scope, target)=>()=>target as RawMagnifier,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@#is': (m.Scope scope, target)=>()=>target is RawMagnifier,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@child': (m.Scope scope, RawMagnifier target)=>target.child,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@decoration': (m.Scope scope, RawMagnifier target)=>target.decoration,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@focalPointOffset': (m.Scope scope, RawMagnifier target)=>target.focalPointOffset,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@magnificationScale': (m.Scope scope, RawMagnifier target)=>target.magnificationScale,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@size': (m.Scope scope, RawMagnifier target)=>target.size,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@': (m.Scope scope)=>RawMagnifier,
'package:flutter/src/widgets/magnifier.dart@RawMagnifier@build': (m.Scope scope, RawMagnifier target)=>target.build,

};
}