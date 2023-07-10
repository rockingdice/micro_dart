import 'package:flutter/src/cupertino/form_row.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@#as': (m.Scope scope, target)=>()=>target as CupertinoFormRow,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@#is': (m.Scope scope, target)=>()=>target is CupertinoFormRow,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@prefix': (m.Scope scope, CupertinoFormRow target)=>target.prefix,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@padding': (m.Scope scope, CupertinoFormRow target)=>target.padding,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@helper': (m.Scope scope, CupertinoFormRow target)=>target.helper,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@error': (m.Scope scope, CupertinoFormRow target)=>target.error,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@child': (m.Scope scope, CupertinoFormRow target)=>target.child,
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@': (m.Scope scope)=>({ child,  error,  helper,  key,  padding,  prefix}){
return CupertinoFormRow(child:child, error:error, helper:helper, key:key, padding:padding, prefix:prefix);
},
'package:flutter/src/cupertino/form_row.dart@CupertinoFormRow@build': (m.Scope scope, CupertinoFormRow target)=>target.build,

};
}