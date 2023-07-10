import 'package:flutter/src/widgets/image.dart';
import 'dart:async';
import 'dart:io' show File;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/image.dart@Image@#as': (m.Scope scope, target)=>()=>target as Image,
'package:flutter/src/widgets/image.dart@Image@#is': (m.Scope scope, target)=>()=>target is Image,
'package:flutter/src/widgets/image.dart@Image@image': (m.Scope scope, Image target)=>target.image,
'package:flutter/src/widgets/image.dart@Image@frameBuilder': (m.Scope scope, Image target)=>target.frameBuilder,
'package:flutter/src/widgets/image.dart@Image@loadingBuilder': (m.Scope scope, Image target)=>target.loadingBuilder,
'package:flutter/src/widgets/image.dart@Image@errorBuilder': (m.Scope scope, Image target)=>target.errorBuilder,
'package:flutter/src/widgets/image.dart@Image@width': (m.Scope scope, Image target)=>target.width,
'package:flutter/src/widgets/image.dart@Image@height': (m.Scope scope, Image target)=>target.height,
'package:flutter/src/widgets/image.dart@Image@color': (m.Scope scope, Image target)=>target.color,
'package:flutter/src/widgets/image.dart@Image@opacity': (m.Scope scope, Image target)=>target.opacity,
'package:flutter/src/widgets/image.dart@Image@filterQuality': (m.Scope scope, Image target)=>target.filterQuality,
'package:flutter/src/widgets/image.dart@Image@colorBlendMode': (m.Scope scope, Image target)=>target.colorBlendMode,
'package:flutter/src/widgets/image.dart@Image@fit': (m.Scope scope, Image target)=>target.fit,
'package:flutter/src/widgets/image.dart@Image@alignment': (m.Scope scope, Image target)=>target.alignment,
'package:flutter/src/widgets/image.dart@Image@repeat': (m.Scope scope, Image target)=>target.repeat,
'package:flutter/src/widgets/image.dart@Image@centerSlice': (m.Scope scope, Image target)=>target.centerSlice,
'package:flutter/src/widgets/image.dart@Image@matchTextDirection': (m.Scope scope, Image target)=>target.matchTextDirection,
'package:flutter/src/widgets/image.dart@Image@gaplessPlayback': (m.Scope scope, Image target)=>target.gaplessPlayback,
'package:flutter/src/widgets/image.dart@Image@semanticLabel': (m.Scope scope, Image target)=>target.semanticLabel,
'package:flutter/src/widgets/image.dart@Image@excludeFromSemantics': (m.Scope scope, Image target)=>target.excludeFromSemantics,
'package:flutter/src/widgets/image.dart@Image@isAntiAlias': (m.Scope scope, Image target)=>target.isAntiAlias,
'package:flutter/src/widgets/image.dart@Image@': (m.Scope scope)=>({ alignment,  centerSlice,  color,  colorBlendMode,  errorBuilder,  excludeFromSemantics,  filterQuality,  fit,  frameBuilder,  gaplessPlayback,  height,  image,  isAntiAlias,  key,  loadingBuilder,  matchTextDirection,  opacity,  repeat,  semanticLabel,  width}){
Widget errorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorBuilder!,[context, error, stackTrace], {});
}

Widget frameBuilderProxy( context,  child,  frame,  wasSynchronouslyLoaded) {
return  engine.callFunctionPointer(scope, frameBuilder!,[context, child, frame, wasSynchronouslyLoaded], {});
}

Widget loadingBuilderProxy( context,  child,  loadingProgress) {
return  engine.callFunctionPointer(scope, loadingBuilder!,[context, child, loadingProgress], {});
}

return Image(alignment:alignment ?? Alignment.center, centerSlice:centerSlice, color:color, colorBlendMode:colorBlendMode, errorBuilder:errorBuilder == null ? null :errorBuilderProxy, excludeFromSemantics:excludeFromSemantics ?? false, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, frameBuilder:frameBuilder == null ? null :frameBuilderProxy, gaplessPlayback:gaplessPlayback ?? false, height:height, image:image, isAntiAlias:isAntiAlias ?? false, key:key, loadingBuilder:loadingBuilder == null ? null :loadingBuilderProxy, matchTextDirection:matchTextDirection ?? false, opacity:opacity, repeat:repeat ?? ImageRepeat.noRepeat, semanticLabel:semanticLabel, width:width);
},
'package:flutter/src/widgets/image.dart@Image@network': (m.Scope scope)=>( src, { alignment,  cacheHeight,  cacheWidth,  centerSlice,  color,  colorBlendMode,  errorBuilder,  excludeFromSemantics,  filterQuality,  fit,  frameBuilder,  gaplessPlayback,  headers,  height,  isAntiAlias,  key,  loadingBuilder,  matchTextDirection,  opacity,  repeat,  scale,  semanticLabel,  width}){
Widget errorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorBuilder!,[context, error, stackTrace], {});
}

Widget frameBuilderProxy( context,  child,  frame,  wasSynchronouslyLoaded) {
return  engine.callFunctionPointer(scope, frameBuilder!,[context, child, frame, wasSynchronouslyLoaded], {});
}

Widget loadingBuilderProxy( context,  child,  loadingProgress) {
return  engine.callFunctionPointer(scope, loadingBuilder!,[context, child, loadingProgress], {});
}

