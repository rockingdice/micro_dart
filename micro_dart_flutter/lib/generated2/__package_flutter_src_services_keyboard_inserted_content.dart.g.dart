import 'package:flutter/src/services/keyboard_inserted_content.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@#as': (m.Scope scope, target)=>()=>target as KeyboardInsertedContent,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@#is': (m.Scope scope, target)=>()=>target is KeyboardInsertedContent,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@mimeType': (m.Scope scope, KeyboardInsertedContent target)=>target.mimeType,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@uri': (m.Scope scope, KeyboardInsertedContent target)=>target.uri,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@data': (m.Scope scope, KeyboardInsertedContent target)=>target.data,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@hasData': (m.Scope scope, KeyboardInsertedContent target)=>target.hasData,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@hashCode': (m.Scope scope, KeyboardInsertedContent target)=>target.hashCode,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@': (m.Scope scope)=>({ data,  mimeType,  uri}){
return KeyboardInsertedContent(data:data, mimeType:mimeType, uri:uri);
},
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@fromJson': (m.Scope scope)=>KeyboardInsertedContent.fromJson,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@toString': (m.Scope scope, KeyboardInsertedContent target)=>target.toString,
'package:flutter/src/services/keyboard_inserted_content.dart@KeyboardInsertedContent@==': (m.Scope scope, KeyboardInsertedContent target)=>(other)=> target == other,

};
}