import 'package:flutter/src/rendering/table_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart' hide Border;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/table_border.dart@TableBorder@#as': (m.Scope scope, target)=>()=>target as TableBorder,
'package:flutter/src/rendering/table_border.dart@TableBorder@#is': (m.Scope scope, target)=>()=>target is TableBorder,
'package:flutter/src/rendering/table_border.dart@TableBorder@top': (m.Scope scope, TableBorder target)=>target.top,
'package:flutter/src/rendering/table_border.dart@TableBorder@right': (m.Scope scope, TableBorder target)=>target.right,
'package:flutter/src/rendering/table_border.dart@TableBorder@bottom': (m.Scope scope, TableBorder target)=>target.bottom,
'package:flutter/src/rendering/table_border.dart@TableBorder@left': (m.Scope scope, TableBorder target)=>target.left,
'package:flutter/src/rendering/table_border.dart@TableBorder@horizontalInside': (m.Scope scope, TableBorder target)=>target.horizontalInside,
'package:flutter/src/rendering/table_border.dart@TableBorder@verticalInside': (m.Scope scope, TableBorder target)=>target.verticalInside,
'package:flutter/src/rendering/table_border.dart@TableBorder@borderRadius': (m.Scope scope, TableBorder target)=>target.borderRadius,
'package:flutter/src/rendering/table_border.dart@TableBorder@dimensions': (m.Scope scope, TableBorder target)=>target.dimensions,
'package:flutter/src/rendering/table_border.dart@TableBorder@isUniform': (m.Scope scope, TableBorder target)=>target.isUniform,
'package:flutter/src/rendering/table_border.dart@TableBorder@hashCode': (m.Scope scope, TableBorder target)=>target.hashCode,
'package:flutter/src/rendering/table_border.dart@TableBorder@': (m.Scope scope)=>({ borderRadius,  bottom,  horizontalInside,  left,  right,  top,  verticalInside}){
return TableBorder(borderRadius:borderRadius ?? BorderRadius.zero, bottom:bottom ?? BorderSide.none, horizontalInside:horizontalInside ?? BorderSide.none, left:left ?? BorderSide.none, right:right ?? BorderSide.none, top:top ?? BorderSide.none, verticalInside:verticalInside ?? BorderSide.none);
},
'package:flutter/src/rendering/table_border.dart@TableBorder@all': (m.Scope scope)=>TableBorder.all,
'package:flutter/src/rendering/table_border.dart@TableBorder@symmetric': (m.Scope scope)=>TableBorder.symmetric,
'package:flutter/src/rendering/table_border.dart@TableBorder@scale': (m.Scope scope, TableBorder target)=>target.scale,
'package:flutter/src/rendering/table_border.dart@TableBorder@lerp': (m.Scope scope)=>TableBorder.lerp,
'package:flutter/src/rendering/table_border.dart@TableBorder@paint': (m.Scope scope, TableBorder target)=>target.paint,
'package:flutter/src/rendering/table_border.dart@TableBorder@==': (m.Scope scope, TableBorder target)=>(other)=> target == other,
'package:flutter/src/rendering/table_border.dart@TableBorder@toString': (m.Scope scope, TableBorder target)=>target.toString,

};
}