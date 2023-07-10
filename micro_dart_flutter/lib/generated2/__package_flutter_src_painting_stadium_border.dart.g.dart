import 'package:flutter/src/painting/stadium_border.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/circle_border.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@#as': (m.Scope scope, target)=>()=>target as StadiumBorder,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@#is': (m.Scope scope, target)=>()=>target is StadiumBorder,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@preferPaintInterior': (m.Scope scope, StadiumBorder target)=>target.preferPaintInterior,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@hashCode': (m.Scope scope, StadiumBorder target)=>target.hashCode,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@': (m.Scope scope)=>({ side}){
return StadiumBorder(side:side ?? BorderSide.none);
},
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@scale': (m.Scope scope, StadiumBorder target)=>target.scale,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@lerpFrom': (m.Scope scope, StadiumBorder target)=>target.lerpFrom,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@lerpTo': (m.Scope scope, StadiumBorder target)=>target.lerpTo,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@copyWith': (m.Scope scope, StadiumBorder target)=>target.copyWith,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@getInnerPath': (m.Scope scope, StadiumBorder target)=>target.getInnerPath,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@getOuterPath': (m.Scope scope, StadiumBorder target)=>target.getOuterPath,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@paintInterior': (m.Scope scope, StadiumBorder target)=>target.paintInterior,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@paint': (m.Scope scope, StadiumBorder target)=>target.paint,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@==': (m.Scope scope, StadiumBorder target)=>(other)=> target == other,
'package:flutter/src/painting/stadium_border.dart@StadiumBorder@toString': (m.Scope scope, StadiumBorder target)=>target.toString,

};
}