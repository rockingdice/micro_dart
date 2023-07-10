import 'package:meta/meta_meta.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:meta/meta_meta.dart@Target@#as': (m.Scope scope, target)=>()=>target as Target,
'package:meta/meta_meta.dart@Target@#is': (m.Scope scope, target)=>()=>target is Target,
'package:meta/meta_meta.dart@Target@kinds': (m.Scope scope, Target target)=>target.kinds,
'package:meta/meta_meta.dart@Target@': (m.Scope scope)=>( kinds){
return Target(kinds);
},

};
}