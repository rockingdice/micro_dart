import 'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart' show SelectionChangedCause,SuggestionSpan;
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/debug.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar_button.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@#as': (m.Scope scope, target)=>()=>target as CupertinoSpellCheckSuggestionsToolbar,
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@#is': (m.Scope scope, target)=>()=>target is CupertinoSpellCheckSuggestionsToolbar,
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@anchors': (m.Scope scope, CupertinoSpellCheckSuggestionsToolbar target)=>target.anchors,
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@buttonItems': (m.Scope scope, CupertinoSpellCheckSuggestionsToolbar target)=>target.buttonItems,
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@': (m.Scope scope)=>({ anchors,  buttonItems,  key}){
return CupertinoSpellCheckSuggestionsToolbar(anchors:anchors, buttonItems:buttonItems, key:key);
},
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@editableText': (m.Scope scope)=>CupertinoSpellCheckSuggestionsToolbar.editableText,
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@buildButtonItems': (m.Scope scope)=>CupertinoSpellCheckSuggestionsToolbar.buildButtonItems,
'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart@CupertinoSpellCheckSuggestionsToolbar@build': (m.Scope scope, CupertinoSpellCheckSuggestionsToolbar target)=>target.build,

};
}