import 'package:flutter/src/foundation/licenses.dart';
import 'dart:async';
import 'package:meta/meta.dart' show visibleForTesting;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/licenses.dart@LicenseParagraph@#as': (m.Scope scope, target)=>()=>target as LicenseParagraph,
'package:flutter/src/foundation/licenses.dart@LicenseParagraph@#is': (m.Scope scope, target)=>()=>target is LicenseParagraph,
'package:flutter/src/foundation/licenses.dart@LicenseParagraph@text': (m.Scope scope, LicenseParagraph target)=>target.text,
'package:flutter/src/foundation/licenses.dart@LicenseParagraph@indent': (m.Scope scope, LicenseParagraph target)=>target.indent,
'package:flutter/src/foundation/licenses.dart@LicenseParagraph@centeredIndent': (m.Scope scope)=>LicenseParagraph.centeredIndent,
'package:flutter/src/foundation/licenses.dart@LicenseParagraph@': (m.Scope scope)=>LicenseParagraph,
'package:flutter/src/foundation/licenses.dart@LicenseEntry@#as': (m.Scope scope, target)=>()=>target as LicenseEntry,
'package:flutter/src/foundation/licenses.dart@LicenseEntry@#is': (m.Scope scope, target)=>()=>target is LicenseEntry,
'package:flutter/src/foundation/licenses.dart@LicenseEntry@packages': (m.Scope scope, LicenseEntry target)=>target.packages,
'package:flutter/src/foundation/licenses.dart@LicenseEntry@paragraphs': (m.Scope scope, LicenseEntry target)=>target.paragraphs,
'package:flutter/src/foundation/licenses.dart@LicenseEntryWithLineBreaks@#as': (m.Scope scope, target)=>()=>target as LicenseEntryWithLineBreaks,
'package:flutter/src/foundation/licenses.dart@LicenseEntryWithLineBreaks@#is': (m.Scope scope, target)=>()=>target is LicenseEntryWithLineBreaks,
'package:flutter/src/foundation/licenses.dart@LicenseEntryWithLineBreaks@packages': (m.Scope scope, LicenseEntryWithLineBreaks target)=>target.packages,
'package:flutter/src/foundation/licenses.dart@LicenseEntryWithLineBreaks@text': (m.Scope scope, LicenseEntryWithLineBreaks target)=>target.text,
'package:flutter/src/foundation/licenses.dart@LicenseEntryWithLineBreaks@paragraphs': (m.Scope scope, LicenseEntryWithLineBreaks target)=>target.paragraphs,
'package:flutter/src/foundation/licenses.dart@LicenseEntryWithLineBreaks@': (m.Scope scope)=>LicenseEntryWithLineBreaks,
'package:flutter/src/foundation/licenses.dart@LicenseRegistry@#as': (m.Scope scope, target)=>()=>target as LicenseRegistry,
'package:flutter/src/foundation/licenses.dart@LicenseRegistry@#is': (m.Scope scope, target)=>()=>target is LicenseRegistry,
'package:flutter/src/foundation/licenses.dart@LicenseRegistry@licenses': (m.Scope scope)=>LicenseRegistry.licenses,
'package:flutter/src/foundation/licenses.dart@LicenseRegistry@addLicense': (m.Scope scope)=>( collector){
Stream<LicenseEntry> collectorProxy() {
return  engine.callFunctionPointer(scope, collector!,[], {});
}

LicenseRegistry.addLicense(collectorProxy);
},
'package:flutter/src/foundation/licenses.dart@LicenseRegistry@reset': (m.Scope scope)=>LicenseRegistry.reset,

};
}