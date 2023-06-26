import 'package:flutter/src/painting/_network_image_io.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/debug.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@#as': (m.Scope scope, target)=>()=>target as NetworkImage,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@#is': (m.Scope scope, target)=>()=>target is NetworkImage,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@url': (m.Scope scope, NetworkImage target)=>target.url,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@scale': (m.Scope scope, NetworkImage target)=>target.scale,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@headers': (m.Scope scope, NetworkImage target)=>target.headers,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@hashCode': (m.Scope scope, NetworkImage target)=>target.hashCode,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@': (m.Scope scope)=>NetworkImage,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@obtainKey': (m.Scope scope, NetworkImage target)=>target.obtainKey,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@load': (m.Scope scope, NetworkImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.load(key, decodeProxy);
},
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@loadBuffer': (m.Scope scope, NetworkImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { allowUpscaling,  cacheHeight,  cacheWidth}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'allowUpscaling':allowUpscaling, 'cacheHeight':cacheHeight, 'cacheWidth':cacheWidth});
}

return target.loadBuffer(key, decodeProxy);
},
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@loadImage': (m.Scope scope, NetworkImage target)=>( key,  decode){
Future<Codec> decodeProxy( buffer, { getTargetSize}) async{
return await engine.callFunctionPointerAsync(scope, decode!,[buffer], {'getTargetSize':getTargetSize});
}

return target.loadImage(key, decodeProxy);
},
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@==': (m.Scope scope, NetworkImage target)=>(other)=> target == other,
'package:flutter/src/painting/_network_image_io.dart@NetworkImage@toString': (m.Scope scope, NetworkImage target)=>target.toString,

};
}