return Image.network(src, alignment:alignment ?? Alignment.center, cacheHeight:cacheHeight, cacheWidth:cacheWidth, centerSlice:centerSlice, color:color, colorBlendMode:colorBlendMode, errorBuilder:errorBuilder == null ? null :errorBuilderProxy, excludeFromSemantics:excludeFromSemantics ?? false, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, frameBuilder:frameBuilder == null ? null :frameBuilderProxy, gaplessPlayback:gaplessPlayback ?? false, headers:headers, height:height, isAntiAlias:isAntiAlias ?? false, key:key, loadingBuilder:loadingBuilder == null ? null :loadingBuilderProxy, matchTextDirection:matchTextDirection ?? false, opacity:opacity, repeat:repeat ?? ImageRepeat.noRepeat, scale:scale ?? 1.0, semanticLabel:semanticLabel, width:width);
},
'package:flutter/src/widgets/image.dart@Image@file': (m.Scope scope)=>( file, { alignment,  cacheHeight,  cacheWidth,  centerSlice,  color,  colorBlendMode,  errorBuilder,  excludeFromSemantics,  filterQuality,  fit,  frameBuilder,  gaplessPlayback,  height,  isAntiAlias,  key,  matchTextDirection,  opacity,  repeat,  scale,  semanticLabel,  width}){
Widget errorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorBuilder!,[context, error, stackTrace], {});
}

Widget frameBuilderProxy( context,  child,  frame,  wasSynchronouslyLoaded) {
return  engine.callFunctionPointer(scope, frameBuilder!,[context, child, frame, wasSynchronouslyLoaded], {});
}

return Image.file(file, alignment:alignment ?? Alignment.center, cacheHeight:cacheHeight, cacheWidth:cacheWidth, centerSlice:centerSlice, color:color, colorBlendMode:colorBlendMode, errorBuilder:errorBuilder == null ? null :errorBuilderProxy, excludeFromSemantics:excludeFromSemantics ?? false, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, frameBuilder:frameBuilder == null ? null :frameBuilderProxy, gaplessPlayback:gaplessPlayback ?? false, height:height, isAntiAlias:isAntiAlias ?? false, key:key, matchTextDirection:matchTextDirection ?? false, opacity:opacity, repeat:repeat ?? ImageRepeat.noRepeat, scale:scale ?? 1.0, semanticLabel:semanticLabel, width:width);
},
'package:flutter/src/widgets/image.dart@Image@asset': (m.Scope scope)=>( name, { alignment,  bundle,  cacheHeight,  cacheWidth,  centerSlice,  color,  colorBlendMode,  errorBuilder,  excludeFromSemantics,  filterQuality,  fit,  frameBuilder,  gaplessPlayback,  height,  isAntiAlias,  key,  matchTextDirection,  opacity,  package,  repeat,  scale,  semanticLabel,  width}){
Widget errorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorBuilder!,[context, error, stackTrace], {});
}

Widget frameBuilderProxy( context,  child,  frame,  wasSynchronouslyLoaded) {
return  engine.callFunctionPointer(scope, frameBuilder!,[context, child, frame, wasSynchronouslyLoaded], {});
}

return Image.asset(name, alignment:alignment ?? Alignment.center, bundle:bundle, cacheHeight:cacheHeight, cacheWidth:cacheWidth, centerSlice:centerSlice, color:color, colorBlendMode:colorBlendMode, errorBuilder:errorBuilder == null ? null :errorBuilderProxy, excludeFromSemantics:excludeFromSemantics ?? false, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, frameBuilder:frameBuilder == null ? null :frameBuilderProxy, gaplessPlayback:gaplessPlayback ?? false, height:height, isAntiAlias:isAntiAlias ?? false, key:key, matchTextDirection:matchTextDirection ?? false, opacity:opacity, package:package, repeat:repeat ?? ImageRepeat.noRepeat, scale:scale, semanticLabel:semanticLabel, width:width);
},
'package:flutter/src/widgets/image.dart@Image@memory': (m.Scope scope)=>( bytes, { alignment,  cacheHeight,  cacheWidth,  centerSlice,  color,  colorBlendMode,  errorBuilder,  excludeFromSemantics,  filterQuality,  fit,  frameBuilder,  gaplessPlayback,  height,  isAntiAlias,  key,  matchTextDirection,  opacity,  repeat,  scale,  semanticLabel,  width}){
Widget errorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, errorBuilder!,[context, error, stackTrace], {});
}

Widget frameBuilderProxy( context,  child,  frame,  wasSynchronouslyLoaded) {
return  engine.callFunctionPointer(scope, frameBuilder!,[context, child, frame, wasSynchronouslyLoaded], {});
}

return Image.memory(bytes, alignment:alignment ?? Alignment.center, cacheHeight:cacheHeight, cacheWidth:cacheWidth, centerSlice:centerSlice, color:color, colorBlendMode:colorBlendMode, errorBuilder:errorBuilder == null ? null :errorBuilderProxy, excludeFromSemantics:excludeFromSemantics ?? false, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, frameBuilder:frameBuilder == null ? null :frameBuilderProxy, gaplessPlayback:gaplessPlayback ?? false, height:height, isAntiAlias:isAntiAlias ?? false, key:key, matchTextDirection:matchTextDirection ?? false, opacity:opacity, repeat:repeat ?? ImageRepeat.noRepeat, scale:scale ?? 1.0, semanticLabel:semanticLabel, width:width);
},
'package:flutter/src/widgets/image.dart@Image@createState': (m.Scope scope, Image target)=>target.createState,
'package:flutter/src/widgets/image.dart@Image@debugFillProperties': (m.Scope scope, Image target)=>target.debugFillProperties,
'package:flutter/src/widgets/image.dart@@createLocalImageConfiguration': (m.Scope scope)=>createLocalImageConfiguration,
'package:flutter/src/widgets/image.dart@@precacheImage': (m.Scope scope)=>( provider,  context, { onError,  size}){
void onErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onError!,[exception, stackTrace], {});
}

return precacheImage(provider, context, onError:onError == null ? null :onErrorProxy, size:size);
},

};
}