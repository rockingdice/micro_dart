import 'package:flutter/src/widgets/overflow_bar.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@#as': (m.Scope scope, target)=>()=>target as OverflowBar,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@#is': (m.Scope scope, target)=>()=>target is OverflowBar,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@spacing': (m.Scope scope, OverflowBar target)=>target.spacing,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@alignment': (m.Scope scope, OverflowBar target)=>target.alignment,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@overflowSpacing': (m.Scope scope, OverflowBar target)=>target.overflowSpacing,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@overflowAlignment': (m.Scope scope, OverflowBar target)=>target.overflowAlignment,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@overflowDirection': (m.Scope scope, OverflowBar target)=>target.overflowDirection,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@textDirection': (m.Scope scope, OverflowBar target)=>target.textDirection,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@clipBehavior': (m.Scope scope, OverflowBar target)=>target.clipBehavior,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@': (m.Scope scope)=>({ alignment,  children,  clipBehavior,  key,  overflowAlignment,  overflowDirection,  overflowSpacing,  spacing,  textDirection}){
return OverflowBar(alignment:alignment, children:children ?? const <Widget>[], clipBehavior:clipBehavior ?? Clip.none, key:key, overflowAlignment:overflowAlignment ?? OverflowBarAlignment.start, overflowDirection:overflowDirection ?? VerticalDirection.down, overflowSpacing:overflowSpacing ?? 0.0, spacing:spacing ?? 0.0, textDirection:textDirection);
},
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@createRenderObject': (m.Scope scope, OverflowBar target)=>target.createRenderObject,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@updateRenderObject': (m.Scope scope, OverflowBar target)=>target.updateRenderObject,
'package:flutter/src/widgets/overflow_bar.dart@OverflowBar@debugFillProperties': (m.Scope scope, OverflowBar target)=>target.debugFillProperties,

};
}