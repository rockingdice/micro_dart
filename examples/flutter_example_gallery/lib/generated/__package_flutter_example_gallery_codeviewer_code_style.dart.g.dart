import 'package:flutter_example_gallery/codeviewer/code_style.dart';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@#as': (m.Scope scope, target)=>()=>target as CodeStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@#is': (m.Scope scope, target)=>()=>target is CodeStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@baseStyle': (m.Scope scope, CodeStyle target)=>target.baseStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@numberStyle': (m.Scope scope, CodeStyle target)=>target.numberStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@commentStyle': (m.Scope scope, CodeStyle target)=>target.commentStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@keywordStyle': (m.Scope scope, CodeStyle target)=>target.keywordStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@stringStyle': (m.Scope scope, CodeStyle target)=>target.stringStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@punctuationStyle': (m.Scope scope, CodeStyle target)=>target.punctuationStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@classStyle': (m.Scope scope, CodeStyle target)=>target.classStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@constantStyle': (m.Scope scope, CodeStyle target)=>target.constantStyle,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@': (m.Scope scope)=>({ baseStyle,  child,  classStyle,  commentStyle,  constantStyle,  key,  keywordStyle,  numberStyle,  punctuationStyle,  stringStyle}){
return CodeStyle(baseStyle:baseStyle, child:child, classStyle:classStyle, commentStyle:commentStyle, constantStyle:constantStyle, key:key, keywordStyle:keywordStyle, numberStyle:numberStyle, punctuationStyle:punctuationStyle, stringStyle:stringStyle);
},
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@of': (m.Scope scope)=>CodeStyle.of,
'package:flutter_example_gallery/codeviewer/code_style.dart@CodeStyle@updateShouldNotify': (m.Scope scope, CodeStyle target)=>target.updateShouldNotify,

};
}