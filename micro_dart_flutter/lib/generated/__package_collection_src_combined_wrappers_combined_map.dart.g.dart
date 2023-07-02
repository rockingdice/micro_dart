import 'package:collection/src/combined_wrappers/combined_map.dart';
import 'dart:collection';
import 'package:collection/src/combined_wrappers/combined_iterable.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/combined_wrappers/combined_map.dart@CombinedMapView@#as': (m.Scope scope, target)=>()=>target as CombinedMapView,
'package:collection/src/combined_wrappers/combined_map.dart@CombinedMapView@#is': (m.Scope scope, target)=>()=>target is CombinedMapView,
'package:collection/src/combined_wrappers/combined_map.dart@CombinedMapView@keys': (m.Scope scope, CombinedMapView target)=>target.keys,
'package:collection/src/combined_wrappers/combined_map.dart@CombinedMapView@': (m.Scope scope)=><K, V>( _maps){
return CombinedMapView(_maps);
},
'package:collection/src/combined_wrappers/combined_map.dart@CombinedMapView@[]': (m.Scope scope, CombinedMapView target)=>(index)=> target[index],

};
}