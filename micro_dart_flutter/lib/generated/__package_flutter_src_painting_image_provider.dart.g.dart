import 'package:flutter/src/painting/image_provider.dart';
import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'dart:ui' show Locale,Size,TextDirection;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_cache.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@#as': (m.Scope scope, target)=>()=>target as ImageConfiguration,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@#is': (m.Scope scope, target)=>()=>target is ImageConfiguration,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@bundle': (m.Scope scope, ImageConfiguration target)=>target.bundle,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@devicePixelRatio': (m.Scope scope, ImageConfiguration target)=>target.devicePixelRatio,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@locale': (m.Scope scope, ImageConfiguration target)=>target.locale,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@textDirection': (m.Scope scope, ImageConfiguration target)=>target.textDirection,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@size': (m.Scope scope, ImageConfiguration target)=>target.size,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@platform': (m.Scope scope, ImageConfiguration target)=>target.platform,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@empty': (m.Scope scope)=>ImageConfiguration.empty,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@hashCode': (m.Scope scope, ImageConfiguration target)=>target.hashCode,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@': (m.Scope scope)=>({ bundle,  devicePixelRatio,  locale,  platform,  size,  textDirection}){
return ImageConfiguration(bundle:bundle, devicePixelRatio:devicePixelRatio, locale:locale, platform:platform, size:size, textDirection:textDirection);
},
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@copyWith': (m.Scope scope, ImageConfiguration target)=>target.copyWith,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@==': (m.Scope scope, ImageConfiguration target)=>(other)=> target == other,
'package:flutter/src/painting/image_provider.dart@ImageConfiguration@toString': (m.Scope scope, ImageConfiguration target)=>target.toString,
'package:flutter/src/painting/image_provider.dart@ImageProvider@#as': (m.Scope scope, target)=>()=>target as ImageProvider,
'package:flutter/src/painting/image_provider.dart@ImageProvider@#is': (m.Scope scope, target)=>()=>target is ImageProvider,
'package:flutter/src/painting/image_provider.dart@ImageProvider@resolve': (m.Scope scope, ImageProvider target)=>target.resolve,
'package:flutter/src/painting/image_provider.dart@ImageProvider@createStream': (m.Scope scope, ImageProvider target)=>target.createStream,
'package:flutter/src/painting/image_provider.dart@ImageProvider@obtainCacheStatus': (m.Scope scope, ImageProvider target)=>({ configuration,  handleError}){
void handleErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, handleError!,[exception, stackTrace], {});
}

return target.obtainCacheStatus(configuration:configuration, handleError:handleError == null ? null :handleErrorProxy);
},
'package:flutter/src/painting/image_provider.dart@ImageProvider@resolveStreamForKey': (m.Scope scope, ImageProvider target)=>( configuration,  stream,  key,  handleError){
void handleErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, handleError!,[exception, stackTrace], {});
}

