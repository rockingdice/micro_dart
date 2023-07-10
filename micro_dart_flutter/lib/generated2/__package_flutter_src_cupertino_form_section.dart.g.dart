import 'package:flutter/src/cupertino/form_section.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/list_section.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@#as': (m.Scope scope, target)=>()=>target as CupertinoFormSection,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@#is': (m.Scope scope, target)=>()=>target is CupertinoFormSection,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@header': (m.Scope scope, CupertinoFormSection target)=>target.header,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@footer': (m.Scope scope, CupertinoFormSection target)=>target.footer,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@margin': (m.Scope scope, CupertinoFormSection target)=>target.margin,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@children': (m.Scope scope, CupertinoFormSection target)=>target.children,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@decoration': (m.Scope scope, CupertinoFormSection target)=>target.decoration,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@backgroundColor': (m.Scope scope, CupertinoFormSection target)=>target.backgroundColor,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@clipBehavior': (m.Scope scope, CupertinoFormSection target)=>target.clipBehavior,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@': (m.Scope scope)=>({ backgroundColor,  children,  clipBehavior,  decoration,  footer,  header,  key,  margin}){
return CupertinoFormSection(backgroundColor:backgroundColor ?? CupertinoColors.systemGroupedBackground, children:children, clipBehavior:clipBehavior ?? Clip.none, decoration:decoration, footer:footer, header:header, key:key, margin:margin ?? EdgeInsets.zero);
},
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@insetGrouped': (m.Scope scope)=>CupertinoFormSection.insetGrouped,
'package:flutter/src/cupertino/form_section.dart@CupertinoFormSection@build': (m.Scope scope, CupertinoFormSection target)=>target.build,

};
}