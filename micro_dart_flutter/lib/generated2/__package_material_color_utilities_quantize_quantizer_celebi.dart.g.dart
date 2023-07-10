import 'package:material_color_utilities/quantize/quantizer_celebi.dart';
import 'package:material_color_utilities/quantize/point_provider_lab.dart';
import 'package:material_color_utilities/quantize/quantizer.dart';
import 'package:material_color_utilities/quantize/quantizer_wsmeans.dart';
import 'package:material_color_utilities/quantize/quantizer_wu.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/quantizer_celebi.dart@QuantizerCelebi@#as': (m.Scope scope, target)=>()=>target as QuantizerCelebi,
'package:material_color_utilities/quantize/quantizer_celebi.dart@QuantizerCelebi@#is': (m.Scope scope, target)=>()=>target is QuantizerCelebi,
'package:material_color_utilities/quantize/quantizer_celebi.dart@QuantizerCelebi@': (m.Scope scope)=>(){
return QuantizerCelebi();
},
'package:material_color_utilities/quantize/quantizer_celebi.dart@QuantizerCelebi@quantize': (m.Scope scope, QuantizerCelebi target)=>target.quantize,

};
}