target.resolveStreamForKey(configuration, stream, key, handleErrorProxy);
},
'package:flutter/src/painting/image_provider.dart@ImageProvider@evict': (m.Scope scope, ImageProvider target)=>target.evict,
'package:flutter/src/painting/image_provider.dart@ImageProvider@obtainKey': (m.Scope scope, ImageProvider target)=>target.obtainKey,
'package:flutter/src/painting/image_provider.dart@ImageProvider@loadImage': (m.Scope scope, ImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@ImageProvider@toString': (m.Scope scope, ImageProvider target)=>target.toString,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@#as': (m.Scope scope, target)=>()=>target as AssetBundleImageKey,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@#is': (m.Scope scope, target)=>()=>target is AssetBundleImageKey,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@bundle': (m.Scope scope, AssetBundleImageKey target)=>target.bundle,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@name': (m.Scope scope, AssetBundleImageKey target)=>target.name,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@scale': (m.Scope scope, AssetBundleImageKey target)=>target.scale,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@hashCode': (m.Scope scope, AssetBundleImageKey target)=>target.hashCode,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@': (m.Scope scope)=>AssetBundleImageKey,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@==': (m.Scope scope, AssetBundleImageKey target)=>(other)=> target == other,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageKey@toString': (m.Scope scope, AssetBundleImageKey target)=>target.toString,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageProvider@#as': (m.Scope scope, target)=>()=>target as AssetBundleImageProvider,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageProvider@#is': (m.Scope scope, target)=>()=>target is AssetBundleImageProvider,
'package:flutter/src/painting/image_provider.dart@AssetBundleImageProvider@loadImage': (m.Scope scope, AssetBundleImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@AssetBundleImageProvider@loadBuffer': (m.Scope scope, AssetBundleImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.loadBuffer(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@AssetBundleImageProvider@load': (m.Scope scope, AssetBundleImageProvider target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.load(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@ResizeImageKey@#as': (m.Scope scope, target)=>()=>target as ResizeImageKey,
'package:flutter/src/painting/image_provider.dart@ResizeImageKey@#is': (m.Scope scope, target)=>()=>target is ResizeImageKey,
'package:flutter/src/painting/image_provider.dart@ResizeImageKey@hashCode': (m.Scope scope, ResizeImageKey target)=>target.hashCode,
'package:flutter/src/painting/image_provider.dart@ResizeImageKey@==': (m.Scope scope, ResizeImageKey target)=>(other)=> target == other,
'package:flutter/src/painting/image_provider.dart@ResizeImage@#as': (m.Scope scope, target)=>()=>target as ResizeImage,
'package:flutter/src/painting/image_provider.dart@ResizeImage@#is': (m.Scope scope, target)=>()=>target is ResizeImage,
'package:flutter/src/painting/image_provider.dart@ResizeImage@imageProvider': (m.Scope scope, ResizeImage target)=>target.imageProvider,
'package:flutter/src/painting/image_provider.dart@ResizeImage@width': (m.Scope scope, ResizeImage target)=>target.width,
'package:flutter/src/painting/image_provider.dart@ResizeImage@height': (m.Scope scope, ResizeImage target)=>target.height,
'package:flutter/src/painting/image_provider.dart@ResizeImage@policy': (m.Scope scope, ResizeImage target)=>target.policy,
'package:flutter/src/painting/image_provider.dart@ResizeImage@allowUpscaling': (m.Scope scope, ResizeImage target)=>target.allowUpscaling,
'package:flutter/src/painting/image_provider.dart@ResizeImage@': (m.Scope scope)=>ResizeImage,
'package:flutter/src/painting/image_provider.dart@ResizeImage@resizeIfNeeded': (m.Scope scope)=>ResizeImage.resizeIfNeeded,
'package:flutter/src/painting/image_provider.dart@ResizeImage@loadImage': (m.Scope scope, ResizeImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@ResizeImage@obtainKey': (m.Scope scope, ResizeImage target)=>target.obtainKey,
'package:flutter/src/painting/image_provider.dart@NetworkImage@#as': (m.Scope scope, target)=>()=>target as NetworkImage,
'package:flutter/src/painting/image_provider.dart@NetworkImage@#is': (m.Scope scope, target)=>()=>target is NetworkImage,
'package:flutter/src/painting/image_provider.dart@NetworkImage@url': (m.Scope scope, NetworkImage target)=>target.url,
'package:flutter/src/painting/image_provider.dart@NetworkImage@scale': (m.Scope scope, NetworkImage target)=>target.scale,
'package:flutter/src/painting/image_provider.dart@NetworkImage@headers': (m.Scope scope, NetworkImage target)=>target.headers,
'package:flutter/src/painting/image_provider.dart@NetworkImage@': (m.Scope scope)=>NetworkImage,
'package:flutter/src/painting/image_provider.dart@NetworkImage@load': (m.Scope scope, NetworkImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.load(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@NetworkImage@loadBuffer': (m.Scope scope, NetworkImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.loadBuffer(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@NetworkImage@loadImage': (m.Scope scope, NetworkImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@FileImage@#as': (m.Scope scope, target)=>()=>target as FileImage,
'package:flutter/src/painting/image_provider.dart@FileImage@#is': (m.Scope scope, target)=>()=>target is FileImage,
'package:flutter/src/painting/image_provider.dart@FileImage@file': (m.Scope scope, FileImage target)=>target.file,
'package:flutter/src/painting/image_provider.dart@FileImage@scale': (m.Scope scope, FileImage target)=>target.scale,
'package:flutter/src/painting/image_provider.dart@FileImage@hashCode': (m.Scope scope, FileImage target)=>target.hashCode,
'package:flutter/src/painting/image_provider.dart@FileImage@': (m.Scope scope)=>FileImage,
'package:flutter/src/painting/image_provider.dart@FileImage@obtainKey': (m.Scope scope, FileImage target)=>target.obtainKey,
'package:flutter/src/painting/image_provider.dart@FileImage@load': (m.Scope scope, FileImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.load(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@FileImage@loadBuffer': (m.Scope scope, FileImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.loadBuffer(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@FileImage@loadImage': (m.Scope scope, FileImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@FileImage@==': (m.Scope scope, FileImage target)=>(other)=> target == other,
'package:flutter/src/painting/image_provider.dart@FileImage@toString': (m.Scope scope, FileImage target)=>target.toString,
'package:flutter/src/painting/image_provider.dart@MemoryImage@#as': (m.Scope scope, target)=>()=>target as MemoryImage,
'package:flutter/src/painting/image_provider.dart@MemoryImage@#is': (m.Scope scope, target)=>()=>target is MemoryImage,
'package:flutter/src/painting/image_provider.dart@MemoryImage@bytes': (m.Scope scope, MemoryImage target)=>target.bytes,
'package:flutter/src/painting/image_provider.dart@MemoryImage@scale': (m.Scope scope, MemoryImage target)=>target.scale,
'package:flutter/src/painting/image_provider.dart@MemoryImage@hashCode': (m.Scope scope, MemoryImage target)=>target.hashCode,
'package:flutter/src/painting/image_provider.dart@MemoryImage@': (m.Scope scope)=>MemoryImage,
'package:flutter/src/painting/image_provider.dart@MemoryImage@obtainKey': (m.Scope scope, MemoryImage target)=>target.obtainKey,
'package:flutter/src/painting/image_provider.dart@MemoryImage@load': (m.Scope scope, MemoryImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.load(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@MemoryImage@loadBuffer': (m.Scope scope, MemoryImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.loadBuffer(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@MemoryImage@loadImage': (m.Scope scope, MemoryImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/image_provider.dart@MemoryImage@==': (m.Scope scope, MemoryImage target)=>(other)=> target == other,
'package:flutter/src/painting/image_provider.dart@MemoryImage@toString': (m.Scope scope, MemoryImage target)=>target.toString,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@#as': (m.Scope scope, target)=>()=>target as ExactAssetImage,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@#is': (m.Scope scope, target)=>()=>target is ExactAssetImage,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@assetName': (m.Scope scope, ExactAssetImage target)=>target.assetName,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@scale': (m.Scope scope, ExactAssetImage target)=>target.scale,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@bundle': (m.Scope scope, ExactAssetImage target)=>target.bundle,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@package': (m.Scope scope, ExactAssetImage target)=>target.package,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@keyName': (m.Scope scope, ExactAssetImage target)=>target.keyName,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@hashCode': (m.Scope scope, ExactAssetImage target)=>target.hashCode,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@': (m.Scope scope)=>ExactAssetImage,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@obtainKey': (m.Scope scope, ExactAssetImage target)=>target.obtainKey,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@==': (m.Scope scope, ExactAssetImage target)=>(other)=> target == other,
'package:flutter/src/painting/image_provider.dart@ExactAssetImage@toString': (m.Scope scope, ExactAssetImage target)=>target.toString,
'package:flutter/src/painting/image_provider.dart@NetworkImageLoadException@#as': (m.Scope scope, target)=>()=>target as NetworkImageLoadException,
'package:flutter/src/painting/image_provider.dart@NetworkImageLoadException@#is': (m.Scope scope, target)=>()=>target is NetworkImageLoadException,
'package:flutter/src/painting/image_provider.dart@NetworkImageLoadException@statusCode': (m.Scope scope, NetworkImageLoadException target)=>target.statusCode,
'package:flutter/src/painting/image_provider.dart@NetworkImageLoadException@uri': (m.Scope scope, NetworkImageLoadException target)=>target.uri,
'package:flutter/src/painting/image_provider.dart@NetworkImageLoadException@': (m.Scope scope)=>NetworkImageLoadException,
'package:flutter/src/painting/image_provider.dart@NetworkImageLoadException@toString': (m.Scope scope, NetworkImageLoadException target)=>target.toString,

};
}