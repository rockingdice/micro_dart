import 'package:intl/src/intl/micro_money.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/micro_money.dart@MicroMoney@#as': (m.Scope scope, target)=>()=>target as MicroMoney,
'package:intl/src/intl/micro_money.dart@MicroMoney@#is': (m.Scope scope, target)=>()=>target is MicroMoney,
'package:intl/src/intl/micro_money.dart@MicroMoney@': (m.Scope scope)=>( micros){
return MicroMoney(micros);
},

};
}