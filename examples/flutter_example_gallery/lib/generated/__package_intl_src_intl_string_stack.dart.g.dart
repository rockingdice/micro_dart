import 'package:intl/src/intl/string_stack.dart';
import 'dart:math';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/string_stack.dart@StringStack@#as': (m.Scope scope, target)=>()=>target as StringStack,
'package:intl/src/intl/string_stack.dart@StringStack@#is': (m.Scope scope, target)=>()=>target is StringStack,
'package:intl/src/intl/string_stack.dart@StringStack@contents': (m.Scope scope, StringStack target)=>target.contents,
'package:intl/src/intl/string_stack.dart@StringStack@atStart': (m.Scope scope, StringStack target)=>target.atStart,
'package:intl/src/intl/string_stack.dart@StringStack@atEnd': (m.Scope scope, StringStack target)=>target.atEnd,
'package:intl/src/intl/string_stack.dart@StringStack@': (m.Scope scope)=>( contents){
return StringStack(contents);
},
'package:intl/src/intl/string_stack.dart@StringStack@next': (m.Scope scope, StringStack target)=>target.next,
'package:intl/src/intl/string_stack.dart@StringStack@pop': (m.Scope scope, StringStack target)=>target.pop,
'package:intl/src/intl/string_stack.dart@StringStack@read': (m.Scope scope, StringStack target)=>target.read,
'package:intl/src/intl/string_stack.dart@StringStack@startsWith': (m.Scope scope, StringStack target)=>target.startsWith,
'package:intl/src/intl/string_stack.dart@StringStack@peek': (m.Scope scope, StringStack target)=>target.peek,
'package:intl/src/intl/string_stack.dart@StringStack@peekAll': (m.Scope scope, StringStack target)=>target.peekAll,
'package:intl/src/intl/string_stack.dart@StringStack@toString': (m.Scope scope, StringStack target)=>target.toString,

};
}