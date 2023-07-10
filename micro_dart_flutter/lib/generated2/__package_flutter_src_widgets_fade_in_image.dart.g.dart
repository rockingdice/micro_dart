import 'package:flutter/src/widgets/fade_in_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@#as': (m.Scope scope, target)=>()=>target as FadeInImage,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@#is': (m.Scope scope, target)=>()=>target is FadeInImage,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@placeholder': (m.Scope scope, FadeInImage target)=>target.placeholder,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@placeholderErrorBuilder': (m.Scope scope, FadeInImage target)=>target.placeholderErrorBuilder,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@image': (m.Scope scope, FadeInImage target)=>target.image,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@imageErrorBuilder': (m.Scope scope, FadeInImage target)=>target.imageErrorBuilder,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@fadeOutDuration': (m.Scope scope, FadeInImage target)=>target.fadeOutDuration,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@fadeOutCurve': (m.Scope scope, FadeInImage target)=>target.fadeOutCurve,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@fadeInDuration': (m.Scope scope, FadeInImage target)=>target.fadeInDuration,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@fadeInCurve': (m.Scope scope, FadeInImage target)=>target.fadeInCurve,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@width': (m.Scope scope, FadeInImage target)=>target.width,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@height': (m.Scope scope, FadeInImage target)=>target.height,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@fit': (m.Scope scope, FadeInImage target)=>target.fit,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@placeholderFit': (m.Scope scope, FadeInImage target)=>target.placeholderFit,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@filterQuality': (m.Scope scope, FadeInImage target)=>target.filterQuality,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@placeholderFilterQuality': (m.Scope scope, FadeInImage target)=>target.placeholderFilterQuality,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@alignment': (m.Scope scope, FadeInImage target)=>target.alignment,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@repeat': (m.Scope scope, FadeInImage target)=>target.repeat,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@matchTextDirection': (m.Scope scope, FadeInImage target)=>target.matchTextDirection,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@excludeFromSemantics': (m.Scope scope, FadeInImage target)=>target.excludeFromSemantics,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@imageSemanticLabel': (m.Scope scope, FadeInImage target)=>target.imageSemanticLabel,
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@': (m.Scope scope)=>({ alignment,  excludeFromSemantics,  fadeInCurve,  fadeInDuration,  fadeOutCurve,  fadeOutDuration,  filterQuality,  fit,  height,  image,  imageErrorBuilder,  imageSemanticLabel,  key,  matchTextDirection,  placeholder,  placeholderErrorBuilder,  placeholderFilterQuality,  placeholderFit,  repeat,  width}){
Widget imageErrorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, imageErrorBuilder!,[context, error, stackTrace], {});
}

Widget placeholderErrorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, placeholderErrorBuilder!,[context, error, stackTrace], {});
}

return FadeInImage(alignment:alignment ?? Alignment.center, excludeFromSemantics:excludeFromSemantics ?? false, fadeInCurve:fadeInCurve ?? Curves.easeIn, fadeInDuration:fadeInDuration ?? const Duration(milliseconds: 700), fadeOutCurve:fadeOutCurve ?? Curves.easeOut, fadeOutDuration:fadeOutDuration ?? const Duration(milliseconds: 300), filterQuality:filterQuality ?? FilterQuality.low, fit:fit, height:height, image:image, imageErrorBuilder:imageErrorBuilder == null ? null :imageErrorBuilderProxy, imageSemanticLabel:imageSemanticLabel, key:key, matchTextDirection:matchTextDirection ?? false, placeholder:placeholder, placeholderErrorBuilder:placeholderErrorBuilder == null ? null :placeholderErrorBuilderProxy, placeholderFilterQuality:placeholderFilterQuality, placeholderFit:placeholderFit, repeat:repeat ?? ImageRepeat.noRepeat, width:width);
},
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@memoryNetwork': (m.Scope scope)=>({ alignment,  excludeFromSemantics,  fadeInCurve,  fadeInDuration,  fadeOutCurve,  fadeOutDuration,  filterQuality,  fit,  height,  image,  imageCacheHeight,  imageCacheWidth,  imageErrorBuilder,  imageScale,  imageSemanticLabel,  key,  matchTextDirection,  placeholder,  placeholderCacheHeight,  placeholderCacheWidth,  placeholderErrorBuilder,  placeholderFilterQuality,  placeholderFit,  placeholderScale,  repeat,  width}){
Widget imageErrorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, imageErrorBuilder!,[context, error, stackTrace], {});
}

