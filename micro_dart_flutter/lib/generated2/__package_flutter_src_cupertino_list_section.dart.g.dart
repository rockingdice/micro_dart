import 'package:flutter/src/cupertino/list_section.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@#as': (m.Scope scope, target)=>()=>target as CupertinoListSection,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@#is': (m.Scope scope, target)=>()=>target is CupertinoListSection,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@type': (m.Scope scope, CupertinoListSection target)=>target.type,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@header': (m.Scope scope, CupertinoListSection target)=>target.header,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@footer': (m.Scope scope, CupertinoListSection target)=>target.footer,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@margin': (m.Scope scope, CupertinoListSection target)=>target.margin,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@children': (m.Scope scope, CupertinoListSection target)=>target.children,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@decoration': (m.Scope scope, CupertinoListSection target)=>target.decoration,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@backgroundColor': (m.Scope scope, CupertinoListSection target)=>target.backgroundColor,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@clipBehavior': (m.Scope scope, CupertinoListSection target)=>target.clipBehavior,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@dividerMargin': (m.Scope scope, CupertinoListSection target)=>target.dividerMargin,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@additionalDividerMargin': (m.Scope scope, CupertinoListSection target)=>target.additionalDividerMargin,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@topMargin': (m.Scope scope, CupertinoListSection target)=>target.topMargin,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@': (m.Scope scope)=>({ additionalDividerMargin,  backgroundColor,  children,  clipBehavior,  decoration,  dividerMargin,  footer,  hasLeading,  header,  key,  margin,  topMargin}){
return CupertinoListSection(additionalDividerMargin:additionalDividerMargin, backgroundColor:backgroundColor ?? CupertinoColors.systemGroupedBackground, children:children, clipBehavior:clipBehavior ?? Clip.none, decoration:decoration, dividerMargin:dividerMargin ?? 20.0, footer:footer, hasLeading:hasLeading ?? true, header:header, key:key, margin:margin ?? EdgeInsets.only(bottom: 8.0), topMargin:topMargin ?? 22.0);
},
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@insetGrouped': (m.Scope scope)=>CupertinoListSection.insetGrouped,
'package:flutter/src/cupertino/list_section.dart@CupertinoListSection@build': (m.Scope scope, CupertinoListSection target)=>target.build,

};
}