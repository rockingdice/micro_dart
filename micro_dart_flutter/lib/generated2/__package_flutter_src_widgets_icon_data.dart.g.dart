import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/icon_data.dart@@staticIconProvider': (m.Scope scope)=>staticIconProvider,
'package:flutter/src/widgets/icon_data.dart@IconData@#as': (m.Scope scope, target)=>()=>target as IconData,
'package:flutter/src/widgets/icon_data.dart@IconData@#is': (m.Scope scope, target)=>()=>target is IconData,
'package:flutter/src/widgets/icon_data.dart@IconData@codePoint': (m.Scope scope, IconData target)=>target.codePoint,
'package:flutter/src/widgets/icon_data.dart@IconData@fontFamily': (m.Scope scope, IconData target)=>target.fontFamily,
'package:flutter/src/widgets/icon_data.dart@IconData@fontPackage': (m.Scope scope, IconData target)=>target.fontPackage,
'package:flutter/src/widgets/icon_data.dart@IconData@matchTextDirection': (m.Scope scope, IconData target)=>target.matchTextDirection,
'package:flutter/src/widgets/icon_data.dart@IconData@hashCode': (m.Scope scope, IconData target)=>target.hashCode,
'package:flutter/src/widgets/icon_data.dart@IconData@': (m.Scope scope)=>( codePoint, { fontFamily,  fontPackage,  matchTextDirection}){
return IconData(codePoint, fontFamily:fontFamily, fontPackage:fontPackage, matchTextDirection:matchTextDirection ?? false);
},
'package:flutter/src/widgets/icon_data.dart@IconData@==': (m.Scope scope, IconData target)=>(other)=> target == other,
'package:flutter/src/widgets/icon_data.dart@IconData@toString': (m.Scope scope, IconData target)=>target.toString,
'package:flutter/src/widgets/icon_data.dart@IconDataProperty@#as': (m.Scope scope, target)=>()=>target as IconDataProperty,
'package:flutter/src/widgets/icon_data.dart@IconDataProperty@#is': (m.Scope scope, target)=>()=>target is IconDataProperty,
'package:flutter/src/widgets/icon_data.dart@IconDataProperty@': (m.Scope scope)=>( name,  value, { ifNull,  level,  showName,  style}){
return IconDataProperty(name, value, ifNull:ifNull, level:level ?? DiagnosticLevel.info, showName:showName ?? true, style:style ?? DiagnosticsTreeStyle.singleLine);
},
'package:flutter/src/widgets/icon_data.dart@IconDataProperty@toJsonMap': (m.Scope scope, IconDataProperty target)=>target.toJsonMap,

};
}