import 'package:flutter/src/services/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/clipboard.dart@ClipboardData@#as': (m.Scope scope, target)=>()=>target as ClipboardData,
'package:flutter/src/services/clipboard.dart@ClipboardData@#is': (m.Scope scope, target)=>()=>target is ClipboardData,
'package:flutter/src/services/clipboard.dart@ClipboardData@text': (m.Scope scope, ClipboardData target)=>target.text,
'package:flutter/src/services/clipboard.dart@ClipboardData@': (m.Scope scope)=>({ text}){
return ClipboardData(text:text);
},
'package:flutter/src/services/clipboard.dart@Clipboard@#as': (m.Scope scope, target)=>()=>target as Clipboard,
'package:flutter/src/services/clipboard.dart@Clipboard@#is': (m.Scope scope, target)=>()=>target is Clipboard,
'package:flutter/src/services/clipboard.dart@Clipboard@kTextPlain': (m.Scope scope)=>Clipboard.kTextPlain,
'package:flutter/src/services/clipboard.dart@Clipboard@setData': (m.Scope scope)=>Clipboard.setData,
'package:flutter/src/services/clipboard.dart@Clipboard@getData': (m.Scope scope)=>Clipboard.getData,
'package:flutter/src/services/clipboard.dart@Clipboard@hasStrings': (m.Scope scope)=>Clipboard.hasStrings,

};
}