import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@#as': (m.Scope scope, target)=>()=>target as ScrollAwareImageProvider,
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@#is': (m.Scope scope, target)=>()=>target is ScrollAwareImageProvider,
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@context': (m.Scope scope, ScrollAwareImageProvider target)=>target.context,
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@imageProvider': (m.Scope scope, ScrollAwareImageProvider target)=>target.imageProvider,
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@': (m.Scope scope)=>ScrollAwareImageProvider,
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@resolveStreamForKey': (m.Scope scope, ScrollAwareImageProvider target)=>( configuration,  stream,  key,  handleError){
void handleErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, handleError!,[exception, stackTrace], {});
}

target.resolveStreamForKey(configuration, stream, key, handleErrorProxy);
},
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@load': (m.Scope scope, ScrollAwareImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.load(key, decodeProxy);
},
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@loadBuffer': (m.Scope scope, ScrollAwareImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.loadBuffer(key, decodeProxy);
},
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@loadImage': (m.Scope scope, ScrollAwareImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/widgets/scroll_aware_image_provider.dart@ScrollAwareImageProvider@obtainKey': (m.Scope scope, ScrollAwareImageProvider target)=>target.obtainKey,

};
}