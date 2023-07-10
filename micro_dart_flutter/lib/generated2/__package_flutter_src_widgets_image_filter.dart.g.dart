import 'package:flutter/src/widgets/image_filter.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@#as': (m.Scope scope, target)=>()=>target as ImageFiltered,
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@#is': (m.Scope scope, target)=>()=>target is ImageFiltered,
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@imageFilter': (m.Scope scope, ImageFiltered target)=>target.imageFilter,
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@enabled': (m.Scope scope, ImageFiltered target)=>target.enabled,
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@': (m.Scope scope)=>({ child,  enabled,  imageFilter,  key}){
return ImageFiltered(child:child, enabled:enabled ?? true, imageFilter:imageFilter, key:key);
},
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@createRenderObject': (m.Scope scope, ImageFiltered target)=>target.createRenderObject,
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@updateRenderObject': (m.Scope scope, ImageFiltered target)=>target.updateRenderObject,
'package:flutter/src/widgets/image_filter.dart@ImageFiltered@debugFillProperties': (m.Scope scope, ImageFiltered target)=>target.debugFillProperties,

};
}