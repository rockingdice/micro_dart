import 'package:flutter/src/widgets/will_pop_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/will_pop_scope.dart@WillPopScope@#as': (m.Scope scope, target)=>()=>target as WillPopScope,
'package:flutter/src/widgets/will_pop_scope.dart@WillPopScope@#is': (m.Scope scope, target)=>()=>target is WillPopScope,
'package:flutter/src/widgets/will_pop_scope.dart@WillPopScope@child': (m.Scope scope, WillPopScope target)=>target.child,
'package:flutter/src/widgets/will_pop_scope.dart@WillPopScope@onWillPop': (m.Scope scope, WillPopScope target)=>target.onWillPop,
'package:flutter/src/widgets/will_pop_scope.dart@WillPopScope@': (m.Scope scope)=>({ child,  key,  onWillPop}){
Future<bool> onWillPopProxy() async{
return await engine.callFunctionPointerAsync(scope, onWillPop!,[], {});
}

return WillPopScope(child:child, key:key, onWillPop:onWillPopProxy);
},
'package:flutter/src/widgets/will_pop_scope.dart@WillPopScope@createState': (m.Scope scope, WillPopScope target)=>target.createState,

};
}