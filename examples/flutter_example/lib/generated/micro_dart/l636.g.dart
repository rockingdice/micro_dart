import 'package:material_color_utilities/quantize/point_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/point_provider.dart@PointProvider@#as': (m.Scope scope, target)=>()=>target as PointProvider,
'package:material_color_utilities/quantize/point_provider.dart@PointProvider@#is': (m.Scope scope, target)=>()=>target is PointProvider,
'package:material_color_utilities/quantize/point_provider.dart@PointProvider@fromInt': (m.Scope scope, PointProvider target)=>target.fromInt,
'package:material_color_utilities/quantize/point_provider.dart@PointProvider@toInt': (m.Scope scope, PointProvider target)=>target.toInt,
'package:material_color_utilities/quantize/point_provider.dart@PointProvider@distance': (m.Scope scope, PointProvider target)=>target.distance,

};
}