import 'package:collection/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:collection/src/utils.dart@@defaultCompare': (m.Scope scope)=>defaultCompare,
'package:collection/src/utils.dart@@identity': (m.Scope scope)=>identity,
'package:collection/src/utils.dart@@compareComparable': (m.Scope scope)=>compareComparable,

};
}