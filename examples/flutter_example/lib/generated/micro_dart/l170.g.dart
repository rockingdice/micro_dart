import 'package:flutter/src/material/spell_check_suggestions_toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart' show SelectionChangedCause,SuggestionSpan;
import 'package:flutter/src/material/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart';
import 'package:flutter/src/material/text_selection_toolbar_text_button.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@#as': (m.Scope scope, target)=>()=>target as SpellCheckSuggestionsToolbar,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@#is': (m.Scope scope, target)=>()=>target is SpellCheckSuggestionsToolbar,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@anchor': (m.Scope scope, SpellCheckSuggestionsToolbar target)=>target.anchor,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@buttonItems': (m.Scope scope, SpellCheckSuggestionsToolbar target)=>target.buttonItems,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@': (m.Scope scope)=>SpellCheckSuggestionsToolbar,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@editableText': (m.Scope scope)=>SpellCheckSuggestionsToolbar.editableText,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@buildButtonItems': (m.Scope scope)=>SpellCheckSuggestionsToolbar.buildButtonItems,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@getToolbarAnchor': (m.Scope scope)=>SpellCheckSuggestionsToolbar.getToolbarAnchor,
'package:flutter/src/material/spell_check_suggestions_toolbar.dart@SpellCheckSuggestionsToolbar@build': (m.Scope scope, SpellCheckSuggestionsToolbar target)=>target.build,

};
}