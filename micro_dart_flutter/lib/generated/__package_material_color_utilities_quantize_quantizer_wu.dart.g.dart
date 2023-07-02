import 'package:material_color_utilities/quantize/quantizer_wu.dart';
import 'package:material_color_utilities/utils/color_utils.dart';
import 'package:material_color_utilities/quantize/quantizer.dart';
import 'package:material_color_utilities/quantize/quantizer_map.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@#as': (m.Scope scope, target)=>()=>target as QuantizerWu,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@#is': (m.Scope scope, target)=>()=>target is QuantizerWu,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@weights': (m.Scope scope, QuantizerWu target)=>target.weights,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@weights:set': (m.Scope scope, QuantizerWu target)=>(other)=>target.weights=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@momentsR': (m.Scope scope, QuantizerWu target)=>target.momentsR,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@momentsR:set': (m.Scope scope, QuantizerWu target)=>(other)=>target.momentsR=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@momentsG': (m.Scope scope, QuantizerWu target)=>target.momentsG,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@momentsG:set': (m.Scope scope, QuantizerWu target)=>(other)=>target.momentsG=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@momentsB': (m.Scope scope, QuantizerWu target)=>target.momentsB,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@momentsB:set': (m.Scope scope, QuantizerWu target)=>(other)=>target.momentsB=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@moments': (m.Scope scope, QuantizerWu target)=>target.moments,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@moments:set': (m.Scope scope, QuantizerWu target)=>(other)=>target.moments=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@cubes': (m.Scope scope, QuantizerWu target)=>target.cubes,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@cubes:set': (m.Scope scope, QuantizerWu target)=>(other)=>target.cubes=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@indexBits': (m.Scope scope)=>QuantizerWu.indexBits,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@maxIndex': (m.Scope scope)=>QuantizerWu.maxIndex,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@sideLength': (m.Scope scope)=>QuantizerWu.sideLength,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@totalSize': (m.Scope scope)=>QuantizerWu.totalSize,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@': (m.Scope scope)=>(){
return QuantizerWu();
},
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@quantize': (m.Scope scope, QuantizerWu target)=>target.quantize,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@getIndex': (m.Scope scope)=>QuantizerWu.getIndex,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@constructHistogram': (m.Scope scope, QuantizerWu target)=>target.constructHistogram,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@computeMoments': (m.Scope scope, QuantizerWu target)=>target.computeMoments,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@createBoxes': (m.Scope scope, QuantizerWu target)=>target.createBoxes,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@createResult': (m.Scope scope, QuantizerWu target)=>target.createResult,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@variance': (m.Scope scope, QuantizerWu target)=>target.variance,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@cut': (m.Scope scope, QuantizerWu target)=>target.cut,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@maximize': (m.Scope scope, QuantizerWu target)=>target.maximize,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@volume': (m.Scope scope)=>QuantizerWu.volume,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@bottom': (m.Scope scope)=>QuantizerWu.bottom,
'package:material_color_utilities/quantize/quantizer_wu.dart@QuantizerWu@top': (m.Scope scope)=>QuantizerWu.top,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@#as': (m.Scope scope, target)=>()=>target as MaximizeResult,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@#is': (m.Scope scope, target)=>()=>target is MaximizeResult,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@cutLocation': (m.Scope scope, MaximizeResult target)=>target.cutLocation,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@cutLocation:set': (m.Scope scope, MaximizeResult target)=>(other)=>target.cutLocation=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@maximum': (m.Scope scope, MaximizeResult target)=>target.maximum,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@maximum:set': (m.Scope scope, MaximizeResult target)=>(other)=>target.maximum=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@MaximizeResult@': (m.Scope scope)=>({ cutLocation,  maximum}){
return MaximizeResult(cutLocation:cutLocation, maximum:maximum);
},
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@#as': (m.Scope scope, target)=>()=>target as CreateBoxesResult,
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@#is': (m.Scope scope, target)=>()=>target is CreateBoxesResult,
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@requestedCount': (m.Scope scope, CreateBoxesResult target)=>target.requestedCount,
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@requestedCount:set': (m.Scope scope, CreateBoxesResult target)=>(other)=>target.requestedCount=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@resultCount': (m.Scope scope, CreateBoxesResult target)=>target.resultCount,
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@resultCount:set': (m.Scope scope, CreateBoxesResult target)=>(other)=>target.resultCount=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@CreateBoxesResult@': (m.Scope scope)=>({ requestedCount,  resultCount}){
return CreateBoxesResult(requestedCount:requestedCount, resultCount:resultCount);
},
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@#as': (m.Scope scope, target)=>()=>target as Box,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@#is': (m.Scope scope, target)=>()=>target is Box,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@r0': (m.Scope scope, Box target)=>target.r0,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@r0:set': (m.Scope scope, Box target)=>(other)=>target.r0=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@r1': (m.Scope scope, Box target)=>target.r1,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@r1:set': (m.Scope scope, Box target)=>(other)=>target.r1=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@g0': (m.Scope scope, Box target)=>target.g0,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@g0:set': (m.Scope scope, Box target)=>(other)=>target.g0=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@g1': (m.Scope scope, Box target)=>target.g1,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@g1:set': (m.Scope scope, Box target)=>(other)=>target.g1=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@b0': (m.Scope scope, Box target)=>target.b0,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@b0:set': (m.Scope scope, Box target)=>(other)=>target.b0=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@b1': (m.Scope scope, Box target)=>target.b1,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@b1:set': (m.Scope scope, Box target)=>(other)=>target.b1=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@vol': (m.Scope scope, Box target)=>target.vol,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@vol:set': (m.Scope scope, Box target)=>(other)=>target.vol=other,
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@': (m.Scope scope)=>({ b0,  b1,  g0,  g1,  r0,  r1,  vol}){
return Box(b0:b0 ?? 0, b1:b1 ?? 0, g0:g0 ?? 0, g1:g1 ?? 0, r0:r0 ?? 0, r1:r1 ?? 0, vol:vol ?? 0);
},
'package:material_color_utilities/quantize/quantizer_wu.dart@Box@toString': (m.Scope scope, Box target)=>target.toString,

};
}