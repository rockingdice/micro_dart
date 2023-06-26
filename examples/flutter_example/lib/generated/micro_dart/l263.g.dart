import 'package:flutter/src/widgets/inherited_model.dart';
import 'dart:collection';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/inherited_model.dart@InheritedModel@#as': (m.Scope scope, target)=>()=>target as InheritedModel,
'package:flutter/src/widgets/inherited_model.dart@InheritedModel@#is': (m.Scope scope, target)=>()=>target is InheritedModel,
'package:flutter/src/widgets/inherited_model.dart@InheritedModel@createElement': (m.Scope scope, InheritedModel target)=>target.createElement,
'package:flutter/src/widgets/inherited_model.dart@InheritedModel@updateShouldNotifyDependent': (m.Scope scope, InheritedModel target)=>target.updateShouldNotifyDependent,
'package:flutter/src/widgets/inherited_model.dart@InheritedModel@isSupportedAspect': (m.Scope scope, InheritedModel target)=>target.isSupportedAspect,
'package:flutter/src/widgets/inherited_model.dart@InheritedModel@inheritFrom': (m.Scope scope)=>InheritedModel.inheritFrom,
'package:flutter/src/widgets/inherited_model.dart@InheritedModelElement@#as': (m.Scope scope, target)=>()=>target as InheritedModelElement,
'package:flutter/src/widgets/inherited_model.dart@InheritedModelElement@#is': (m.Scope scope, target)=>()=>target is InheritedModelElement,
'package:flutter/src/widgets/inherited_model.dart@InheritedModelElement@': (m.Scope scope)=>InheritedModelElement,
'package:flutter/src/widgets/inherited_model.dart@InheritedModelElement@updateDependencies': (m.Scope scope, InheritedModelElement target)=>target.updateDependencies,
'package:flutter/src/widgets/inherited_model.dart@InheritedModelElement@notifyDependent': (m.Scope scope, InheritedModelElement target)=>target.notifyDependent,

};
}