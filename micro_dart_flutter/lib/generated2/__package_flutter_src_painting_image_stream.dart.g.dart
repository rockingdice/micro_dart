import 'package:flutter/src/painting/image_stream.dart';
import 'dart:async';
import 'dart:ui' show Codec,FrameInfo,Image;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/image_stream.dart@ImageInfo@#as': (m.Scope scope, target)=>()=>target as ImageInfo,
'package:flutter/src/painting/image_stream.dart@ImageInfo@#is': (m.Scope scope, target)=>()=>target is ImageInfo,
'package:flutter/src/painting/image_stream.dart@ImageInfo@image': (m.Scope scope, ImageInfo target)=>target.image,
'package:flutter/src/painting/image_stream.dart@ImageInfo@scale': (m.Scope scope, ImageInfo target)=>target.scale,
'package:flutter/src/painting/image_stream.dart@ImageInfo@debugLabel': (m.Scope scope, ImageInfo target)=>target.debugLabel,
'package:flutter/src/painting/image_stream.dart@ImageInfo@sizeBytes': (m.Scope scope, ImageInfo target)=>target.sizeBytes,
'package:flutter/src/painting/image_stream.dart@ImageInfo@hashCode': (m.Scope scope, ImageInfo target)=>target.hashCode,
'package:flutter/src/painting/image_stream.dart@ImageInfo@': (m.Scope scope)=>({ debugLabel,  image,  scale}){
return ImageInfo(debugLabel:debugLabel, image:image, scale:scale ?? 1.0);
},
'package:flutter/src/painting/image_stream.dart@ImageInfo@clone': (m.Scope scope, ImageInfo target)=>target.clone,
'package:flutter/src/painting/image_stream.dart@ImageInfo@isCloneOf': (m.Scope scope, ImageInfo target)=>target.isCloneOf,
'package:flutter/src/painting/image_stream.dart@ImageInfo@dispose': (m.Scope scope, ImageInfo target)=>target.dispose,
'package:flutter/src/painting/image_stream.dart@ImageInfo@toString': (m.Scope scope, ImageInfo target)=>target.toString,
'package:flutter/src/painting/image_stream.dart@ImageInfo@==': (m.Scope scope, ImageInfo target)=>(other)=> target == other,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@#as': (m.Scope scope, target)=>()=>target as ImageStreamListener,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@#is': (m.Scope scope, target)=>()=>target is ImageStreamListener,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@onImage': (m.Scope scope, ImageStreamListener target)=>target.onImage,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@onChunk': (m.Scope scope, ImageStreamListener target)=>target.onChunk,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@onError': (m.Scope scope, ImageStreamListener target)=>target.onError,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@hashCode': (m.Scope scope, ImageStreamListener target)=>target.hashCode,
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@': (m.Scope scope)=>( onImage, { onChunk,  onError}){
void onImageProxy( image,  synchronousCall) {
 engine.callFunctionPointer(scope, onImage!,[image, synchronousCall], {});
}

void onChunkProxy( event) {
 engine.callFunctionPointer(scope, onChunk!,[event], {});
}

void onErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onError!,[exception, stackTrace], {});
}

