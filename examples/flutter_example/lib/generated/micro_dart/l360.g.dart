import 'package:flutter/src/foundation/basic_types.dart';
import 'dart:collection';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/basic_types.dart@CachingIterable@#as': (m.Scope scope, target)=>()=>target as CachingIterable,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@#is': (m.Scope scope, target)=>()=>target is CachingIterable,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@iterator': (m.Scope scope, CachingIterable target)=>target.iterator,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@length': (m.Scope scope, CachingIterable target)=>target.length,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@': (m.Scope scope)=>CachingIterable,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@map': (m.Scope scope, CachingIterable target)=>( toElement){
T toElementProxy<T, E>( e) {
return  engine.callFunctionPointer(scope, toElement!,[e], {});
}

return target.map(toElementProxy);
},
'package:flutter/src/foundation/basic_types.dart@CachingIterable@where': (m.Scope scope, CachingIterable target)=>( test){
bool testProxy<E>( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

return target.where(testProxy);
},
'package:flutter/src/foundation/basic_types.dart@CachingIterable@expand': (m.Scope scope, CachingIterable target)=>( toElements){
Iterable<T> toElementsProxy<T, E>( element) {
return  engine.callFunctionPointer(scope, toElements!,[element], {});
}

return target.expand(toElementsProxy);
},
'package:flutter/src/foundation/basic_types.dart@CachingIterable@take': (m.Scope scope, CachingIterable target)=>target.take,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@takeWhile': (m.Scope scope, CachingIterable target)=>( test){
bool testProxy<E>( value) {
return  engine.callFunctionPointer(scope, test!,[value], {});
}

return target.takeWhile(testProxy);
},
'package:flutter/src/foundation/basic_types.dart@CachingIterable@skip': (m.Scope scope, CachingIterable target)=>target.skip,
'package:flutter/src/foundation/basic_types.dart@CachingIterable@skipWhile': (m.Scope scope, CachingIterable target)=>( test){
bool testProxy<E>( value) {
return  engine.callFunctionPointer(scope, test!,[value], {});
}

return target.skipWhile(testProxy);
},
'package:flutter/src/foundation/basic_types.dart@CachingIterable@toList': (m.Scope scope, CachingIterable target)=>target.toList,
'package:flutter/src/foundation/basic_types.dart@Factory@#as': (m.Scope scope, target)=>()=>target as Factory,
'package:flutter/src/foundation/basic_types.dart@Factory@#is': (m.Scope scope, target)=>()=>target is Factory,
'package:flutter/src/foundation/basic_types.dart@Factory@constructor': (m.Scope scope, Factory target)=>target.constructor,
'package:flutter/src/foundation/basic_types.dart@Factory@type': (m.Scope scope, Factory target)=>target.type,
'package:flutter/src/foundation/basic_types.dart@Factory@': (m.Scope scope)=>( constructor){
T constructorProxy<T>() {
return  engine.callFunctionPointer(scope, constructor!,[], {});
}

return Factory(constructorProxy);
},
'package:flutter/src/foundation/basic_types.dart@Factory@toString': (m.Scope scope, Factory target)=>target.toString,
'package:flutter/src/foundation/basic_types.dart@@lerpDuration': (m.Scope scope)=>lerpDuration,

};
}