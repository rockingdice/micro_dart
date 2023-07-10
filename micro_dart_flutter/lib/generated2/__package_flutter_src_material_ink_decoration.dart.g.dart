import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/ink_decoration.dart@Ink@#as': (m.Scope scope, target)=>()=>target as Ink,
'package:flutter/src/material/ink_decoration.dart@Ink@#is': (m.Scope scope, target)=>()=>target is Ink,
'package:flutter/src/material/ink_decoration.dart@Ink@child': (m.Scope scope, Ink target)=>target.child,
'package:flutter/src/material/ink_decoration.dart@Ink@padding': (m.Scope scope, Ink target)=>target.padding,
'package:flutter/src/material/ink_decoration.dart@Ink@decoration': (m.Scope scope, Ink target)=>target.decoration,
'package:flutter/src/material/ink_decoration.dart@Ink@width': (m.Scope scope, Ink target)=>target.width,
'package:flutter/src/material/ink_decoration.dart@Ink@height': (m.Scope scope, Ink target)=>target.height,
'package:flutter/src/material/ink_decoration.dart@Ink@': (m.Scope scope)=>({ child,  color,  decoration,  height,  key,  padding,  width}){
return Ink(child:child, color:color, decoration:decoration, height:height, key:key, padding:padding, width:width);
},
'package:flutter/src/material/ink_decoration.dart@Ink@image': (m.Scope scope)=>({ alignment,  centerSlice,  child,  colorFilter,  fit,  height,  image,  key,  matchTextDirection,  onImageError,  padding,  repeat,  width}){
void onImageErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onImageError!,[exception, stackTrace], {});
}

return Ink.image(alignment:alignment ?? Alignment.center, centerSlice:centerSlice, child:child, colorFilter:colorFilter, fit:fit, height:height, image:image, key:key, matchTextDirection:matchTextDirection ?? false, onImageError:onImageError == null ? null :onImageErrorProxy, padding:padding, repeat:repeat ?? ImageRepeat.noRepeat, width:width);
},
'package:flutter/src/material/ink_decoration.dart@Ink@debugFillProperties': (m.Scope scope, Ink target)=>target.debugFillProperties,
'package:flutter/src/material/ink_decoration.dart@Ink@createState': (m.Scope scope, Ink target)=>target.createState,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@#as': (m.Scope scope, target)=>()=>target as InkDecoration,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@#is': (m.Scope scope, target)=>()=>target is InkDecoration,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@decoration': (m.Scope scope, InkDecoration target)=>target.decoration,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@decoration:set': (m.Scope scope, InkDecoration target)=>(other)=>target.decoration=other,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@isVisible': (m.Scope scope, InkDecoration target)=>target.isVisible,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@isVisible:set': (m.Scope scope, InkDecoration target)=>(other)=>target.isVisible=other,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@configuration': (m.Scope scope, InkDecoration target)=>target.configuration,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@configuration:set': (m.Scope scope, InkDecoration target)=>(other)=>target.configuration=other,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@': (m.Scope scope)=>({ configuration,  controller,  decoration,  isVisible,  onRemoved,  referenceBox}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

return InkDecoration(configuration:configuration, controller:controller, decoration:decoration, isVisible:isVisible ?? true, onRemoved:onRemoved == null ? null :onRemovedProxy, referenceBox:referenceBox);
},
'package:flutter/src/material/ink_decoration.dart@InkDecoration@dispose': (m.Scope scope, InkDecoration target)=>target.dispose,
'package:flutter/src/material/ink_decoration.dart@InkDecoration@paintFeature': (m.Scope scope, InkDecoration target)=>target.paintFeature,

};
}