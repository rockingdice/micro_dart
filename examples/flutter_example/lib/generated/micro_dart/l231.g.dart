import 'package:flutter/src/widgets/color_filter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@#as': (m.Scope scope, target)=>()=>target as ColorFiltered,
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@#is': (m.Scope scope, target)=>()=>target is ColorFiltered,
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@colorFilter': (m.Scope scope, ColorFiltered target)=>target.colorFilter,
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@': (m.Scope scope)=>ColorFiltered,
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@createRenderObject': (m.Scope scope, ColorFiltered target)=>target.createRenderObject,
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@updateRenderObject': (m.Scope scope, ColorFiltered target)=>target.updateRenderObject,
'package:flutter/src/widgets/color_filter.dart@ColorFiltered@debugFillProperties': (m.Scope scope, ColorFiltered target)=>target.debugFillProperties,

};
}