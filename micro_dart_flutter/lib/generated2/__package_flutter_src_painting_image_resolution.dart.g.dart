import 'package:flutter/src/painting/image_resolution.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/image_resolution.dart@AssetImage@#as': (m.Scope scope, target)=>()=>target as AssetImage,
'package:flutter/src/painting/image_resolution.dart@AssetImage@#is': (m.Scope scope, target)=>()=>target is AssetImage,
'package:flutter/src/painting/image_resolution.dart@AssetImage@assetName': (m.Scope scope, AssetImage target)=>target.assetName,
'package:flutter/src/painting/image_resolution.dart@AssetImage@bundle': (m.Scope scope, AssetImage target)=>target.bundle,
'package:flutter/src/painting/image_resolution.dart@AssetImage@package': (m.Scope scope, AssetImage target)=>target.package,
'package:flutter/src/painting/image_resolution.dart@AssetImage@keyName': (m.Scope scope, AssetImage target)=>target.keyName,
'package:flutter/src/painting/image_resolution.dart@AssetImage@hashCode': (m.Scope scope, AssetImage target)=>target.hashCode,
'package:flutter/src/painting/image_resolution.dart@AssetImage@': (m.Scope scope)=>( assetName, { bundle,  package}){
return AssetImage(assetName, bundle:bundle, package:package);
},
'package:flutter/src/painting/image_resolution.dart@AssetImage@obtainKey': (m.Scope scope, AssetImage target)=>target.obtainKey,
'package:flutter/src/painting/image_resolution.dart@AssetImage@==': (m.Scope scope, AssetImage target)=>(other)=> target == other,
'package:flutter/src/painting/image_resolution.dart@AssetImage@toString': (m.Scope scope, AssetImage target)=>target.toString,

};
}