Widget placeholderErrorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, placeholderErrorBuilder!,[context, error, stackTrace], {});
}

return FadeInImage.memoryNetwork(alignment:alignment ?? Alignment.center, excludeFromSemantics:excludeFromSemantics ?? false, fadeInCurve:fadeInCurve ?? Curves.easeIn, fadeInDuration:fadeInDuration ?? const Duration(milliseconds: 700), fadeOutCurve:fadeOutCurve ?? Curves.easeOut, fadeOutDuration:fadeOutDuration ?? const Duration(milliseconds: 300), filterQuality:filterQuality ?? FilterQuality.low, fit:fit, height:height, image:image, imageCacheHeight:imageCacheHeight, imageCacheWidth:imageCacheWidth, imageErrorBuilder:imageErrorBuilder == null ? null :imageErrorBuilderProxy, imageScale:imageScale ?? 1.0, imageSemanticLabel:imageSemanticLabel, key:key, matchTextDirection:matchTextDirection ?? false, placeholder:placeholder, placeholderCacheHeight:placeholderCacheHeight, placeholderCacheWidth:placeholderCacheWidth, placeholderErrorBuilder:placeholderErrorBuilder == null ? null :placeholderErrorBuilderProxy, placeholderFilterQuality:placeholderFilterQuality, placeholderFit:placeholderFit, placeholderScale:placeholderScale ?? 1.0, repeat:repeat ?? ImageRepeat.noRepeat, width:width);
},
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@assetNetwork': (m.Scope scope)=>({ alignment,  bundle,  excludeFromSemantics,  fadeInCurve,  fadeInDuration,  fadeOutCurve,  fadeOutDuration,  filterQuality,  fit,  height,  image,  imageCacheHeight,  imageCacheWidth,  imageErrorBuilder,  imageScale,  imageSemanticLabel,  key,  matchTextDirection,  placeholder,  placeholderCacheHeight,  placeholderCacheWidth,  placeholderErrorBuilder,  placeholderFilterQuality,  placeholderFit,  placeholderScale,  repeat,  width}){
Widget imageErrorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, imageErrorBuilder!,[context, error, stackTrace], {});
}

Widget placeholderErrorBuilderProxy( context,  error,  stackTrace) {
return  engine.callFunctionPointer(scope, placeholderErrorBuilder!,[context, error, stackTrace], {});
}

return FadeInImage.assetNetwork(alignment:alignment ?? Alignment.center, bundle:bundle, excludeFromSemantics:excludeFromSemantics ?? false, fadeInCurve:fadeInCurve ?? Curves.easeIn, fadeInDuration:fadeInDuration ?? const Duration(milliseconds: 700), fadeOutCurve:fadeOutCurve ?? Curves.easeOut, fadeOutDuration:fadeOutDuration ?? const Duration(milliseconds: 300), filterQuality:filterQuality ?? FilterQuality.low, fit:fit, height:height, image:image, imageCacheHeight:imageCacheHeight, imageCacheWidth:imageCacheWidth, imageErrorBuilder:imageErrorBuilder == null ? null :imageErrorBuilderProxy, imageScale:imageScale ?? 1.0, imageSemanticLabel:imageSemanticLabel, key:key, matchTextDirection:matchTextDirection ?? false, placeholder:placeholder, placeholderCacheHeight:placeholderCacheHeight, placeholderCacheWidth:placeholderCacheWidth, placeholderErrorBuilder:placeholderErrorBuilder == null ? null :placeholderErrorBuilderProxy, placeholderFilterQuality:placeholderFilterQuality, placeholderFit:placeholderFit, placeholderScale:placeholderScale, repeat:repeat ?? ImageRepeat.noRepeat, width:width);
},
'package:flutter/src/widgets/fade_in_image.dart@FadeInImage@createState': (m.Scope scope, FadeInImage target)=>target.createState,

};
}