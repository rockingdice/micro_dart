import 'package:flutter/src/painting/box_decoration.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/box_border.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@#as': (m.Scope scope, target)=>()=>target as BoxDecoration,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@#is': (m.Scope scope, target)=>()=>target is BoxDecoration,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@color': (m.Scope scope, BoxDecoration target)=>target.color,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@image': (m.Scope scope, BoxDecoration target)=>target.image,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@border': (m.Scope scope, BoxDecoration target)=>target.border,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@borderRadius': (m.Scope scope, BoxDecoration target)=>target.borderRadius,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@boxShadow': (m.Scope scope, BoxDecoration target)=>target.boxShadow,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@gradient': (m.Scope scope, BoxDecoration target)=>target.gradient,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@backgroundBlendMode': (m.Scope scope, BoxDecoration target)=>target.backgroundBlendMode,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@shape': (m.Scope scope, BoxDecoration target)=>target.shape,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@padding': (m.Scope scope, BoxDecoration target)=>target.padding,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@isComplex': (m.Scope scope, BoxDecoration target)=>target.isComplex,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@hashCode': (m.Scope scope, BoxDecoration target)=>target.hashCode,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@': (m.Scope scope)=>({ backgroundBlendMode,  border,  borderRadius,  boxShadow,  color,  gradient,  image,  shape}){
return BoxDecoration(backgroundBlendMode:backgroundBlendMode, border:border, borderRadius:borderRadius, boxShadow:boxShadow, color:color, gradient:gradient, image:image, shape:shape ?? BoxShape.rectangle);
},
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@copyWith': (m.Scope scope, BoxDecoration target)=>target.copyWith,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@debugAssertIsValid': (m.Scope scope, BoxDecoration target)=>target.debugAssertIsValid,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@getClipPath': (m.Scope scope, BoxDecoration target)=>target.getClipPath,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@scale': (m.Scope scope, BoxDecoration target)=>target.scale,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@lerpFrom': (m.Scope scope, BoxDecoration target)=>target.lerpFrom,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@lerpTo': (m.Scope scope, BoxDecoration target)=>target.lerpTo,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@lerp': (m.Scope scope)=>BoxDecoration.lerp,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@==': (m.Scope scope, BoxDecoration target)=>(other)=> target == other,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@debugFillProperties': (m.Scope scope, BoxDecoration target)=>target.debugFillProperties,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@hitTest': (m.Scope scope, BoxDecoration target)=>target.hitTest,
'package:flutter/src/painting/box_decoration.dart@BoxDecoration@createBoxPainter': (m.Scope scope, BoxDecoration target)=>([m.FunctionPointer? onChanged]){
if(onChanged == null){
return target.createBoxPainter();
}
void onChangedProxy() {
 engine.callFunctionPointer(scope, onChanged!,[], {});
}

return target.createBoxPainter(onChangedProxy);
},

};
}