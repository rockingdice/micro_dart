import 'package:flutter/src/services/text_editing.dart';
import 'dart:ui' show TextAffinity,TextPosition,TextRange;
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/text_editing.dart@TextSelection@#as': (m.Scope scope, target)=>()=>target as TextSelection,
'package:flutter/src/services/text_editing.dart@TextSelection@#is': (m.Scope scope, target)=>()=>target is TextSelection,
'package:flutter/src/services/text_editing.dart@TextSelection@baseOffset': (m.Scope scope, TextSelection target)=>target.baseOffset,
'package:flutter/src/services/text_editing.dart@TextSelection@extentOffset': (m.Scope scope, TextSelection target)=>target.extentOffset,
'package:flutter/src/services/text_editing.dart@TextSelection@affinity': (m.Scope scope, TextSelection target)=>target.affinity,
'package:flutter/src/services/text_editing.dart@TextSelection@isDirectional': (m.Scope scope, TextSelection target)=>target.isDirectional,
'package:flutter/src/services/text_editing.dart@TextSelection@base': (m.Scope scope, TextSelection target)=>target.base,
'package:flutter/src/services/text_editing.dart@TextSelection@extent': (m.Scope scope, TextSelection target)=>target.extent,
'package:flutter/src/services/text_editing.dart@TextSelection@hashCode': (m.Scope scope, TextSelection target)=>target.hashCode,
'package:flutter/src/services/text_editing.dart@TextSelection@': (m.Scope scope)=>TextSelection,
'package:flutter/src/services/text_editing.dart@TextSelection@collapsed': (m.Scope scope)=>TextSelection.collapsed,
'package:flutter/src/services/text_editing.dart@TextSelection@fromPosition': (m.Scope scope)=>TextSelection.fromPosition,
'package:flutter/src/services/text_editing.dart@TextSelection@toString': (m.Scope scope, TextSelection target)=>target.toString,
'package:flutter/src/services/text_editing.dart@TextSelection@==': (m.Scope scope, TextSelection target)=>(other)=> target == other,
'package:flutter/src/services/text_editing.dart@TextSelection@copyWith': (m.Scope scope, TextSelection target)=>target.copyWith,
'package:flutter/src/services/text_editing.dart@TextSelection@expandTo': (m.Scope scope, TextSelection target)=>target.expandTo,
'package:flutter/src/services/text_editing.dart@TextSelection@extendTo': (m.Scope scope, TextSelection target)=>target.extendTo,

};
}