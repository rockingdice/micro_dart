import 'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart' show TextSelectionToolbarLayoutDelegate;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@#as': (m.Scope scope, target)=>()=>target as SpellCheckSuggestionsToolbarLayoutDelegate,
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@#is': (m.Scope scope, target)=>()=>target is SpellCheckSuggestionsToolbarLayoutDelegate,
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@anchor': (m.Scope scope, SpellCheckSuggestionsToolbarLayoutDelegate target)=>target.anchor,
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@': (m.Scope scope)=>({ anchor}){
return SpellCheckSuggestionsToolbarLayoutDelegate(anchor:anchor);
},
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@getConstraintsForChild': (m.Scope scope, SpellCheckSuggestionsToolbarLayoutDelegate target)=>target.getConstraintsForChild,
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@getPositionForChild': (m.Scope scope, SpellCheckSuggestionsToolbarLayoutDelegate target)=>target.getPositionForChild,
'package:flutter/src/material/spell_check_suggestions_toolbar_layout_delegate.dart@SpellCheckSuggestionsToolbarLayoutDelegate@shouldRelayout': (m.Scope scope, SpellCheckSuggestionsToolbarLayoutDelegate target)=>target.shouldRelayout,

};
}