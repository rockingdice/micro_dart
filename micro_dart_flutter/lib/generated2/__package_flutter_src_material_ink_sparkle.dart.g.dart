import 'package:flutter/src/material/ink_sparkle.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@#as': (m.Scope scope, target)=>()=>target as InkSparkle,
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@#is': (m.Scope scope, target)=>()=>target is InkSparkle,
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@splashFactory': (m.Scope scope)=>InkSparkle.splashFactory,
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@constantTurbulenceSeedSplashFactory': (m.Scope scope)=>InkSparkle.constantTurbulenceSeedSplashFactory,
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@': (m.Scope scope)=>({ borderRadius,  color,  containedInkWell,  controller,  customBorder,  onRemoved,  position,  radius,  rectCallback,  referenceBox,  textDirection,  turbulenceSeed}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

Rect rectCallbackProxy() {
return  engine.callFunctionPointer(scope, rectCallback!,[], {});
}

return InkSparkle(borderRadius:borderRadius, color:color, containedInkWell:containedInkWell ?? true, controller:controller, customBorder:customBorder, onRemoved:onRemoved == null ? null :onRemovedProxy, position:position, radius:radius, rectCallback:rectCallback == null ? null :rectCallbackProxy, referenceBox:referenceBox, textDirection:textDirection, turbulenceSeed:turbulenceSeed);
},
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@dispose': (m.Scope scope, InkSparkle target)=>target.dispose,
'package:flutter/src/material/ink_sparkle.dart@InkSparkle@paintFeature': (m.Scope scope, InkSparkle target)=>target.paintFeature,

};
}