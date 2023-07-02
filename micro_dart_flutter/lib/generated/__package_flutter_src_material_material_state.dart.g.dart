import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/material_state.dart@MaterialStateColor@#as': (m.Scope scope, target)=>()=>target as MaterialStateColor,
'package:flutter/src/material/material_state.dart@MaterialStateColor@#is': (m.Scope scope, target)=>()=>target is MaterialStateColor,
'package:flutter/src/material/material_state.dart@MaterialStateColor@resolveWith': (m.Scope scope)=>( callback){
Color callbackProxy( states) {
return  engine.callFunctionPointer(scope, callback!,[states], {});
}

return MaterialStateColor.resolveWith(callbackProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStateColor@resolve': (m.Scope scope, MaterialStateColor target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateMouseCursor@#as': (m.Scope scope, target)=>()=>target as MaterialStateMouseCursor,
'package:flutter/src/material/material_state.dart@MaterialStateMouseCursor@#is': (m.Scope scope, target)=>()=>target is MaterialStateMouseCursor,
'package:flutter/src/material/material_state.dart@MaterialStateMouseCursor@clickable': (m.Scope scope)=>MaterialStateMouseCursor.clickable,
'package:flutter/src/material/material_state.dart@MaterialStateMouseCursor@textable': (m.Scope scope)=>MaterialStateMouseCursor.textable,
'package:flutter/src/material/material_state.dart@MaterialStateMouseCursor@createSession': (m.Scope scope, MaterialStateMouseCursor target)=>target.createSession,
'package:flutter/src/material/material_state.dart@MaterialStateMouseCursor@resolve': (m.Scope scope, MaterialStateMouseCursor target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateBorderSide@#as': (m.Scope scope, target)=>()=>target as MaterialStateBorderSide,
'package:flutter/src/material/material_state.dart@MaterialStateBorderSide@#is': (m.Scope scope, target)=>()=>target is MaterialStateBorderSide,
'package:flutter/src/material/material_state.dart@MaterialStateBorderSide@resolve': (m.Scope scope, MaterialStateBorderSide target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateBorderSide@resolveWith': (m.Scope scope)=>( callback){
BorderSide callbackProxy( states) {
return  engine.callFunctionPointer(scope, callback!,[states], {});
}

return MaterialStateBorderSide.resolveWith(callbackProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStateOutlinedBorder@#as': (m.Scope scope, target)=>()=>target as MaterialStateOutlinedBorder,
'package:flutter/src/material/material_state.dart@MaterialStateOutlinedBorder@#is': (m.Scope scope, target)=>()=>target is MaterialStateOutlinedBorder,
'package:flutter/src/material/material_state.dart@MaterialStateOutlinedBorder@resolve': (m.Scope scope, MaterialStateOutlinedBorder target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateTextStyle@#as': (m.Scope scope, target)=>()=>target as MaterialStateTextStyle,
'package:flutter/src/material/material_state.dart@MaterialStateTextStyle@#is': (m.Scope scope, target)=>()=>target is MaterialStateTextStyle,
'package:flutter/src/material/material_state.dart@MaterialStateTextStyle@resolveWith': (m.Scope scope)=>( callback){
TextStyle callbackProxy( states) {
return  engine.callFunctionPointer(scope, callback!,[states], {});
}

return MaterialStateTextStyle.resolveWith(callbackProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStateTextStyle@resolve': (m.Scope scope, MaterialStateTextStyle target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateOutlineInputBorder@#as': (m.Scope scope, target)=>()=>target as MaterialStateOutlineInputBorder,
'package:flutter/src/material/material_state.dart@MaterialStateOutlineInputBorder@#is': (m.Scope scope, target)=>()=>target is MaterialStateOutlineInputBorder,
'package:flutter/src/material/material_state.dart@MaterialStateOutlineInputBorder@resolveWith': (m.Scope scope)=>( callback){
InputBorder callbackProxy( states) {
return  engine.callFunctionPointer(scope, callback!,[states], {});
}

return MaterialStateOutlineInputBorder.resolveWith(callbackProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStateOutlineInputBorder@resolve': (m.Scope scope, MaterialStateOutlineInputBorder target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateUnderlineInputBorder@#as': (m.Scope scope, target)=>()=>target as MaterialStateUnderlineInputBorder,
'package:flutter/src/material/material_state.dart@MaterialStateUnderlineInputBorder@#is': (m.Scope scope, target)=>()=>target is MaterialStateUnderlineInputBorder,
'package:flutter/src/material/material_state.dart@MaterialStateUnderlineInputBorder@resolveWith': (m.Scope scope)=>( callback){
InputBorder callbackProxy( states) {
return  engine.callFunctionPointer(scope, callback!,[states], {});
}

return MaterialStateUnderlineInputBorder.resolveWith(callbackProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStateUnderlineInputBorder@resolve': (m.Scope scope, MaterialStateUnderlineInputBorder target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateProperty@#as': (m.Scope scope, target)=>()=>target as MaterialStateProperty,
'package:flutter/src/material/material_state.dart@MaterialStateProperty@#is': (m.Scope scope, target)=>()=>target is MaterialStateProperty,
'package:flutter/src/material/material_state.dart@MaterialStateProperty@resolve': (m.Scope scope, MaterialStateProperty target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStateProperty@resolveAs': (m.Scope scope)=>MaterialStateProperty.resolveAs,
'package:flutter/src/material/material_state.dart@MaterialStateProperty@resolveWith': (m.Scope scope)=>( callback){
T callbackProxy<T>( states) {
return  engine.callFunctionPointer(scope, callback!,[states], {});
}

return MaterialStateProperty.resolveWith(callbackProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStateProperty@all': (m.Scope scope)=>MaterialStateProperty.all,
'package:flutter/src/material/material_state.dart@MaterialStateProperty@lerp': (m.Scope scope)=>( a,  b,  t,  lerpFunction){
T lerpFunctionProxy<T>( $p0,  $p1,  $p2) {
return  engine.callFunctionPointer(scope, lerpFunction!,[$p0, $p1, $p2], {});
}

return MaterialStateProperty.lerp(a, b, t, lerpFunctionProxy);
},
'package:flutter/src/material/material_state.dart@MaterialStatePropertyAll@#as': (m.Scope scope, target)=>()=>target as MaterialStatePropertyAll,
'package:flutter/src/material/material_state.dart@MaterialStatePropertyAll@#is': (m.Scope scope, target)=>()=>target is MaterialStatePropertyAll,
'package:flutter/src/material/material_state.dart@MaterialStatePropertyAll@value': (m.Scope scope, MaterialStatePropertyAll target)=>target.value,
'package:flutter/src/material/material_state.dart@MaterialStatePropertyAll@': (m.Scope scope)=><T>( value){
return MaterialStatePropertyAll(value);
},
'package:flutter/src/material/material_state.dart@MaterialStatePropertyAll@resolve': (m.Scope scope, MaterialStatePropertyAll target)=>target.resolve,
'package:flutter/src/material/material_state.dart@MaterialStatePropertyAll@toString': (m.Scope scope, MaterialStatePropertyAll target)=>target.toString,
'package:flutter/src/material/material_state.dart@MaterialStatesController@#as': (m.Scope scope, target)=>()=>target as MaterialStatesController,
'package:flutter/src/material/material_state.dart@MaterialStatesController@#is': (m.Scope scope, target)=>()=>target is MaterialStatesController,
'package:flutter/src/material/material_state.dart@MaterialStatesController@': (m.Scope scope)=>([Set<MaterialState>? value]){
if(value == null){
return MaterialStatesController();
}
return MaterialStatesController(value!);
},
'package:flutter/src/material/material_state.dart@MaterialStatesController@update': (m.Scope scope, MaterialStatesController target)=>target.update,

};
}