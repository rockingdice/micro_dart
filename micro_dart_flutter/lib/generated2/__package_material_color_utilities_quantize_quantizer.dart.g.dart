import 'package:material_color_utilities/quantize/quantizer.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/quantizer.dart@Quantizer@#as': (m.Scope scope, target)=>()=>target as Quantizer,
'package:material_color_utilities/quantize/quantizer.dart@Quantizer@#is': (m.Scope scope, target)=>()=>target is Quantizer,
'package:material_color_utilities/quantize/quantizer.dart@Quantizer@quantize': (m.Scope scope, Quantizer target)=>target.quantize,
'package:material_color_utilities/quantize/quantizer.dart@QuantizerResult@#as': (m.Scope scope, target)=>()=>target as QuantizerResult,
'package:material_color_utilities/quantize/quantizer.dart@QuantizerResult@#is': (m.Scope scope, target)=>()=>target is QuantizerResult,
'package:material_color_utilities/quantize/quantizer.dart@QuantizerResult@colorToCount': (m.Scope scope, QuantizerResult target)=>target.colorToCount,
'package:material_color_utilities/quantize/quantizer.dart@QuantizerResult@inputPixelToClusterPixel': (m.Scope scope, QuantizerResult target)=>target.inputPixelToClusterPixel,
'package:material_color_utilities/quantize/quantizer.dart@QuantizerResult@': (m.Scope scope)=>( colorToCount, { inputPixelToClusterPixel}){
return QuantizerResult(colorToCount, inputPixelToClusterPixel:inputPixelToClusterPixel ?? const {});
},

};
}