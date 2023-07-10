import 'package:flutter/src/painting/flutter_logo.dart';
import 'dart:math';
import 'dart:ui' show Gradient,TextBox,lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@#as': (m.Scope scope, target)=>()=>target as FlutterLogoDecoration,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@#is': (m.Scope scope, target)=>()=>target is FlutterLogoDecoration,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@textColor': (m.Scope scope, FlutterLogoDecoration target)=>target.textColor,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@style': (m.Scope scope, FlutterLogoDecoration target)=>target.style,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@margin': (m.Scope scope, FlutterLogoDecoration target)=>target.margin,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@isComplex': (m.Scope scope, FlutterLogoDecoration target)=>target.isComplex,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@hashCode': (m.Scope scope, FlutterLogoDecoration target)=>target.hashCode,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@': (m.Scope scope)=>({ margin,  style,  textColor}){
return FlutterLogoDecoration(margin:margin ?? EdgeInsets.zero, style:style ?? FlutterLogoStyle.markOnly, textColor:textColor ?? const Color(0xFF757575));
},
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@debugAssertIsValid': (m.Scope scope, FlutterLogoDecoration target)=>target.debugAssertIsValid,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@lerp': (m.Scope scope)=>FlutterLogoDecoration.lerp,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@lerpFrom': (m.Scope scope, FlutterLogoDecoration target)=>target.lerpFrom,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@lerpTo': (m.Scope scope, FlutterLogoDecoration target)=>target.lerpTo,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@hitTest': (m.Scope scope, FlutterLogoDecoration target)=>target.hitTest,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@createBoxPainter': (m.Scope scope, FlutterLogoDecoration target)=>([m.FunctionPointer? onChanged]){
if(onChanged == null){
return target.createBoxPainter();
}
void onChangedProxy() {
 engine.callFunctionPointer(scope, onChanged!,[], {});
}

return target.createBoxPainter(onChangedProxy);
},
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@getClipPath': (m.Scope scope, FlutterLogoDecoration target)=>target.getClipPath,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@==': (m.Scope scope, FlutterLogoDecoration target)=>(other)=> target == other,
'package:flutter/src/painting/flutter_logo.dart@FlutterLogoDecoration@debugFillProperties': (m.Scope scope, FlutterLogoDecoration target)=>target.debugFillProperties,

};
}