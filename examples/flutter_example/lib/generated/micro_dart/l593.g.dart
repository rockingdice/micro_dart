import 'package:flutter/src/painting/image_cache.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/image_cache.dart@ImageCache@#as': (m.Scope scope, target)=>()=>target as ImageCache,
'package:flutter/src/painting/image_cache.dart@ImageCache@#is': (m.Scope scope, target)=>()=>target is ImageCache,
'package:flutter/src/painting/image_cache.dart@ImageCache@maximumSize': (m.Scope scope, ImageCache target)=>target.maximumSize,
'package:flutter/src/painting/image_cache.dart@ImageCache@maximumSize:set': (m.Scope scope, ImageCache target)=>(other)=>target.maximumSize=other,
'package:flutter/src/painting/image_cache.dart@ImageCache@currentSize': (m.Scope scope, ImageCache target)=>target.currentSize,
'package:flutter/src/painting/image_cache.dart@ImageCache@maximumSizeBytes': (m.Scope scope, ImageCache target)=>target.maximumSizeBytes,
'package:flutter/src/painting/image_cache.dart@ImageCache@maximumSizeBytes:set': (m.Scope scope, ImageCache target)=>(other)=>target.maximumSizeBytes=other,
'package:flutter/src/painting/image_cache.dart@ImageCache@currentSizeBytes': (m.Scope scope, ImageCache target)=>target.currentSizeBytes,
'package:flutter/src/painting/image_cache.dart@ImageCache@liveImageCount': (m.Scope scope, ImageCache target)=>target.liveImageCount,
'package:flutter/src/painting/image_cache.dart@ImageCache@pendingImageCount': (m.Scope scope, ImageCache target)=>target.pendingImageCount,
'package:flutter/src/painting/image_cache.dart@ImageCache@': (m.Scope scope)=>(){
return ImageCache();
},
'package:flutter/src/painting/image_cache.dart@ImageCache@clear': (m.Scope scope, ImageCache target)=>target.clear,
'package:flutter/src/painting/image_cache.dart@ImageCache@evict': (m.Scope scope, ImageCache target)=>target.evict,
'package:flutter/src/painting/image_cache.dart@ImageCache@putIfAbsent': (m.Scope scope, ImageCache target)=>( key,  loader, { onError}){
ImageStreamCompleter loaderProxy() {
return  engine.callFunctionPointer(scope, loader!,[], {});
}

void onErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onError!,[exception, stackTrace], {});
}

return target.putIfAbsent(key, loaderProxy, onError:onError == null ? null :onErrorProxy);
},
'package:flutter/src/painting/image_cache.dart@ImageCache@statusForKey': (m.Scope scope, ImageCache target)=>target.statusForKey,
'package:flutter/src/painting/image_cache.dart@ImageCache@containsKey': (m.Scope scope, ImageCache target)=>target.containsKey,
'package:flutter/src/painting/image_cache.dart@ImageCache@clearLiveImages': (m.Scope scope, ImageCache target)=>target.clearLiveImages,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@#as': (m.Scope scope, target)=>()=>target as ImageCacheStatus,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@#is': (m.Scope scope, target)=>()=>target is ImageCacheStatus,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@pending': (m.Scope scope, ImageCacheStatus target)=>target.pending,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@keepAlive': (m.Scope scope, ImageCacheStatus target)=>target.keepAlive,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@live': (m.Scope scope, ImageCacheStatus target)=>target.live,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@tracked': (m.Scope scope, ImageCacheStatus target)=>target.tracked,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@untracked': (m.Scope scope, ImageCacheStatus target)=>target.untracked,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@hashCode': (m.Scope scope, ImageCacheStatus target)=>target.hashCode,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@==': (m.Scope scope, ImageCacheStatus target)=>(other)=> target == other,
'package:flutter/src/painting/image_cache.dart@ImageCacheStatus@toString': (m.Scope scope, ImageCacheStatus target)=>target.toString,

};
}