import 'package:collection/src/equality.dart';
import 'dart:collection';
import 'package:collection/src/comparators.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/equality.dart@Equality@#as': (m.Scope scope, target)=>()=>target as Equality,
'package:collection/src/equality.dart@Equality@#is': (m.Scope scope, target)=>()=>target is Equality,
'package:collection/src/equality.dart@Equality@': (m.Scope scope)=><E>(){
return Equality();
},
'package:collection/src/equality.dart@Equality@equals': (m.Scope scope, Equality target)=>target.equals,
'package:collection/src/equality.dart@Equality@hash': (m.Scope scope, Equality target)=>target.hash,
'package:collection/src/equality.dart@Equality@isValidKey': (m.Scope scope, Equality target)=>target.isValidKey,
'package:collection/src/equality.dart@EqualityBy@#as': (m.Scope scope, target)=>()=>target as EqualityBy,
'package:collection/src/equality.dart@EqualityBy@#is': (m.Scope scope, target)=>()=>target is EqualityBy,
'package:collection/src/equality.dart@EqualityBy@': (m.Scope scope)=>( comparisonKey, [Equality<dynamic>? inner]){
F comparisonKeyProxy<F, E>( $p0) {
return  engine.callFunctionPointer(scope, comparisonKey!,[$p0], {});
}

if(inner == null){
return EqualityBy(comparisonKeyProxy);
}
return EqualityBy(comparisonKeyProxy, inner!);
},
'package:collection/src/equality.dart@EqualityBy@equals': (m.Scope scope, EqualityBy target)=>target.equals,
'package:collection/src/equality.dart@EqualityBy@hash': (m.Scope scope, EqualityBy target)=>target.hash,
'package:collection/src/equality.dart@EqualityBy@isValidKey': (m.Scope scope, EqualityBy target)=>target.isValidKey,
'package:collection/src/equality.dart@DefaultEquality@#as': (m.Scope scope, target)=>()=>target as DefaultEquality,
'package:collection/src/equality.dart@DefaultEquality@#is': (m.Scope scope, target)=>()=>target is DefaultEquality,
'package:collection/src/equality.dart@DefaultEquality@': (m.Scope scope)=><E>(){
return DefaultEquality();
},
'package:collection/src/equality.dart@DefaultEquality@equals': (m.Scope scope, DefaultEquality target)=>target.equals,
'package:collection/src/equality.dart@DefaultEquality@hash': (m.Scope scope, DefaultEquality target)=>target.hash,
'package:collection/src/equality.dart@DefaultEquality@isValidKey': (m.Scope scope, DefaultEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@IdentityEquality@#as': (m.Scope scope, target)=>()=>target as IdentityEquality,
'package:collection/src/equality.dart@IdentityEquality@#is': (m.Scope scope, target)=>()=>target is IdentityEquality,
'package:collection/src/equality.dart@IdentityEquality@': (m.Scope scope)=><E>(){
return IdentityEquality();
},
'package:collection/src/equality.dart@IdentityEquality@equals': (m.Scope scope, IdentityEquality target)=>target.equals,
'package:collection/src/equality.dart@IdentityEquality@hash': (m.Scope scope, IdentityEquality target)=>target.hash,
'package:collection/src/equality.dart@IdentityEquality@isValidKey': (m.Scope scope, IdentityEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@IterableEquality@#as': (m.Scope scope, target)=>()=>target as IterableEquality,
'package:collection/src/equality.dart@IterableEquality@#is': (m.Scope scope, target)=>()=>target is IterableEquality,
'package:collection/src/equality.dart@IterableEquality@': (m.Scope scope)=><E>([Equality<dynamic>? elementEquality]){
if(elementEquality == null){
return IterableEquality();
}
return IterableEquality(elementEquality!);
},
'package:collection/src/equality.dart@IterableEquality@equals': (m.Scope scope, IterableEquality target)=>target.equals,
'package:collection/src/equality.dart@IterableEquality@hash': (m.Scope scope, IterableEquality target)=>target.hash,
'package:collection/src/equality.dart@IterableEquality@isValidKey': (m.Scope scope, IterableEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@ListEquality@#as': (m.Scope scope, target)=>()=>target as ListEquality,
'package:collection/src/equality.dart@ListEquality@#is': (m.Scope scope, target)=>()=>target is ListEquality,
'package:collection/src/equality.dart@ListEquality@': (m.Scope scope)=><E>([Equality<dynamic>? elementEquality]){
if(elementEquality == null){
return ListEquality();
}
return ListEquality(elementEquality!);
},
'package:collection/src/equality.dart@ListEquality@equals': (m.Scope scope, ListEquality target)=>target.equals,
'package:collection/src/equality.dart@ListEquality@hash': (m.Scope scope, ListEquality target)=>target.hash,
'package:collection/src/equality.dart@ListEquality@isValidKey': (m.Scope scope, ListEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@UnorderedIterableEquality@#as': (m.Scope scope, target)=>()=>target as UnorderedIterableEquality,
'package:collection/src/equality.dart@UnorderedIterableEquality@#is': (m.Scope scope, target)=>()=>target is UnorderedIterableEquality,
'package:collection/src/equality.dart@UnorderedIterableEquality@': (m.Scope scope)=><E>([Equality<dynamic>? elementEquality]){
if(elementEquality == null){
return UnorderedIterableEquality();
}
return UnorderedIterableEquality(elementEquality!);
},
'package:collection/src/equality.dart@UnorderedIterableEquality@isValidKey': (m.Scope scope, UnorderedIterableEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@SetEquality@#as': (m.Scope scope, target)=>()=>target as SetEquality,
'package:collection/src/equality.dart@SetEquality@#is': (m.Scope scope, target)=>()=>target is SetEquality,
'package:collection/src/equality.dart@SetEquality@': (m.Scope scope)=><E>([Equality<dynamic>? elementEquality]){
if(elementEquality == null){
return SetEquality();
}
return SetEquality(elementEquality!);
},
'package:collection/src/equality.dart@SetEquality@isValidKey': (m.Scope scope, SetEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@MapEquality@#as': (m.Scope scope, target)=>()=>target as MapEquality,
'package:collection/src/equality.dart@MapEquality@#is': (m.Scope scope, target)=>()=>target is MapEquality,
'package:collection/src/equality.dart@MapEquality@': (m.Scope scope)=><K, V>({ keys,  values}){
return MapEquality(keys:keys ?? const DefaultEquality<Never>(), values:values ?? const DefaultEquality<Never>());
},
'package:collection/src/equality.dart@MapEquality@equals': (m.Scope scope, MapEquality target)=>target.equals,
'package:collection/src/equality.dart@MapEquality@hash': (m.Scope scope, MapEquality target)=>target.hash,
'package:collection/src/equality.dart@MapEquality@isValidKey': (m.Scope scope, MapEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@MultiEquality@#as': (m.Scope scope, target)=>()=>target as MultiEquality,
'package:collection/src/equality.dart@MultiEquality@#is': (m.Scope scope, target)=>()=>target is MultiEquality,
'package:collection/src/equality.dart@MultiEquality@': (m.Scope scope)=>MultiEquality,
'package:collection/src/equality.dart@MultiEquality@equals': (m.Scope scope, MultiEquality target)=>target.equals,
'package:collection/src/equality.dart@MultiEquality@hash': (m.Scope scope, MultiEquality target)=>target.hash,
'package:collection/src/equality.dart@MultiEquality@isValidKey': (m.Scope scope, MultiEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@DeepCollectionEquality@#as': (m.Scope scope, target)=>()=>target as DeepCollectionEquality,
'package:collection/src/equality.dart@DeepCollectionEquality@#is': (m.Scope scope, target)=>()=>target is DeepCollectionEquality,
'package:collection/src/equality.dart@DeepCollectionEquality@': (m.Scope scope)=>([Equality? base]){
if(base == null){
return DeepCollectionEquality();
}
return DeepCollectionEquality(base!);
},
'package:collection/src/equality.dart@DeepCollectionEquality@unordered': (m.Scope scope)=>DeepCollectionEquality.unordered,
'package:collection/src/equality.dart@DeepCollectionEquality@equals': (m.Scope scope, DeepCollectionEquality target)=>target.equals,
'package:collection/src/equality.dart@DeepCollectionEquality@hash': (m.Scope scope, DeepCollectionEquality target)=>target.hash,
'package:collection/src/equality.dart@DeepCollectionEquality@isValidKey': (m.Scope scope, DeepCollectionEquality target)=>target.isValidKey,
'package:collection/src/equality.dart@CaseInsensitiveEquality@#as': (m.Scope scope, target)=>()=>target as CaseInsensitiveEquality,
'package:collection/src/equality.dart@CaseInsensitiveEquality@#is': (m.Scope scope, target)=>()=>target is CaseInsensitiveEquality,
'package:collection/src/equality.dart@CaseInsensitiveEquality@': (m.Scope scope)=>(){
return CaseInsensitiveEquality();
},
'package:collection/src/equality.dart@CaseInsensitiveEquality@equals': (m.Scope scope, CaseInsensitiveEquality target)=>target.equals,
'package:collection/src/equality.dart@CaseInsensitiveEquality@hash': (m.Scope scope, CaseInsensitiveEquality target)=>target.hash,
'package:collection/src/equality.dart@CaseInsensitiveEquality@isValidKey': (m.Scope scope, CaseInsensitiveEquality target)=>target.isValidKey,

};
}