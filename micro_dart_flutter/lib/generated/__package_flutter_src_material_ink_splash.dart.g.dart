import 'package:flutter/src/material/ink_splash.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/ink_splash.dart@InkSplash@#as': (m.Scope scope, target)=>()=>target as InkSplash,
'package:flutter/src/material/ink_splash.dart@InkSplash@#is': (m.Scope scope, target)=>()=>target is InkSplash,
'package:flutter/src/material/ink_splash.dart@InkSplash@splashFactory': (m.Scope scope)=>InkSplash.splashFactory,
'package:flutter/src/material/ink_splash.dart@InkSplash@': (m.Scope scope)=>({ borderRadius,  color,  containedInkWell,  controller,  customBorder,  onRemoved,  position,  radius,  rectCallback,  referenceBox,  textDirection}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

Rect rectCallbackProxy() {
return  engine.callFunctionPointer(scope, rectCallback!,[], {});
}

return InkSplash(borderRadius:borderRadius, color:color, containedInkWell:containedInkWell ?? false, controller:controller, customBorder:customBorder, onRemoved:onRemoved == null ? null :onRemovedProxy, position:position, radius:radius, rectCallback:rectCallback == null ? null :rectCallbackProxy, referenceBox:referenceBox, textDirection:textDirection);
},
'package:flutter/src/material/ink_splash.dart@InkSplash@confirm': (m.Scope scope, InkSplash target)=>target.confirm,
'package:flutter/src/material/ink_splash.dart@InkSplash@cancel': (m.Scope scope, InkSplash target)=>target.cancel,
'package:flutter/src/material/ink_splash.dart@InkSplash@dispose': (m.Scope scope, InkSplash target)=>target.dispose,
'package:flutter/src/material/ink_splash.dart@InkSplash@paintFeature': (m.Scope scope, InkSplash target)=>target.paintFeature,

};
}