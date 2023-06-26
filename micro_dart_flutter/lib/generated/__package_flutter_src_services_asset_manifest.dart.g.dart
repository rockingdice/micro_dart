import 'package:flutter/src/services/asset_manifest.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/asset_manifest.dart@AssetManifest@#as': (m.Scope scope, target)=>()=>target as AssetManifest,
'package:flutter/src/services/asset_manifest.dart@AssetManifest@#is': (m.Scope scope, target)=>()=>target is AssetManifest,
'package:flutter/src/services/asset_manifest.dart@AssetManifest@loadFromAssetBundle': (m.Scope scope)=>AssetManifest.loadFromAssetBundle,
'package:flutter/src/services/asset_manifest.dart@AssetManifest@listAssets': (m.Scope scope, AssetManifest target)=>target.listAssets,
'package:flutter/src/services/asset_manifest.dart@AssetManifest@getAssetVariants': (m.Scope scope, AssetManifest target)=>target.getAssetVariants,
'package:flutter/src/services/asset_manifest.dart@AssetMetadata@#as': (m.Scope scope, target)=>()=>target as AssetMetadata,
'package:flutter/src/services/asset_manifest.dart@AssetMetadata@#is': (m.Scope scope, target)=>()=>target is AssetMetadata,
'package:flutter/src/services/asset_manifest.dart@AssetMetadata@targetDevicePixelRatio': (m.Scope scope, AssetMetadata target)=>target.targetDevicePixelRatio,
'package:flutter/src/services/asset_manifest.dart@AssetMetadata@key': (m.Scope scope, AssetMetadata target)=>target.key,
'package:flutter/src/services/asset_manifest.dart@AssetMetadata@main': (m.Scope scope, AssetMetadata target)=>target.main,
'package:flutter/src/services/asset_manifest.dart@AssetMetadata@': (m.Scope scope)=>AssetMetadata,

};
}