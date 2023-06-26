import 'package:flutter/src/widgets/spell_check.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show TargetPlatform,defaultTargetPlatform;
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart' show SpellCheckResults,SpellCheckService,SuggestionSpan,TextEditingValue;
import 'package:flutter/src/widgets/editable_text.dart' show EditableTextContextMenuBuilder;
import 'package:flutter/src/widgets/framework.dart' show immutable;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@#as': (m.Scope scope, target)=>()=>target as SpellCheckConfiguration,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@#is': (m.Scope scope, target)=>()=>target is SpellCheckConfiguration,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@spellCheckService': (m.Scope scope, SpellCheckConfiguration target)=>target.spellCheckService,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@misspelledSelectionColor': (m.Scope scope, SpellCheckConfiguration target)=>target.misspelledSelectionColor,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@misspelledTextStyle': (m.Scope scope, SpellCheckConfiguration target)=>target.misspelledTextStyle,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@spellCheckSuggestionsToolbarBuilder': (m.Scope scope, SpellCheckConfiguration target)=>target.spellCheckSuggestionsToolbarBuilder,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@spellCheckEnabled': (m.Scope scope, SpellCheckConfiguration target)=>target.spellCheckEnabled,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@hashCode': (m.Scope scope, SpellCheckConfiguration target)=>target.hashCode,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@': (m.Scope scope)=>({ misspelledSelectionColor,  misspelledTextStyle,  spellCheckService,  spellCheckSuggestionsToolbarBuilder}){
Widget spellCheckSuggestionsToolbarBuilderProxy( context,  editableTextState) {
return  engine.callFunctionPointer(scope, spellCheckSuggestionsToolbarBuilder!,[context, editableTextState], {});
}

return SpellCheckConfiguration(misspelledSelectionColor:misspelledSelectionColor, misspelledTextStyle:misspelledTextStyle, spellCheckService:spellCheckService, spellCheckSuggestionsToolbarBuilder:spellCheckSuggestionsToolbarBuilder == null ? null :spellCheckSuggestionsToolbarBuilderProxy);
},
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@disabled': (m.Scope scope)=>SpellCheckConfiguration.disabled,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@copyWith': (m.Scope scope, SpellCheckConfiguration target)=>({ misspelledSelectionColor,  misspelledTextStyle,  spellCheckService,  spellCheckSuggestionsToolbarBuilder}){
Widget spellCheckSuggestionsToolbarBuilderProxy( context,  editableTextState) {
return  engine.callFunctionPointer(scope, spellCheckSuggestionsToolbarBuilder!,[context, editableTextState], {});
}

return target.copyWith(misspelledSelectionColor:misspelledSelectionColor, misspelledTextStyle:misspelledTextStyle, spellCheckService:spellCheckService, spellCheckSuggestionsToolbarBuilder:spellCheckSuggestionsToolbarBuilder == null ? null :spellCheckSuggestionsToolbarBuilderProxy);
},
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@toString': (m.Scope scope, SpellCheckConfiguration target)=>target.toString,
'package:flutter/src/widgets/spell_check.dart@SpellCheckConfiguration@==': (m.Scope scope, SpellCheckConfiguration target)=>(other)=> target == other,
'package:flutter/src/widgets/spell_check.dart@@buildTextSpanWithSpellCheckSuggestions': (m.Scope scope)=>buildTextSpanWithSpellCheckSuggestions,

};
}