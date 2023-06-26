import 'package:flutter/src/rendering/texture.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/texture.dart@TextureBox@#as': (m.Scope scope, target)=>()=>target as TextureBox,
'package:flutter/src/rendering/texture.dart@TextureBox@#is': (m.Scope scope, target)=>()=>target is TextureBox,
'package:flutter/src/rendering/texture.dart@TextureBox@textureId': (m.Scope scope, TextureBox target)=>target.textureId,
'package:flutter/src/rendering/texture.dart@TextureBox@textureId:set': (m.Scope scope, TextureBox target)=>(other)=>target.textureId=other,
'package:flutter/src/rendering/texture.dart@TextureBox@freeze': (m.Scope scope, TextureBox target)=>target.freeze,
'package:flutter/src/rendering/texture.dart@TextureBox@freeze:set': (m.Scope scope, TextureBox target)=>(other)=>target.freeze=other,
'package:flutter/src/rendering/texture.dart@TextureBox@filterQuality': (m.Scope scope, TextureBox target)=>target.filterQuality,
'package:flutter/src/rendering/texture.dart@TextureBox@filterQuality:set': (m.Scope scope, TextureBox target)=>(other)=>target.filterQuality=other,
'package:flutter/src/rendering/texture.dart@TextureBox@sizedByParent': (m.Scope scope, TextureBox target)=>target.sizedByParent,
'package:flutter/src/rendering/texture.dart@TextureBox@alwaysNeedsCompositing': (m.Scope scope, TextureBox target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/texture.dart@TextureBox@isRepaintBoundary': (m.Scope scope, TextureBox target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/texture.dart@TextureBox@': (m.Scope scope)=>TextureBox,
'package:flutter/src/rendering/texture.dart@TextureBox@computeDryLayout': (m.Scope scope, TextureBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/texture.dart@TextureBox@hitTestSelf': (m.Scope scope, TextureBox target)=>target.hitTestSelf,
'package:flutter/src/rendering/texture.dart@TextureBox@paint': (m.Scope scope, TextureBox target)=>target.paint,

};
}