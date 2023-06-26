import 'package:material_color_utilities/quantize/quantizer_wsmeans.dart';
import 'dart:math' show Random,min;
import 'package:material_color_utilities/quantize/point_provider.dart';
import 'package:material_color_utilities/quantize/point_provider_lab.dart';
import 'package:material_color_utilities/quantize/quantizer.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@#as': (m.Scope scope, target)=>()=>target as DistanceAndIndex,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@#is': (m.Scope scope, target)=>()=>target is DistanceAndIndex,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@distance': (m.Scope scope, DistanceAndIndex target)=>target.distance,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@distance:set': (m.Scope scope, DistanceAndIndex target)=>(other)=>target.distance=other,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@index': (m.Scope scope, DistanceAndIndex target)=>target.index,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@index:set': (m.Scope scope, DistanceAndIndex target)=>(other)=>target.index=other,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@': (m.Scope scope)=>DistanceAndIndex,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@DistanceAndIndex@compareTo': (m.Scope scope, DistanceAndIndex target)=>target.compareTo,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@QuantizerWsmeans@#as': (m.Scope scope, target)=>()=>target as QuantizerWsmeans,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@QuantizerWsmeans@#is': (m.Scope scope, target)=>()=>target is QuantizerWsmeans,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@QuantizerWsmeans@debug': (m.Scope scope)=>QuantizerWsmeans.debug,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@QuantizerWsmeans@': (m.Scope scope)=>(){
return QuantizerWsmeans();
},
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@QuantizerWsmeans@debugLog': (m.Scope scope)=>QuantizerWsmeans.debugLog,
'package:material_color_utilities/quantize/quantizer_wsmeans.dart@QuantizerWsmeans@quantize': (m.Scope scope)=>QuantizerWsmeans.quantize,

};
}