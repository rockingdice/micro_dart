import 'package:flutter/src/widgets/shared_app_data.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_model.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@#as': (m.Scope scope, target)=>()=>target as SharedAppData,
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@#is': (m.Scope scope, target)=>()=>target is SharedAppData,
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@child': (m.Scope scope, SharedAppData target)=>target.child,
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@': (m.Scope scope)=>({ child,  key}){
return SharedAppData(child:child, key:key);
},
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@createState': (m.Scope scope, SharedAppData target)=>target.createState,
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@getValue': (m.Scope scope)=>( context,  key,  init){
V initProxy<V>() {
return  engine.callFunctionPointer(scope, init!,[], {});
}

return SharedAppData.getValue<Object, dynamic>(context, key, initProxy);
},
'package:flutter/src/widgets/shared_app_data.dart@SharedAppData@setValue': (m.Scope scope)=>SharedAppData.setValue,

};
}