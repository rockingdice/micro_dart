import 'package:flutter/src/widgets/texture.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/texture.dart@Texture@#as': (m.Scope scope, target)=>()=>target as Texture,
'package:flutter/src/widgets/texture.dart@Texture@#is': (m.Scope scope, target)=>()=>target is Texture,
'package:flutter/src/widgets/texture.dart@Texture@textureId': (m.Scope scope, Texture target)=>target.textureId,
'package:flutter/src/widgets/texture.dart@Texture@freeze': (m.Scope scope, Texture target)=>target.freeze,
'package:flutter/src/widgets/texture.dart@Texture@filterQuality': (m.Scope scope, Texture target)=>target.filterQuality,
'package:flutter/src/widgets/texture.dart@Texture@': (m.Scope scope)=>Texture,
'package:flutter/src/widgets/texture.dart@Texture@createRenderObject': (m.Scope scope, Texture target)=>target.createRenderObject,
'package:flutter/src/widgets/texture.dart@Texture@updateRenderObject': (m.Scope scope, Texture target)=>target.updateRenderObject,

};
}