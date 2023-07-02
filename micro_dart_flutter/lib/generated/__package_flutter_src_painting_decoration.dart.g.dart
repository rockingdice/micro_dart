import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/decoration.dart@Decoration@#as': (m.Scope scope, target)=>()=>target as Decoration,
'package:flutter/src/painting/decoration.dart@Decoration@#is': (m.Scope scope, target)=>()=>target is Decoration,
'package:flutter/src/painting/decoration.dart@Decoration@padding': (m.Scope scope, Decoration target)=>target.padding,
'package:flutter/src/painting/decoration.dart@Decoration@isComplex': (m.Scope scope, Decoration target)=>target.isComplex,
'package:flutter/src/painting/decoration.dart@Decoration@toStringShort': (m.Scope scope, Decoration target)=>target.toStringShort,
'package:flutter/src/painting/decoration.dart@Decoration@debugAssertIsValid': (m.Scope scope, Decoration target)=>target.debugAssertIsValid,
'package:flutter/src/painting/decoration.dart@Decoration@lerpFrom': (m.Scope scope, Decoration target)=>target.lerpFrom,
'package:flutter/src/painting/decoration.dart@Decoration@lerpTo': (m.Scope scope, Decoration target)=>target.lerpTo,
'package:flutter/src/painting/decoration.dart@Decoration@lerp': (m.Scope scope)=>Decoration.lerp,
'package:flutter/src/painting/decoration.dart@Decoration@hitTest': (m.Scope scope, Decoration target)=>target.hitTest,
'package:flutter/src/painting/decoration.dart@Decoration@createBoxPainter': (m.Scope scope, Decoration target)=>([m.FunctionPointer? onChanged]){
if(onChanged == null){
return target.createBoxPainter();
}
void onChangedProxy() {
 engine.callFunctionPointer(scope, onChanged!,[], {});
}

return target.createBoxPainter(onChangedProxy);
},
'package:flutter/src/painting/decoration.dart@Decoration@getClipPath': (m.Scope scope, Decoration target)=>target.getClipPath,
'package:flutter/src/painting/decoration.dart@BoxPainter@#as': (m.Scope scope, target)=>()=>target as BoxPainter,
'package:flutter/src/painting/decoration.dart@BoxPainter@#is': (m.Scope scope, target)=>()=>target is BoxPainter,
'package:flutter/src/painting/decoration.dart@BoxPainter@onChanged': (m.Scope scope, BoxPainter target)=>target.onChanged,
'package:flutter/src/painting/decoration.dart@BoxPainter@paint': (m.Scope scope, BoxPainter target)=>target.paint,
'package:flutter/src/painting/decoration.dart@BoxPainter@dispose': (m.Scope scope, BoxPainter target)=>target.dispose,

};
}