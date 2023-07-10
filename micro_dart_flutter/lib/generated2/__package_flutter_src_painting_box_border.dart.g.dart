import 'package:flutter/src/painting/box_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/box_border.dart@BoxBorder@#as': (m.Scope scope, target)=>()=>target as BoxBorder,
'package:flutter/src/painting/box_border.dart@BoxBorder@#is': (m.Scope scope, target)=>()=>target is BoxBorder,
'package:flutter/src/painting/box_border.dart@BoxBorder@top': (m.Scope scope, BoxBorder target)=>target.top,
'package:flutter/src/painting/box_border.dart@BoxBorder@bottom': (m.Scope scope, BoxBorder target)=>target.bottom,
'package:flutter/src/painting/box_border.dart@BoxBorder@isUniform': (m.Scope scope, BoxBorder target)=>target.isUniform,
'package:flutter/src/painting/box_border.dart@BoxBorder@preferPaintInterior': (m.Scope scope, BoxBorder target)=>target.preferPaintInterior,
'package:flutter/src/painting/box_border.dart@BoxBorder@add': (m.Scope scope, BoxBorder target)=>target.add,
'package:flutter/src/painting/box_border.dart@BoxBorder@lerp': (m.Scope scope)=>BoxBorder.lerp,
'package:flutter/src/painting/box_border.dart@BoxBorder@getInnerPath': (m.Scope scope, BoxBorder target)=>target.getInnerPath,
'package:flutter/src/painting/box_border.dart@BoxBorder@getOuterPath': (m.Scope scope, BoxBorder target)=>target.getOuterPath,
'package:flutter/src/painting/box_border.dart@BoxBorder@paintInterior': (m.Scope scope, BoxBorder target)=>target.paintInterior,
'package:flutter/src/painting/box_border.dart@BoxBorder@paint': (m.Scope scope, BoxBorder target)=>target.paint,
'package:flutter/src/painting/box_border.dart@Border@#as': (m.Scope scope, target)=>()=>target as Border,
'package:flutter/src/painting/box_border.dart@Border@#is': (m.Scope scope, target)=>()=>target is Border,
'package:flutter/src/painting/box_border.dart@Border@top': (m.Scope scope, Border target)=>target.top,
'package:flutter/src/painting/box_border.dart@Border@right': (m.Scope scope, Border target)=>target.right,
'package:flutter/src/painting/box_border.dart@Border@bottom': (m.Scope scope, Border target)=>target.bottom,
'package:flutter/src/painting/box_border.dart@Border@left': (m.Scope scope, Border target)=>target.left,
'package:flutter/src/painting/box_border.dart@Border@dimensions': (m.Scope scope, Border target)=>target.dimensions,
'package:flutter/src/painting/box_border.dart@Border@isUniform': (m.Scope scope, Border target)=>target.isUniform,
'package:flutter/src/painting/box_border.dart@Border@hashCode': (m.Scope scope, Border target)=>target.hashCode,
'package:flutter/src/painting/box_border.dart@Border@': (m.Scope scope)=>({ bottom,  left,  right,  top}){
return Border(bottom:bottom ?? BorderSide.none, left:left ?? BorderSide.none, right:right ?? BorderSide.none, top:top ?? BorderSide.none);
},
'package:flutter/src/painting/box_border.dart@Border@fromBorderSide': (m.Scope scope)=>Border.fromBorderSide,
'package:flutter/src/painting/box_border.dart@Border@symmetric': (m.Scope scope)=>Border.symmetric,
'package:flutter/src/painting/box_border.dart@Border@all': (m.Scope scope)=>Border.all,
'package:flutter/src/painting/box_border.dart@Border@merge': (m.Scope scope)=>Border.merge,
'package:flutter/src/painting/box_border.dart@Border@add': (m.Scope scope, Border target)=>target.add,
'package:flutter/src/painting/box_border.dart@Border@scale': (m.Scope scope, Border target)=>target.scale,
'package:flutter/src/painting/box_border.dart@Border@lerpFrom': (m.Scope scope, Border target)=>target.lerpFrom,
'package:flutter/src/painting/box_border.dart@Border@lerpTo': (m.Scope scope, Border target)=>target.lerpTo,
'package:flutter/src/painting/box_border.dart@Border@lerp': (m.Scope scope)=>Border.lerp,
'package:flutter/src/painting/box_border.dart@Border@paint': (m.Scope scope, Border target)=>target.paint,
'package:flutter/src/painting/box_border.dart@Border@==': (m.Scope scope, Border target)=>(other)=> target == other,
'package:flutter/src/painting/box_border.dart@Border@toString': (m.Scope scope, Border target)=>target.toString,
'package:flutter/src/painting/box_border.dart@BorderDirectional@#as': (m.Scope scope, target)=>()=>target as BorderDirectional,
'package:flutter/src/painting/box_border.dart@BorderDirectional@#is': (m.Scope scope, target)=>()=>target is BorderDirectional,
'package:flutter/src/painting/box_border.dart@BorderDirectional@top': (m.Scope scope, BorderDirectional target)=>target.top,
'package:flutter/src/painting/box_border.dart@BorderDirectional@start': (m.Scope scope, BorderDirectional target)=>target.start,
'package:flutter/src/painting/box_border.dart@BorderDirectional@end': (m.Scope scope, BorderDirectional target)=>target.end,
'package:flutter/src/painting/box_border.dart@BorderDirectional@bottom': (m.Scope scope, BorderDirectional target)=>target.bottom,
'package:flutter/src/painting/box_border.dart@BorderDirectional@dimensions': (m.Scope scope, BorderDirectional target)=>target.dimensions,
'package:flutter/src/painting/box_border.dart@BorderDirectional@isUniform': (m.Scope scope, BorderDirectional target)=>target.isUniform,
'package:flutter/src/painting/box_border.dart@BorderDirectional@hashCode': (m.Scope scope, BorderDirectional target)=>target.hashCode,
'package:flutter/src/painting/box_border.dart@BorderDirectional@': (m.Scope scope)=>({ bottom,  end,  start,  top}){
return BorderDirectional(bottom:bottom ?? BorderSide.none, end:end ?? BorderSide.none, start:start ?? BorderSide.none, top:top ?? BorderSide.none);
},
'package:flutter/src/painting/box_border.dart@BorderDirectional@merge': (m.Scope scope)=>BorderDirectional.merge,
'package:flutter/src/painting/box_border.dart@BorderDirectional@add': (m.Scope scope, BorderDirectional target)=>target.add,
'package:flutter/src/painting/box_border.dart@BorderDirectional@scale': (m.Scope scope, BorderDirectional target)=>target.scale,
'package:flutter/src/painting/box_border.dart@BorderDirectional@lerpFrom': (m.Scope scope, BorderDirectional target)=>target.lerpFrom,
'package:flutter/src/painting/box_border.dart@BorderDirectional@lerpTo': (m.Scope scope, BorderDirectional target)=>target.lerpTo,
'package:flutter/src/painting/box_border.dart@BorderDirectional@lerp': (m.Scope scope)=>BorderDirectional.lerp,
'package:flutter/src/painting/box_border.dart@BorderDirectional@paint': (m.Scope scope, BorderDirectional target)=>target.paint,
'package:flutter/src/painting/box_border.dart@BorderDirectional@==': (m.Scope scope, BorderDirectional target)=>(other)=> target == other,
'package:flutter/src/painting/box_border.dart@BorderDirectional@toString': (m.Scope scope, BorderDirectional target)=>target.toString,

};
}