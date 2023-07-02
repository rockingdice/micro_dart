import 'package:flutter/src/material/autocomplete.dart';
import 'dart:async';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/autocomplete.dart@Autocomplete@#as': (m.Scope scope, target)=>()=>target as Autocomplete,
'package:flutter/src/material/autocomplete.dart@Autocomplete@#is': (m.Scope scope, target)=>()=>target is Autocomplete,
'package:flutter/src/material/autocomplete.dart@Autocomplete@displayStringForOption': (m.Scope scope, Autocomplete target)=>target.displayStringForOption,
'package:flutter/src/material/autocomplete.dart@Autocomplete@fieldViewBuilder': (m.Scope scope, Autocomplete target)=>target.fieldViewBuilder,
'package:flutter/src/material/autocomplete.dart@Autocomplete@onSelected': (m.Scope scope, Autocomplete target)=>target.onSelected,
'package:flutter/src/material/autocomplete.dart@Autocomplete@optionsBuilder': (m.Scope scope, Autocomplete target)=>target.optionsBuilder,
'package:flutter/src/material/autocomplete.dart@Autocomplete@optionsViewBuilder': (m.Scope scope, Autocomplete target)=>target.optionsViewBuilder,
'package:flutter/src/material/autocomplete.dart@Autocomplete@optionsMaxHeight': (m.Scope scope, Autocomplete target)=>target.optionsMaxHeight,
'package:flutter/src/material/autocomplete.dart@Autocomplete@initialValue': (m.Scope scope, Autocomplete target)=>target.initialValue,
'package:flutter/src/material/autocomplete.dart@Autocomplete@': (m.Scope scope) =><T extends Object>({displayStringForOption,fieldViewBuilder,initialValue,key,onSelected,optionsBuilder,optionsMaxHeight,optionsViewBuilder}) {String displayStringForOptionProxy<T>(option) {return engine.callFunctionPointer(scope, displayStringForOption!, [option], {});}Widget fieldViewBuilderProxy(context, textEditingController, focusNode, onFieldSubmitted) {return engine.callFunctionPointer(scope,fieldViewBuilder!,[context, textEditingController, focusNode, onFieldSubmitted],{});}void onSelectedProxy<T>(option) {engine.callFunctionPointer(scope, onSelected!, [option], {});}FutureOr<Iterable<T>> optionsBuilderProxy(textEditingValue) async {return await engine.callFunctionPointerAsync(scope, optionsBuilder!, [textEditingValue], {});}Widget optionsViewBuilderProxy<T>(context, onSelected, options) {return engine.callFunctionPointer(scope, optionsViewBuilder!, [context, onSelected, options], {});}return Autocomplete<T>(displayStringForOption: displayStringForOption == null? RawAutocomplete.defaultStringForOption: displayStringForOptionProxy,fieldViewBuilder: fieldViewBuilder == null? (BuildContext context,TextEditingController textEditingController,FocusNode focusNode,VoidCallback onFieldSubmitted) {return TextFormField(controller: textEditingController,focusNode: focusNode,onFieldSubmitted: (String value) {onFieldSubmitted();},);}: fieldViewBuilderProxy,initialValue: initialValue,key: key,onSelected: onSelected == null ? null : onSelectedProxy,optionsBuilder: optionsBuilderProxy,optionsMaxHeight: optionsMaxHeight ?? 200.0,optionsViewBuilder: optionsViewBuilder == null ? null : optionsViewBuilderProxy);},
'package:flutter/src/material/autocomplete.dart@Autocomplete@build': (m.Scope scope, Autocomplete target)=>target.build,

};
}