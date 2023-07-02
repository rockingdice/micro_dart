import 'package:flutter/src/painting/debug.dart';
import 'dart:io';
import 'dart:ui' show Image,Picture,Size;
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/debug.dart@@debugDisableShadows': (m.Scope scope)=>debugDisableShadows,
'package:flutter/src/painting/debug.dart@@debugDisableShadows:set': (m.Scope scope)=>(other)=>debugDisableShadows=other,
'package:flutter/src/painting/debug.dart@@debugNetworkImageHttpClientProvider': (m.Scope scope)=>debugNetworkImageHttpClientProvider,
'package:flutter/src/painting/debug.dart@@debugNetworkImageHttpClientProvider:set': (m.Scope scope)=>(other)=>debugNetworkImageHttpClientProvider=other,
'package:flutter/src/painting/debug.dart@@debugOnPaintImage': (m.Scope scope)=>debugOnPaintImage,
'package:flutter/src/painting/debug.dart@@debugOnPaintImage:set': (m.Scope scope)=>(other)=>debugOnPaintImage=other,
'package:flutter/src/painting/debug.dart@@debugInvertOversizedImages': (m.Scope scope)=>debugInvertOversizedImages,
'package:flutter/src/painting/debug.dart@@debugInvertOversizedImages:set': (m.Scope scope)=>(other)=>debugInvertOversizedImages=other,
'package:flutter/src/painting/debug.dart@@debugImageOverheadAllowance': (m.Scope scope)=>debugImageOverheadAllowance,
'package:flutter/src/painting/debug.dart@@debugImageOverheadAllowance:set': (m.Scope scope)=>(other)=>debugImageOverheadAllowance=other,
'package:flutter/src/painting/debug.dart@@debugCaptureShaderWarmUpPicture': (m.Scope scope)=>debugCaptureShaderWarmUpPicture,
'package:flutter/src/painting/debug.dart@@debugCaptureShaderWarmUpPicture:set': (m.Scope scope)=>(other)=>debugCaptureShaderWarmUpPicture=other,
'package:flutter/src/painting/debug.dart@@debugCaptureShaderWarmUpImage': (m.Scope scope)=>debugCaptureShaderWarmUpImage,
'package:flutter/src/painting/debug.dart@@debugCaptureShaderWarmUpImage:set': (m.Scope scope)=>(other)=>debugCaptureShaderWarmUpImage=other,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@#as': (m.Scope scope, target)=>()=>target as ImageSizeInfo,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@#is': (m.Scope scope, target)=>()=>target is ImageSizeInfo,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@source': (m.Scope scope, ImageSizeInfo target)=>target.source,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@displaySize': (m.Scope scope, ImageSizeInfo target)=>target.displaySize,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@imageSize': (m.Scope scope, ImageSizeInfo target)=>target.imageSize,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@displaySizeInBytes': (m.Scope scope, ImageSizeInfo target)=>target.displaySizeInBytes,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@decodedSizeInBytes': (m.Scope scope, ImageSizeInfo target)=>target.decodedSizeInBytes,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@hashCode': (m.Scope scope, ImageSizeInfo target)=>target.hashCode,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@': (m.Scope scope)=>({ displaySize,  imageSize,  source}){
return ImageSizeInfo(displaySize:displaySize, imageSize:imageSize, source:source);
},
'package:flutter/src/painting/debug.dart@ImageSizeInfo@toJson': (m.Scope scope, ImageSizeInfo target)=>target.toJson,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@==': (m.Scope scope, ImageSizeInfo target)=>(other)=> target == other,
'package:flutter/src/painting/debug.dart@ImageSizeInfo@toString': (m.Scope scope, ImageSizeInfo target)=>target.toString,
'package:flutter/src/painting/debug.dart@@debugAssertAllPaintingVarsUnset': (m.Scope scope)=>debugAssertAllPaintingVarsUnset,

};
}