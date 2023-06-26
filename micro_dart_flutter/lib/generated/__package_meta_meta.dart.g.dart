import 'package:meta/meta.dart';
import 'package:meta/meta_meta.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:meta/meta.dart@@alwaysThrows': (m.Scope scope)=>alwaysThrows,
'package:meta/meta.dart@@checked': (m.Scope scope)=>checked,
'package:meta/meta.dart@@doNotStore': (m.Scope scope)=>doNotStore,
'package:meta/meta.dart@@experimental': (m.Scope scope)=>experimental,
'package:meta/meta.dart@@factory': (m.Scope scope)=>factory,
'package:meta/meta.dart@@immutable': (m.Scope scope)=>immutable,
'package:meta/meta.dart@@internal': (m.Scope scope)=>internal,
'package:meta/meta.dart@@isTest': (m.Scope scope)=>isTest,
'package:meta/meta.dart@@isTestGroup': (m.Scope scope)=>isTestGroup,
'package:meta/meta.dart@@literal': (m.Scope scope)=>literal,
'package:meta/meta.dart@@mustBeOverridden': (m.Scope scope)=>mustBeOverridden,
'package:meta/meta.dart@@mustCallSuper': (m.Scope scope)=>mustCallSuper,
'package:meta/meta.dart@@nonVirtual': (m.Scope scope)=>nonVirtual,
'package:meta/meta.dart@@optionalTypeArgs': (m.Scope scope)=>optionalTypeArgs,
'package:meta/meta.dart@@protected': (m.Scope scope)=>protected,
'package:meta/meta.dart@@reopen': (m.Scope scope)=>reopen,
'package:meta/meta.dart@@required': (m.Scope scope)=>required,
'package:meta/meta.dart@@sealed': (m.Scope scope)=>sealed,
'package:meta/meta.dart@@useResult': (m.Scope scope)=>useResult,
'package:meta/meta.dart@@virtual': (m.Scope scope)=>virtual,
'package:meta/meta.dart@@visibleForOverriding': (m.Scope scope)=>visibleForOverriding,
'package:meta/meta.dart@@visibleForTesting': (m.Scope scope)=>visibleForTesting,
'package:meta/meta.dart@Immutable@#as': (m.Scope scope, target)=>()=>target as Immutable,
'package:meta/meta.dart@Immutable@#is': (m.Scope scope, target)=>()=>target is Immutable,
'package:meta/meta.dart@Immutable@reason': (m.Scope scope, Immutable target)=>target.reason,
'package:meta/meta.dart@Immutable@': (m.Scope scope)=>([String? reason]){
if(reason == null){
return Immutable();
}
return Immutable(reason!);
},
'package:meta/meta.dart@Required@#as': (m.Scope scope, target)=>()=>target as Required,
'package:meta/meta.dart@Required@#is': (m.Scope scope, target)=>()=>target is Required,
'package:meta/meta.dart@Required@reason': (m.Scope scope, Required target)=>target.reason,
'package:meta/meta.dart@Required@': (m.Scope scope)=>([String? reason]){
if(reason == null){
return Required();
}
return Required(reason!);
},
'package:meta/meta.dart@UseResult@#as': (m.Scope scope, target)=>()=>target as UseResult,
'package:meta/meta.dart@UseResult@#is': (m.Scope scope, target)=>()=>target is UseResult,
'package:meta/meta.dart@UseResult@reason': (m.Scope scope, UseResult target)=>target.reason,
'package:meta/meta.dart@UseResult@parameterDefined': (m.Scope scope, UseResult target)=>target.parameterDefined,
'package:meta/meta.dart@UseResult@': (m.Scope scope)=>([String? reason]){
if(reason == null){
return UseResult();
}
return UseResult(reason!);
},
'package:meta/meta.dart@UseResult@unless': (m.Scope scope)=>UseResult.unless,

};
}