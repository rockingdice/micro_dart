import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/page_storage.dart@PageStorageKey@#as': (m.Scope scope, target)=>()=>target as PageStorageKey,
'package:flutter/src/widgets/page_storage.dart@PageStorageKey@#is': (m.Scope scope, target)=>()=>target is PageStorageKey,
'package:flutter/src/widgets/page_storage.dart@PageStorageKey@': (m.Scope scope)=><T>( value){
return PageStorageKey(value);
},
'package:flutter/src/widgets/page_storage.dart@PageStorageBucket@#as': (m.Scope scope, target)=>()=>target as PageStorageBucket,
'package:flutter/src/widgets/page_storage.dart@PageStorageBucket@#is': (m.Scope scope, target)=>()=>target is PageStorageBucket,
'package:flutter/src/widgets/page_storage.dart@PageStorageBucket@': (m.Scope scope)=>(){
return PageStorageBucket();
},
'package:flutter/src/widgets/page_storage.dart@PageStorageBucket@writeState': (m.Scope scope, PageStorageBucket target)=>target.writeState,
'package:flutter/src/widgets/page_storage.dart@PageStorageBucket@readState': (m.Scope scope, PageStorageBucket target)=>target.readState,
'package:flutter/src/widgets/page_storage.dart@PageStorage@#as': (m.Scope scope, target)=>()=>target as PageStorage,
'package:flutter/src/widgets/page_storage.dart@PageStorage@#is': (m.Scope scope, target)=>()=>target is PageStorage,
'package:flutter/src/widgets/page_storage.dart@PageStorage@child': (m.Scope scope, PageStorage target)=>target.child,
'package:flutter/src/widgets/page_storage.dart@PageStorage@bucket': (m.Scope scope, PageStorage target)=>target.bucket,
'package:flutter/src/widgets/page_storage.dart@PageStorage@': (m.Scope scope)=>({ bucket,  child,  key}){
return PageStorage(bucket:bucket, child:child, key:key);
},
'package:flutter/src/widgets/page_storage.dart@PageStorage@maybeOf': (m.Scope scope)=>PageStorage.maybeOf,
'package:flutter/src/widgets/page_storage.dart@PageStorage@of': (m.Scope scope)=>PageStorage.of,
'package:flutter/src/widgets/page_storage.dart@PageStorage@build': (m.Scope scope, PageStorage target)=>target.build,

};
}