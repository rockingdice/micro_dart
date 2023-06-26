import 'package:flutter/src/widgets/autocomplete.dart';
import 'dart:async';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:flutter/src/widgets/tap_region.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@#as': (m.Scope scope, target)=>()=>target as RawAutocomplete,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@#is': (m.Scope scope, target)=>()=>target is RawAutocomplete,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@fieldViewBuilder': (m.Scope scope, RawAutocomplete target)=>target.fieldViewBuilder,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@focusNode': (m.Scope scope, RawAutocomplete target)=>target.focusNode,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@optionsViewBuilder': (m.Scope scope, RawAutocomplete target)=>target.optionsViewBuilder,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@displayStringForOption': (m.Scope scope, RawAutocomplete target)=>target.displayStringForOption,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@onSelected': (m.Scope scope, RawAutocomplete target)=>target.onSelected,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@optionsBuilder': (m.Scope scope, RawAutocomplete target)=>target.optionsBuilder,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@textEditingController': (m.Scope scope, RawAutocomplete target)=>target.textEditingController,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@initialValue': (m.Scope scope, RawAutocomplete target)=>target.initialValue,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@': (m.Scope scope)=>({ displayStringForOption,  fieldViewBuilder,  focusNode,  initialValue,  key,  onSelected,  optionsBuilder,  optionsViewBuilder,  textEditingController}){
String displayStringForOptionProxy<T>( option) {
return  engine.callFunctionPointer(scope, displayStringForOption!,[option], {});
}

Widget fieldViewBuilderProxy( context,  textEditingController,  focusNode,  onFieldSubmitted) {
return  engine.callFunctionPointer(scope, fieldViewBuilder!,[context, textEditingController, focusNode, onFieldSubmitted], {});
}

void onSelectedProxy<T>( option) {
 engine.callFunctionPointer(scope, onSelected!,[option], {});
}

FutureOr<Iterable<T>> optionsBuilderProxy( textEditingValue) async{
return await engine.callFunctionPointerAsync(scope, optionsBuilder!,[textEditingValue], {});
}

Widget optionsViewBuilderProxy<T>( context,  onSelected,  options) {
return  engine.callFunctionPointer(scope, optionsViewBuilder!,[context, onSelected, options], {});
}

return RawAutocomplete(displayStringForOption:displayStringForOption == null ? defaultStringForOption :displayStringForOptionProxy, fieldViewBuilder:fieldViewBuilder == null ? null :fieldViewBuilderProxy, focusNode:focusNode, initialValue:initialValue, key:key, onSelected:onSelected == null ? null :onSelectedProxy, optionsBuilder:optionsBuilderProxy, optionsViewBuilder:optionsViewBuilderProxy, textEditingController:textEditingController);
},
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@onFieldSubmitted': (m.Scope scope)=>RawAutocomplete.onFieldSubmitted,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@defaultStringForOption': (m.Scope scope)=>RawAutocomplete.defaultStringForOption,
'package:flutter/src/widgets/autocomplete.dart@RawAutocomplete@createState': (m.Scope scope, RawAutocomplete target)=>target.createState,
'package:flutter/src/widgets/autocomplete.dart@AutocompletePreviousOptionIntent@#as': (m.Scope scope, target)=>()=>target as AutocompletePreviousOptionIntent,
'package:flutter/src/widgets/autocomplete.dart@AutocompletePreviousOptionIntent@#is': (m.Scope scope, target)=>()=>target is AutocompletePreviousOptionIntent,
'package:flutter/src/widgets/autocomplete.dart@AutocompletePreviousOptionIntent@': (m.Scope scope)=>(){
return AutocompletePreviousOptionIntent();
},
'package:flutter/src/widgets/autocomplete.dart@AutocompleteNextOptionIntent@#as': (m.Scope scope, target)=>()=>target as AutocompleteNextOptionIntent,
'package:flutter/src/widgets/autocomplete.dart@AutocompleteNextOptionIntent@#is': (m.Scope scope, target)=>()=>target is AutocompleteNextOptionIntent,
'package:flutter/src/widgets/autocomplete.dart@AutocompleteNextOptionIntent@': (m.Scope scope)=>(){
return AutocompleteNextOptionIntent();
},
'package:flutter/src/widgets/autocomplete.dart@AutocompleteHighlightedOption@#as': (m.Scope scope, target)=>()=>target as AutocompleteHighlightedOption,
'package:flutter/src/widgets/autocomplete.dart@AutocompleteHighlightedOption@#is': (m.Scope scope, target)=>()=>target is AutocompleteHighlightedOption,
'package:flutter/src/widgets/autocomplete.dart@AutocompleteHighlightedOption@': (m.Scope scope)=>AutocompleteHighlightedOption,
'package:flutter/src/widgets/autocomplete.dart@AutocompleteHighlightedOption@of': (m.Scope scope)=>AutocompleteHighlightedOption.of,

};
}