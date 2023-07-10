import 'package:flutter/src/widgets/autofill.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/autofill.dart@AutofillGroup@#as': (m.Scope scope, target)=>()=>target as AutofillGroup,
'package:flutter/src/widgets/autofill.dart@AutofillGroup@#is': (m.Scope scope, target)=>()=>target is AutofillGroup,
'package:flutter/src/widgets/autofill.dart@AutofillGroup@child': (m.Scope scope, AutofillGroup target)=>target.child,
'package:flutter/src/widgets/autofill.dart@AutofillGroup@onDisposeAction': (m.Scope scope, AutofillGroup target)=>target.onDisposeAction,
'package:flutter/src/widgets/autofill.dart@AutofillGroup@': (m.Scope scope)=>({ child,  key,  onDisposeAction}){
return AutofillGroup(child:child, key:key, onDisposeAction:onDisposeAction ?? AutofillContextAction.commit);
},
'package:flutter/src/widgets/autofill.dart@AutofillGroup@maybeOf': (m.Scope scope)=>AutofillGroup.maybeOf,
'package:flutter/src/widgets/autofill.dart@AutofillGroup@of': (m.Scope scope)=>AutofillGroup.of,
'package:flutter/src/widgets/autofill.dart@AutofillGroup@createState': (m.Scope scope, AutofillGroup target)=>target.createState,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@#as': (m.Scope scope, target)=>()=>target as AutofillGroupState,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@#is': (m.Scope scope, target)=>()=>target is AutofillGroupState,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@autofillClients': (m.Scope scope, AutofillGroupState target)=>target.autofillClients,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@': (m.Scope scope)=>(){
return AutofillGroupState();
},
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@getAutofillClient': (m.Scope scope, AutofillGroupState target)=>target.getAutofillClient,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@register': (m.Scope scope, AutofillGroupState target)=>target.register,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@unregister': (m.Scope scope, AutofillGroupState target)=>target.unregister,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@didChangeDependencies': (m.Scope scope, AutofillGroupState target)=>target.didChangeDependencies,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@build': (m.Scope scope, AutofillGroupState target)=>target.build,
'package:flutter/src/widgets/autofill.dart@AutofillGroupState@dispose': (m.Scope scope, AutofillGroupState target)=>target.dispose,

};
}