import 'package:flutter/src/services/asset_bundle.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/asset_bundle.dart@@rootBundle': (m.Scope scope)=>rootBundle,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@#as': (m.Scope scope, target)=>()=>target as AssetBundle,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@#is': (m.Scope scope, target)=>()=>target is AssetBundle,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@load': (m.Scope scope, AssetBundle target)=>target.load,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@loadBuffer': (m.Scope scope, AssetBundle target)=>target.loadBuffer,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@loadString': (m.Scope scope, AssetBundle target)=>target.loadString,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@loadStructuredData': (m.Scope scope, AssetBundle target)=>( key,  parser){
Future<T> parserProxy<T>( value) async{
return await engine.callFunctionPointerAsync(scope, parser!,[value], {});
}

return target.loadStructuredData(key, parserProxy);
},
'package:flutter/src/services/asset_bundle.dart@AssetBundle@loadStructuredBinaryData': (m.Scope scope, AssetBundle target)=>( key,  parser){
FutureOr<T> parserProxy<T>( data) async{
return await engine.callFunctionPointerAsync(scope, parser!,[data], {});
}

return target.loadStructuredBinaryData(key, parserProxy);
},
'package:flutter/src/services/asset_bundle.dart@AssetBundle@evict': (m.Scope scope, AssetBundle target)=>target.evict,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@clear': (m.Scope scope, AssetBundle target)=>target.clear,
'package:flutter/src/services/asset_bundle.dart@AssetBundle@toString': (m.Scope scope, AssetBundle target)=>target.toString,
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@#as': (m.Scope scope, target)=>()=>target as NetworkAssetBundle,
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@#is': (m.Scope scope, target)=>()=>target is NetworkAssetBundle,
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@': (m.Scope scope)=>NetworkAssetBundle,
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@load': (m.Scope scope, NetworkAssetBundle target)=>target.load,
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@loadStructuredData': (m.Scope scope, NetworkAssetBundle target)=>( key,  parser){
Future<T> parserProxy<T>( value) async{
return await engine.callFunctionPointerAsync(scope, parser!,[value], {});
}

return target.loadStructuredData(key, parserProxy);
},
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@loadStructuredBinaryData': (m.Scope scope, NetworkAssetBundle target)=>( key,  parser){
FutureOr<T> parserProxy<T>( data) async{
return await engine.callFunctionPointerAsync(scope, parser!,[data], {});
}

return target.loadStructuredBinaryData(key, parserProxy);
},
'package:flutter/src/services/asset_bundle.dart@NetworkAssetBundle@toString': (m.Scope scope, NetworkAssetBundle target)=>target.toString,
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@#as': (m.Scope scope, target)=>()=>target as CachingAssetBundle,
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@#is': (m.Scope scope, target)=>()=>target is CachingAssetBundle,
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@loadString': (m.Scope scope, CachingAssetBundle target)=>target.loadString,
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@loadStructuredData': (m.Scope scope, CachingAssetBundle target)=>( key,  parser){
Future<T> parserProxy<T>( value) async{
return await engine.callFunctionPointerAsync(scope, parser!,[value], {});
}

return target.loadStructuredData(key, parserProxy);
},
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@loadStructuredBinaryData': (m.Scope scope, CachingAssetBundle target)=>( key,  parser){
FutureOr<T> parserProxy<T>( data) async{
return await engine.callFunctionPointerAsync(scope, parser!,[data], {});
}

return target.loadStructuredBinaryData(key, parserProxy);
},
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@evict': (m.Scope scope, CachingAssetBundle target)=>target.evict,
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@clear': (m.Scope scope, CachingAssetBundle target)=>target.clear,
'package:flutter/src/services/asset_bundle.dart@CachingAssetBundle@loadBuffer': (m.Scope scope, CachingAssetBundle target)=>target.loadBuffer,
'package:flutter/src/services/asset_bundle.dart@PlatformAssetBundle@#as': (m.Scope scope, target)=>()=>target as PlatformAssetBundle,
'package:flutter/src/services/asset_bundle.dart@PlatformAssetBundle@#is': (m.Scope scope, target)=>()=>target is PlatformAssetBundle,
'package:flutter/src/services/asset_bundle.dart@PlatformAssetBundle@': (m.Scope scope)=>(){
return PlatformAssetBundle();
},
'package:flutter/src/services/asset_bundle.dart@PlatformAssetBundle@load': (m.Scope scope, PlatformAssetBundle target)=>target.load,
'package:flutter/src/services/asset_bundle.dart@PlatformAssetBundle@loadBuffer': (m.Scope scope, PlatformAssetBundle target)=>target.loadBuffer,

};
}