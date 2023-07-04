import 'package:material_color_utilities/quantize/quantizer_map.dart';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/quantize/quantizer.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/quantizer_map.dart@QuantizerMap@#as': (m.Scope scope, target)=>()=>target as QuantizerMap,
'package:material_color_utilities/quantize/quantizer_map.dart@QuantizerMap@#is': (m.Scope scope, target)=>()=>target is QuantizerMap,
'package:material_color_utilities/quantize/quantizer_map.dart@QuantizerMap@': (m.Scope scope)=>(){
return QuantizerMap();
},
'package:material_color_utilities/quantize/quantizer_map.dart@QuantizerMap@quantize': (m.Scope scope, QuantizerMap target)=>target.quantize,

};
}