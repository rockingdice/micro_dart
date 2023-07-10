import 'package:material_color_utilities/quantize/point_provider_lab.dart';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/quantize/point_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/point_provider_lab.dart@PointProviderLab@#as': (m.Scope scope, target)=>()=>target as PointProviderLab,
'package:material_color_utilities/quantize/point_provider_lab.dart@PointProviderLab@#is': (m.Scope scope, target)=>()=>target is PointProviderLab,
'package:material_color_utilities/quantize/point_provider_lab.dart@PointProviderLab@': (m.Scope scope)=>(){
return PointProviderLab();
},
'package:material_color_utilities/quantize/point_provider_lab.dart@PointProviderLab@fromInt': (m.Scope scope, PointProviderLab target)=>target.fromInt,
'package:material_color_utilities/quantize/point_provider_lab.dart@PointProviderLab@toInt': (m.Scope scope, PointProviderLab target)=>target.toInt,
'package:material_color_utilities/quantize/point_provider_lab.dart@PointProviderLab@distance': (m.Scope scope, PointProviderLab target)=>target.distance,

};
}