import 'package:flutter/src/material/ink_ripple.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/ink_ripple.dart@InkRipple@#as': (m.Scope scope, target)=>()=>target as InkRipple,
'package:flutter/src/material/ink_ripple.dart@InkRipple@#is': (m.Scope scope, target)=>()=>target is InkRipple,
'package:flutter/src/material/ink_ripple.dart@InkRipple@splashFactory': (m.Scope scope)=>InkRipple.splashFactory,
'package:flutter/src/material/ink_ripple.dart@InkRipple@': (m.Scope scope)=>({ borderRadius,  color,  containedInkWell,  controller,  customBorder,  onRemoved,  position,  radius,  rectCallback,  referenceBox,  textDirection}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

Rect rectCallbackProxy() {
return  engine.callFunctionPointer(scope, rectCallback!,[], {});
}

return InkRipple(borderRadius:borderRadius, color:color, containedInkWell:containedInkWell ?? false, controller:controller, customBorder:customBorder, onRemoved:onRemoved == null ? null :onRemovedProxy, position:position, radius:radius, rectCallback:rectCallback == null ? null :rectCallbackProxy, referenceBox:referenceBox, textDirection:textDirection);
},
'package:flutter/src/material/ink_ripple.dart@InkRipple@confirm': (m.Scope scope, InkRipple target)=>target.confirm,
'package:flutter/src/material/ink_ripple.dart@InkRipple@cancel': (m.Scope scope, InkRipple target)=>target.cancel,
'package:flutter/src/material/ink_ripple.dart@InkRipple@dispose': (m.Scope scope, InkRipple target)=>target.dispose,
'package:flutter/src/material/ink_ripple.dart@InkRipple@paintFeature': (m.Scope scope, InkRipple target)=>target.paintFeature,

};
}