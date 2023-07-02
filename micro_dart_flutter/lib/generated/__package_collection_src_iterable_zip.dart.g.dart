import 'package:collection/src/iterable_zip.dart';
import 'dart:collection';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/iterable_zip.dart@IterableZip@#as': (m.Scope scope, target)=>()=>target as IterableZip,
'package:collection/src/iterable_zip.dart@IterableZip@#is': (m.Scope scope, target)=>()=>target is IterableZip,
'package:collection/src/iterable_zip.dart@IterableZip@iterator': (m.Scope scope, IterableZip target)=>target.iterator,
'package:collection/src/iterable_zip.dart@IterableZip@': (m.Scope scope)=><T>( iterables){
return IterableZip(iterables);
},

};
}