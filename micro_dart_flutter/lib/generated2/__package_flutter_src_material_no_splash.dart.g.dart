import 'package:flutter/src/material/no_splash.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/no_splash.dart@NoSplash@#as': (m.Scope scope, target)=>()=>target as NoSplash,
'package:flutter/src/material/no_splash.dart@NoSplash@#is': (m.Scope scope, target)=>()=>target is NoSplash,
'package:flutter/src/material/no_splash.dart@NoSplash@splashFactory': (m.Scope scope)=>NoSplash.splashFactory,
'package:flutter/src/material/no_splash.dart@NoSplash@': (m.Scope scope)=>({ color,  controller,  onRemoved,  referenceBox}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

return NoSplash(color:color, controller:controller, onRemoved:onRemoved == null ? null :onRemovedProxy, referenceBox:referenceBox);
},
'package:flutter/src/material/no_splash.dart@NoSplash@paintFeature': (m.Scope scope, NoSplash target)=>target.paintFeature,

};
}