import 'package:flutter/src/material/ink_highlight.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart' show InteractiveInkFeature;
import 'package:flutter/src/material/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/ink_highlight.dart@InkHighlight@#as': (m.Scope scope, target)=>()=>target as InkHighlight,
'package:flutter/src/material/ink_highlight.dart@InkHighlight@#is': (m.Scope scope, target)=>()=>target is InkHighlight,
'package:flutter/src/material/ink_highlight.dart@InkHighlight@active': (m.Scope scope, InkHighlight target)=>target.active,
'package:flutter/src/material/ink_highlight.dart@InkHighlight@': (m.Scope scope)=>({ borderRadius,  color,  controller,  customBorder,  fadeDuration,  onRemoved,  radius,  rectCallback,  referenceBox,  shape,  textDirection}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

Rect rectCallbackProxy() {
return  engine.callFunctionPointer(scope, rectCallback!,[], {});
}

return InkHighlight(borderRadius:borderRadius, color:color, controller:controller, customBorder:customBorder, fadeDuration:fadeDuration ?? const Duration(milliseconds: 200), onRemoved:onRemoved == null ? null :onRemovedProxy, radius:radius, rectCallback:rectCallback == null ? null :rectCallbackProxy, referenceBox:referenceBox, shape:shape ?? BoxShape.rectangle, textDirection:textDirection);
},
'package:flutter/src/material/ink_highlight.dart@InkHighlight@activate': (m.Scope scope, InkHighlight target)=>target.activate,
'package:flutter/src/material/ink_highlight.dart@InkHighlight@deactivate': (m.Scope scope, InkHighlight target)=>target.deactivate,
'package:flutter/src/material/ink_highlight.dart@InkHighlight@dispose': (m.Scope scope, InkHighlight target)=>target.dispose,
'package:flutter/src/material/ink_highlight.dart@InkHighlight@paintFeature': (m.Scope scope, InkHighlight target)=>target.paintFeature,

};
}