return ImageStreamListener(onImageProxy, onChunk:onChunk == null ? null :onChunkProxy, onError:onError == null ? null :onErrorProxy);
},
'package:flutter/src/painting/image_stream.dart@ImageStreamListener@==': (m.Scope scope, ImageStreamListener target)=>(other)=> target == other,
'package:flutter/src/painting/image_stream.dart@ImageChunkEvent@#as': (m.Scope scope, target)=>()=>target as ImageChunkEvent,
'package:flutter/src/painting/image_stream.dart@ImageChunkEvent@#is': (m.Scope scope, target)=>()=>target is ImageChunkEvent,
'package:flutter/src/painting/image_stream.dart@ImageChunkEvent@cumulativeBytesLoaded': (m.Scope scope, ImageChunkEvent target)=>target.cumulativeBytesLoaded,
'package:flutter/src/painting/image_stream.dart@ImageChunkEvent@expectedTotalBytes': (m.Scope scope, ImageChunkEvent target)=>target.expectedTotalBytes,
'package:flutter/src/painting/image_stream.dart@ImageChunkEvent@': (m.Scope scope)=>({ cumulativeBytesLoaded,  expectedTotalBytes}){
return ImageChunkEvent(cumulativeBytesLoaded:cumulativeBytesLoaded, expectedTotalBytes:expectedTotalBytes);
},
'package:flutter/src/painting/image_stream.dart@ImageChunkEvent@debugFillProperties': (m.Scope scope, ImageChunkEvent target)=>target.debugFillProperties,
'package:flutter/src/painting/image_stream.dart@ImageStream@#as': (m.Scope scope, target)=>()=>target as ImageStream,
'package:flutter/src/painting/image_stream.dart@ImageStream@#is': (m.Scope scope, target)=>()=>target is ImageStream,
'package:flutter/src/painting/image_stream.dart@ImageStream@completer': (m.Scope scope, ImageStream target)=>target.completer,
'package:flutter/src/painting/image_stream.dart@ImageStream@key': (m.Scope scope, ImageStream target)=>target.key,
'package:flutter/src/painting/image_stream.dart@ImageStream@': (m.Scope scope)=>(){
return ImageStream();
},
'package:flutter/src/painting/image_stream.dart@ImageStream@setCompleter': (m.Scope scope, ImageStream target)=>target.setCompleter,
'package:flutter/src/painting/image_stream.dart@ImageStream@addListener': (m.Scope scope, ImageStream target)=>target.addListener,
'package:flutter/src/painting/image_stream.dart@ImageStream@removeListener': (m.Scope scope, ImageStream target)=>target.removeListener,
'package:flutter/src/painting/image_stream.dart@ImageStream@debugFillProperties': (m.Scope scope, ImageStream target)=>target.debugFillProperties,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleterHandle@#as': (m.Scope scope, target)=>()=>target as ImageStreamCompleterHandle,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleterHandle@#is': (m.Scope scope, target)=>()=>target is ImageStreamCompleterHandle,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleterHandle@dispose': (m.Scope scope, ImageStreamCompleterHandle target)=>target.dispose,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@#as': (m.Scope scope, target)=>()=>target as ImageStreamCompleter,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@#is': (m.Scope scope, target)=>()=>target is ImageStreamCompleter,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@debugLabel': (m.Scope scope, ImageStreamCompleter target)=>target.debugLabel,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@debugLabel:set': (m.Scope scope, ImageStreamCompleter target)=>(other)=>target.debugLabel=other,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@hasListeners': (m.Scope scope, ImageStreamCompleter target)=>target.hasListeners,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@addListener': (m.Scope scope, ImageStreamCompleter target)=>target.addListener,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@keepAlive': (m.Scope scope, ImageStreamCompleter target)=>target.keepAlive,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@removeListener': (m.Scope scope, ImageStreamCompleter target)=>target.removeListener,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@addOnLastListenerRemovedCallback': (m.Scope scope, ImageStreamCompleter target)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

target.addOnLastListenerRemovedCallback(callbackProxy);
},
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@removeOnLastListenerRemovedCallback': (m.Scope scope, ImageStreamCompleter target)=>( callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

target.removeOnLastListenerRemovedCallback(callbackProxy);
},
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@setImage': (m.Scope scope, ImageStreamCompleter target)=>target.setImage,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@reportError': (m.Scope scope, ImageStreamCompleter target)=>({ context,  exception,  informationCollector,  silent,  stack}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

target.reportError(context:context, exception:exception, informationCollector:informationCollector == null ? null :informationCollectorProxy, silent:silent ?? false, stack:stack);
},
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@reportImageChunkEvent': (m.Scope scope, ImageStreamCompleter target)=>target.reportImageChunkEvent,
'package:flutter/src/painting/image_stream.dart@ImageStreamCompleter@debugFillProperties': (m.Scope scope, ImageStreamCompleter target)=>target.debugFillProperties,
'package:flutter/src/painting/image_stream.dart@OneFrameImageStreamCompleter@#as': (m.Scope scope, target)=>()=>target as OneFrameImageStreamCompleter,
'package:flutter/src/painting/image_stream.dart@OneFrameImageStreamCompleter@#is': (m.Scope scope, target)=>()=>target is OneFrameImageStreamCompleter,
'package:flutter/src/painting/image_stream.dart@OneFrameImageStreamCompleter@': (m.Scope scope)=>( image, { informationCollector}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return OneFrameImageStreamCompleter(image, informationCollector:informationCollector == null ? null :informationCollectorProxy);
},
'package:flutter/src/painting/image_stream.dart@MultiFrameImageStreamCompleter@#as': (m.Scope scope, target)=>()=>target as MultiFrameImageStreamCompleter,
'package:flutter/src/painting/image_stream.dart@MultiFrameImageStreamCompleter@#is': (m.Scope scope, target)=>()=>target is MultiFrameImageStreamCompleter,
'package:flutter/src/painting/image_stream.dart@MultiFrameImageStreamCompleter@': (m.Scope scope)=>({ chunkEvents,  codec,  debugLabel,  informationCollector,  scale}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return MultiFrameImageStreamCompleter(chunkEvents:chunkEvents, codec:codec, debugLabel:debugLabel, informationCollector:informationCollector == null ? null :informationCollectorProxy, scale:scale);
},
'package:flutter/src/painting/image_stream.dart@MultiFrameImageStreamCompleter@addListener': (m.Scope scope, MultiFrameImageStreamCompleter target)=>target.addListener,
'package:flutter/src/painting/image_stream.dart@MultiFrameImageStreamCompleter@removeListener': (m.Scope scope, MultiFrameImageStreamCompleter target)=>target.removeListener,

};
}