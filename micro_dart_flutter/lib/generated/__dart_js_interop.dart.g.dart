import 'dart:js_interop';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:js_interop@ObjectLiteral@#as': (m.Scope scope, target)=>()=>target as ObjectLiteral,
'dart:js_interop@ObjectLiteral@#is': (m.Scope scope, target)=>()=>target is ObjectLiteral,
'dart:js_interop@ObjectLiteral@': (m.Scope scope)=>(){
return ObjectLiteral();
},

};
}