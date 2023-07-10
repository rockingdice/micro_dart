import 'package:flutter/src/material/stepper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/stepper.dart@ControlsDetails@#as': (m.Scope scope, target)=>()=>target as ControlsDetails,
'package:flutter/src/material/stepper.dart@ControlsDetails@#is': (m.Scope scope, target)=>()=>target is ControlsDetails,
'package:flutter/src/material/stepper.dart@ControlsDetails@currentStep': (m.Scope scope, ControlsDetails target)=>target.currentStep,
'package:flutter/src/material/stepper.dart@ControlsDetails@stepIndex': (m.Scope scope, ControlsDetails target)=>target.stepIndex,
'package:flutter/src/material/stepper.dart@ControlsDetails@onStepContinue': (m.Scope scope, ControlsDetails target)=>target.onStepContinue,
'package:flutter/src/material/stepper.dart@ControlsDetails@onStepCancel': (m.Scope scope, ControlsDetails target)=>target.onStepCancel,
'package:flutter/src/material/stepper.dart@ControlsDetails@isActive': (m.Scope scope, ControlsDetails target)=>target.isActive,
'package:flutter/src/material/stepper.dart@ControlsDetails@': (m.Scope scope)=>({ currentStep,  onStepCancel,  onStepContinue,  stepIndex}){
void onStepCancelProxy() {
 engine.callFunctionPointer(scope, onStepCancel!,[], {});
}

void onStepContinueProxy() {
 engine.callFunctionPointer(scope, onStepContinue!,[], {});
}

return ControlsDetails(currentStep:currentStep, onStepCancel:onStepCancel == null ? null :onStepCancelProxy, onStepContinue:onStepContinue == null ? null :onStepContinueProxy, stepIndex:stepIndex);
},
'package:flutter/src/material/stepper.dart@Step@#as': (m.Scope scope, target)=>()=>target as Step,
'package:flutter/src/material/stepper.dart@Step@#is': (m.Scope scope, target)=>()=>target is Step,
'package:flutter/src/material/stepper.dart@Step@title': (m.Scope scope, Step target)=>target.title,
'package:flutter/src/material/stepper.dart@Step@subtitle': (m.Scope scope, Step target)=>target.subtitle,
'package:flutter/src/material/stepper.dart@Step@content': (m.Scope scope, Step target)=>target.content,
'package:flutter/src/material/stepper.dart@Step@state': (m.Scope scope, Step target)=>target.state,
'package:flutter/src/material/stepper.dart@Step@isActive': (m.Scope scope, Step target)=>target.isActive,
'package:flutter/src/material/stepper.dart@Step@label': (m.Scope scope, Step target)=>target.label,
'package:flutter/src/material/stepper.dart@Step@': (m.Scope scope)=>({ content,  isActive,  label,  state,  subtitle,  title}){
return Step(content:content, isActive:isActive ?? false, label:label, state:state ?? StepState.indexed, subtitle:subtitle, title:title);
},
'package:flutter/src/material/stepper.dart@Stepper@#as': (m.Scope scope, target)=>()=>target as Stepper,
'package:flutter/src/material/stepper.dart@Stepper@#is': (m.Scope scope, target)=>()=>target is Stepper,
'package:flutter/src/material/stepper.dart@Stepper@steps': (m.Scope scope, Stepper target)=>target.steps,
'package:flutter/src/material/stepper.dart@Stepper@physics': (m.Scope scope, Stepper target)=>target.physics,
'package:flutter/src/material/stepper.dart@Stepper@type': (m.Scope scope, Stepper target)=>target.type,
'package:flutter/src/material/stepper.dart@Stepper@currentStep': (m.Scope scope, Stepper target)=>target.currentStep,
'package:flutter/src/material/stepper.dart@Stepper@onStepTapped': (m.Scope scope, Stepper target)=>target.onStepTapped,
'package:flutter/src/material/stepper.dart@Stepper@onStepContinue': (m.Scope scope, Stepper target)=>target.onStepContinue,
'package:flutter/src/material/stepper.dart@Stepper@onStepCancel': (m.Scope scope, Stepper target)=>target.onStepCancel,
'package:flutter/src/material/stepper.dart@Stepper@controlsBuilder': (m.Scope scope, Stepper target)=>target.controlsBuilder,
'package:flutter/src/material/stepper.dart@Stepper@elevation': (m.Scope scope, Stepper target)=>target.elevation,
'package:flutter/src/material/stepper.dart@Stepper@margin': (m.Scope scope, Stepper target)=>target.margin,
'package:flutter/src/material/stepper.dart@Stepper@stepIconBuilder': (m.Scope scope, Stepper target)=>target.stepIconBuilder,
'package:flutter/src/material/stepper.dart@Stepper@': (m.Scope scope)=>({ controlsBuilder,  currentStep,  elevation,  key,  margin,  onStepCancel,  onStepContinue,  onStepTapped,  physics,  stepIconBuilder,  steps,  type}){
Widget controlsBuilderProxy( context,  details) {
return  engine.callFunctionPointer(scope, controlsBuilder!,[context, details], {});
}

void onStepCancelProxy() {
 engine.callFunctionPointer(scope, onStepCancel!,[], {});
}

void onStepContinueProxy() {
 engine.callFunctionPointer(scope, onStepContinue!,[], {});
}

void onStepTappedProxy( value) {
 engine.callFunctionPointer(scope, onStepTapped!,[value], {});
}

Widget stepIconBuilderProxy( stepIndex,  stepState) {
return  engine.callFunctionPointer(scope, stepIconBuilder!,[stepIndex, stepState], {});
}

return Stepper(controlsBuilder:controlsBuilder == null ? null :controlsBuilderProxy, currentStep:currentStep ?? 0, elevation:elevation, key:key, margin:margin, onStepCancel:onStepCancel == null ? null :onStepCancelProxy, onStepContinue:onStepContinue == null ? null :onStepContinueProxy, onStepTapped:onStepTapped == null ? null :onStepTappedProxy, physics:physics, stepIconBuilder:stepIconBuilder == null ? null :stepIconBuilderProxy, steps:steps, type:type ?? StepperType.vertical);
},
'package:flutter/src/material/stepper.dart@Stepper@createState': (m.Scope scope, Stepper target)=>target.createState,

};
}