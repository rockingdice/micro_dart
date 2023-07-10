import 'package:flutter/src/foundation/stack_frame.dart';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/stack_frame.dart@StackFrame@#as': (m.Scope scope, target)=>()=>target as StackFrame,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@#is': (m.Scope scope, target)=>()=>target is StackFrame,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@asynchronousSuspension': (m.Scope scope)=>StackFrame.asynchronousSuspension,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@stackOverFlowElision': (m.Scope scope)=>StackFrame.stackOverFlowElision,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@source': (m.Scope scope, StackFrame target)=>target.source,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@number': (m.Scope scope, StackFrame target)=>target.number,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@packageScheme': (m.Scope scope, StackFrame target)=>target.packageScheme,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@package': (m.Scope scope, StackFrame target)=>target.package,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@packagePath': (m.Scope scope, StackFrame target)=>target.packagePath,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@line': (m.Scope scope, StackFrame target)=>target.line,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@column': (m.Scope scope, StackFrame target)=>target.column,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@className': (m.Scope scope, StackFrame target)=>target.className,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@method': (m.Scope scope, StackFrame target)=>target.method,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@isConstructor': (m.Scope scope, StackFrame target)=>target.isConstructor,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@hashCode': (m.Scope scope, StackFrame target)=>target.hashCode,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@': (m.Scope scope)=>({ className,  column,  isConstructor,  line,  method,  number,  package,  packagePath,  packageScheme,  source}){
return StackFrame(className:className ?? '', column:column, isConstructor:isConstructor ?? false, line:line, method:method, number:number, package:package, packagePath:packagePath, packageScheme:packageScheme, source:source);
},
'package:flutter/src/foundation/stack_frame.dart@StackFrame@fromStackTrace': (m.Scope scope)=>StackFrame.fromStackTrace,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@fromStackString': (m.Scope scope)=>StackFrame.fromStackString,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@fromStackTraceLine': (m.Scope scope)=>StackFrame.fromStackTraceLine,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@==': (m.Scope scope, StackFrame target)=>(other)=> target == other,
'package:flutter/src/foundation/stack_frame.dart@StackFrame@toString': (m.Scope scope, StackFrame target)=>target.toString,

};
}