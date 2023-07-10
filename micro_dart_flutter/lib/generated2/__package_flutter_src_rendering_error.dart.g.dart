import 'package:flutter/src/rendering/error.dart';
import 'dart:ui' show Paragraph,ParagraphBuilder,ParagraphConstraints,ParagraphStyle,TextStyle;
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/error.dart@RenderErrorBox@#as': (m.Scope scope, target)=>()=>target as RenderErrorBox,
'package:flutter/src/rendering/error.dart@RenderErrorBox@#is': (m.Scope scope, target)=>()=>target is RenderErrorBox,
'package:flutter/src/rendering/error.dart@RenderErrorBox@message': (m.Scope scope, RenderErrorBox target)=>target.message,
'package:flutter/src/rendering/error.dart@RenderErrorBox@padding': (m.Scope scope)=>RenderErrorBox.padding,
'package:flutter/src/rendering/error.dart@RenderErrorBox@padding:set': (m.Scope scope)=>(other)=>RenderErrorBox.padding=other,
'package:flutter/src/rendering/error.dart@RenderErrorBox@minimumWidth': (m.Scope scope)=>RenderErrorBox.minimumWidth,
'package:flutter/src/rendering/error.dart@RenderErrorBox@minimumWidth:set': (m.Scope scope)=>(other)=>RenderErrorBox.minimumWidth=other,
'package:flutter/src/rendering/error.dart@RenderErrorBox@backgroundColor': (m.Scope scope)=>RenderErrorBox.backgroundColor,
'package:flutter/src/rendering/error.dart@RenderErrorBox@backgroundColor:set': (m.Scope scope)=>(other)=>RenderErrorBox.backgroundColor=other,
'package:flutter/src/rendering/error.dart@RenderErrorBox@textStyle': (m.Scope scope)=>RenderErrorBox.textStyle,
'package:flutter/src/rendering/error.dart@RenderErrorBox@textStyle:set': (m.Scope scope)=>(other)=>RenderErrorBox.textStyle=other,
'package:flutter/src/rendering/error.dart@RenderErrorBox@paragraphStyle': (m.Scope scope)=>RenderErrorBox.paragraphStyle,
'package:flutter/src/rendering/error.dart@RenderErrorBox@paragraphStyle:set': (m.Scope scope)=>(other)=>RenderErrorBox.paragraphStyle=other,
'package:flutter/src/rendering/error.dart@RenderErrorBox@sizedByParent': (m.Scope scope, RenderErrorBox target)=>target.sizedByParent,
'package:flutter/src/rendering/error.dart@RenderErrorBox@': (m.Scope scope)=>([String? message]){
if(message == null){
return RenderErrorBox();
}
return RenderErrorBox(message!);
},
'package:flutter/src/rendering/error.dart@RenderErrorBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderErrorBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/error.dart@RenderErrorBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderErrorBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/error.dart@RenderErrorBox@hitTestSelf': (m.Scope scope, RenderErrorBox target)=>target.hitTestSelf,
'package:flutter/src/rendering/error.dart@RenderErrorBox@computeDryLayout': (m.Scope scope, RenderErrorBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/error.dart@RenderErrorBox@paint': (m.Scope scope, RenderErrorBox target)=>target.paint,

};
}