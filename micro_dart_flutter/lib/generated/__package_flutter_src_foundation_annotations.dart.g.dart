import 'package:flutter/src/foundation/annotations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/annotations.dart@Category@#as': (m.Scope scope, target)=>()=>target as Category,
'package:flutter/src/foundation/annotations.dart@Category@#is': (m.Scope scope, target)=>()=>target is Category,
'package:flutter/src/foundation/annotations.dart@Category@sections': (m.Scope scope, Category target)=>target.sections,
'package:flutter/src/foundation/annotations.dart@Category@': (m.Scope scope)=>Category,
'package:flutter/src/foundation/annotations.dart@DocumentationIcon@#as': (m.Scope scope, target)=>()=>target as DocumentationIcon,
'package:flutter/src/foundation/annotations.dart@DocumentationIcon@#is': (m.Scope scope, target)=>()=>target is DocumentationIcon,
'package:flutter/src/foundation/annotations.dart@DocumentationIcon@url': (m.Scope scope, DocumentationIcon target)=>target.url,
'package:flutter/src/foundation/annotations.dart@DocumentationIcon@': (m.Scope scope)=>DocumentationIcon,
'package:flutter/src/foundation/annotations.dart@Summary@#as': (m.Scope scope, target)=>()=>target as Summary,
'package:flutter/src/foundation/annotations.dart@Summary@#is': (m.Scope scope, target)=>()=>target is Summary,
'package:flutter/src/foundation/annotations.dart@Summary@text': (m.Scope scope, Summary target)=>target.text,
'package:flutter/src/foundation/annotations.dart@Summary@': (m.Scope scope)=>Summary,

};
}