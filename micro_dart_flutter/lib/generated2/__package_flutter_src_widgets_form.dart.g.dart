import 'package:flutter/src/widgets/form.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/restoration_properties.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/form.dart@Form@#as': (m.Scope scope, target)=>()=>target as Form,
'package:flutter/src/widgets/form.dart@Form@#is': (m.Scope scope, target)=>()=>target is Form,
'package:flutter/src/widgets/form.dart@Form@child': (m.Scope scope, Form target)=>target.child,
'package:flutter/src/widgets/form.dart@Form@onWillPop': (m.Scope scope, Form target)=>target.onWillPop,
'package:flutter/src/widgets/form.dart@Form@onChanged': (m.Scope scope, Form target)=>target.onChanged,
'package:flutter/src/widgets/form.dart@Form@autovalidateMode': (m.Scope scope, Form target)=>target.autovalidateMode,
'package:flutter/src/widgets/form.dart@Form@': (m.Scope scope)=>({ autovalidateMode,  child,  key,  onChanged,  onWillPop}){
void onChangedProxy() {
 engine.callFunctionPointer(scope, onChanged!,[], {});
}

Future<bool> onWillPopProxy() async{
return await engine.callFunctionPointerAsync(scope, onWillPop!,[], {});
}

return Form(autovalidateMode:autovalidateMode, child:child, key:key, onChanged:onChanged == null ? null :onChangedProxy, onWillPop:onWillPop == null ? null :onWillPopProxy);
},
'package:flutter/src/widgets/form.dart@Form@maybeOf': (m.Scope scope)=>Form.maybeOf,
'package:flutter/src/widgets/form.dart@Form@of': (m.Scope scope)=>Form.of,
'package:flutter/src/widgets/form.dart@Form@createState': (m.Scope scope, Form target)=>target.createState,
'package:flutter/src/widgets/form.dart@FormState@#as': (m.Scope scope, target)=>()=>target as FormState,
'package:flutter/src/widgets/form.dart@FormState@#is': (m.Scope scope, target)=>()=>target is FormState,
'package:flutter/src/widgets/form.dart@FormState@': (m.Scope scope)=>(){
return FormState();
},
'package:flutter/src/widgets/form.dart@FormState@build': (m.Scope scope, FormState target)=>target.build,
'package:flutter/src/widgets/form.dart@FormState@save': (m.Scope scope, FormState target)=>target.save,
'package:flutter/src/widgets/form.dart@FormState@reset': (m.Scope scope, FormState target)=>target.reset,
'package:flutter/src/widgets/form.dart@FormState@validate': (m.Scope scope, FormState target)=>target.validate,
'package:flutter/src/widgets/form.dart@FormField@#as': (m.Scope scope, target)=>()=>target as FormField,
'package:flutter/src/widgets/form.dart@FormField@#is': (m.Scope scope, target)=>()=>target is FormField,
'package:flutter/src/widgets/form.dart@FormField@onSaved': (m.Scope scope, FormField target)=>target.onSaved,
'package:flutter/src/widgets/form.dart@FormField@validator': (m.Scope scope, FormField target)=>target.validator,
'package:flutter/src/widgets/form.dart@FormField@builder': (m.Scope scope, FormField target)=>target.builder,
'package:flutter/src/widgets/form.dart@FormField@initialValue': (m.Scope scope, FormField target)=>target.initialValue,
'package:flutter/src/widgets/form.dart@FormField@enabled': (m.Scope scope, FormField target)=>target.enabled,
'package:flutter/src/widgets/form.dart@FormField@autovalidateMode': (m.Scope scope, FormField target)=>target.autovalidateMode,
'package:flutter/src/widgets/form.dart@FormField@restorationId': (m.Scope scope, FormField target)=>target.restorationId,
'package:flutter/src/widgets/form.dart@FormField@': (m.Scope scope)=>({ autovalidateMode,  builder,  enabled,  initialValue,  key,  onSaved,  restorationId,  validator}){
Widget builderProxy( field) {
return  engine.callFunctionPointer(scope, builder!,[field], {});
}

void onSavedProxy<T>( newValue) {
 engine.callFunctionPointer(scope, onSaved!,[newValue], {});
}

String validatorProxy<T>( value) {
return  engine.callFunctionPointer(scope, validator!,[value], {});
}

return FormField(autovalidateMode:autovalidateMode, builder:builderProxy, enabled:enabled ?? true, initialValue:initialValue, key:key, onSaved:onSaved == null ? null :onSavedProxy, restorationId:restorationId, validator:validator == null ? null :validatorProxy);
},
'package:flutter/src/widgets/form.dart@FormField@createState': (m.Scope scope, FormField target)=>target.createState,
'package:flutter/src/widgets/form.dart@FormFieldState@#as': (m.Scope scope, target)=>()=>target as FormFieldState,
'package:flutter/src/widgets/form.dart@FormFieldState@#is': (m.Scope scope, target)=>()=>target is FormFieldState,
'package:flutter/src/widgets/form.dart@FormFieldState@value': (m.Scope scope, FormFieldState target)=>target.value,
'package:flutter/src/widgets/form.dart@FormFieldState@errorText': (m.Scope scope, FormFieldState target)=>target.errorText,
'package:flutter/src/widgets/form.dart@FormFieldState@hasError': (m.Scope scope, FormFieldState target)=>target.hasError,
'package:flutter/src/widgets/form.dart@FormFieldState@isValid': (m.Scope scope, FormFieldState target)=>target.isValid,
'package:flutter/src/widgets/form.dart@FormFieldState@restorationId': (m.Scope scope, FormFieldState target)=>target.restorationId,
'package:flutter/src/widgets/form.dart@FormFieldState@': (m.Scope scope)=><T>(){
return FormFieldState();
},
'package:flutter/src/widgets/form.dart@FormFieldState@save': (m.Scope scope, FormFieldState target)=>target.save,
'package:flutter/src/widgets/form.dart@FormFieldState@reset': (m.Scope scope, FormFieldState target)=>target.reset,
'package:flutter/src/widgets/form.dart@FormFieldState@validate': (m.Scope scope, FormFieldState target)=>target.validate,
'package:flutter/src/widgets/form.dart@FormFieldState@didChange': (m.Scope scope, FormFieldState target)=>target.didChange,
'package:flutter/src/widgets/form.dart@FormFieldState@setValue': (m.Scope scope, FormFieldState target)=>target.setValue,
'package:flutter/src/widgets/form.dart@FormFieldState@restoreState': (m.Scope scope, FormFieldState target)=>target.restoreState,
'package:flutter/src/widgets/form.dart@FormFieldState@deactivate': (m.Scope scope, FormFieldState target)=>target.deactivate,
'package:flutter/src/widgets/form.dart@FormFieldState@build': (m.Scope scope, FormFieldState target)=>target.build,

};
}