import 'package:flutter/src/rendering/layout_helper.dart';
import 'dart:ui';
import 'package:flutter/src/rendering/box.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/layout_helper.dart@ChildLayoutHelper@#as': (m.Scope scope, target)=>()=>target as ChildLayoutHelper,
'package:flutter/src/rendering/layout_helper.dart@ChildLayoutHelper@#is': (m.Scope scope, target)=>()=>target is ChildLayoutHelper,
'package:flutter/src/rendering/layout_helper.dart@ChildLayoutHelper@dryLayoutChild': (m.Scope scope)=>ChildLayoutHelper.dryLayoutChild,
'package:flutter/src/rendering/layout_helper.dart@ChildLayoutHelper@layoutChild': (m.Scope scope)=>ChildLayoutHelper.layoutChild,

};
}