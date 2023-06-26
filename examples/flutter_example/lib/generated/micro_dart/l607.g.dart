import 'package:flutter/src/painting/shape_decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/box_border.dart';
import 'package:flutter/src/painting/box_decoration.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@#as': (m.Scope scope, target)=>()=>target as ShapeDecoration,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@#is': (m.Scope scope, target)=>()=>target is ShapeDecoration,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@color': (m.Scope scope, ShapeDecoration target)=>target.color,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@gradient': (m.Scope scope, ShapeDecoration target)=>target.gradient,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@image': (m.Scope scope, ShapeDecoration target)=>target.image,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@shadows': (m.Scope scope, ShapeDecoration target)=>target.shadows,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@shape': (m.Scope scope, ShapeDecoration target)=>target.shape,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@padding': (m.Scope scope, ShapeDecoration target)=>target.padding,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@isComplex': (m.Scope scope, ShapeDecoration target)=>target.isComplex,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@hashCode': (m.Scope scope, ShapeDecoration target)=>target.hashCode,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@': (m.Scope scope)=>ShapeDecoration,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@fromBoxDecoration': (m.Scope scope)=>ShapeDecoration.fromBoxDecoration,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@getClipPath': (m.Scope scope, ShapeDecoration target)=>target.getClipPath,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@lerpFrom': (m.Scope scope, ShapeDecoration target)=>target.lerpFrom,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@lerpTo': (m.Scope scope, ShapeDecoration target)=>target.lerpTo,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@lerp': (m.Scope scope)=>ShapeDecoration.lerp,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@==': (m.Scope scope, ShapeDecoration target)=>(other)=> target == other,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@debugFillProperties': (m.Scope scope, ShapeDecoration target)=>target.debugFillProperties,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@hitTest': (m.Scope scope, ShapeDecoration target)=>target.hitTest,
'package:flutter/src/painting/shape_decoration.dart@ShapeDecoration@createBoxPainter': (m.Scope scope, ShapeDecoration target)=>([m.FunctionPointer? onChanged]){
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