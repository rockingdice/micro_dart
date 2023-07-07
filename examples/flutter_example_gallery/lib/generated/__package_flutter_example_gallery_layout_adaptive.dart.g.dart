import 'package:flutter_example_gallery/layout/adaptive.dart';
import 'package:dual_screen/dual_screen.dart';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example_gallery/layout/adaptive.dart@@maxHomeItemWidth': (m.Scope scope)=>maxHomeItemWidth,
'package:flutter_example_gallery/layout/adaptive.dart@@isDisplayDesktop': (m.Scope scope)=>isDisplayDesktop,
'package:flutter_example_gallery/layout/adaptive.dart@@isDisplaySmallDesktop': (m.Scope scope)=>isDisplaySmallDesktop,
'package:flutter_example_gallery/layout/adaptive.dart@@isDisplayFoldable': (m.Scope scope)=>isDisplayFoldable,

};
}