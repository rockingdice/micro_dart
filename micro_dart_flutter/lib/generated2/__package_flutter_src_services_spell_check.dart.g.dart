import 'package:flutter/src/services/spell_check.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/spell_check.dart@SuggestionSpan@#as': (m.Scope scope, target)=>()=>target as SuggestionSpan,
'package:flutter/src/services/spell_check.dart@SuggestionSpan@#is': (m.Scope scope, target)=>()=>target is SuggestionSpan,
'package:flutter/src/services/spell_check.dart@SuggestionSpan@range': (m.Scope scope, SuggestionSpan target)=>target.range,
'package:flutter/src/services/spell_check.dart@SuggestionSpan@suggestions': (m.Scope scope, SuggestionSpan target)=>target.suggestions,
'package:flutter/src/services/spell_check.dart@SuggestionSpan@hashCode': (m.Scope scope, SuggestionSpan target)=>target.hashCode,
'package:flutter/src/services/spell_check.dart@SuggestionSpan@': (m.Scope scope)=>( range,  suggestions){
return SuggestionSpan(range, suggestions);
},
'package:flutter/src/services/spell_check.dart@SuggestionSpan@==': (m.Scope scope, SuggestionSpan target)=>(other)=> target == other,
'package:flutter/src/services/spell_check.dart@SpellCheckResults@#as': (m.Scope scope, target)=>()=>target as SpellCheckResults,
'package:flutter/src/services/spell_check.dart@SpellCheckResults@#is': (m.Scope scope, target)=>()=>target is SpellCheckResults,
'package:flutter/src/services/spell_check.dart@SpellCheckResults@spellCheckedText': (m.Scope scope, SpellCheckResults target)=>target.spellCheckedText,
'package:flutter/src/services/spell_check.dart@SpellCheckResults@suggestionSpans': (m.Scope scope, SpellCheckResults target)=>target.suggestionSpans,
'package:flutter/src/services/spell_check.dart@SpellCheckResults@hashCode': (m.Scope scope, SpellCheckResults target)=>target.hashCode,
'package:flutter/src/services/spell_check.dart@SpellCheckResults@': (m.Scope scope)=>( spellCheckedText,  suggestionSpans){
return SpellCheckResults(spellCheckedText, suggestionSpans);
},
'package:flutter/src/services/spell_check.dart@SpellCheckResults@==': (m.Scope scope, SpellCheckResults target)=>(other)=> target == other,
'package:flutter/src/services/spell_check.dart@SpellCheckService@#as': (m.Scope scope, target)=>()=>target as SpellCheckService,
'package:flutter/src/services/spell_check.dart@SpellCheckService@#is': (m.Scope scope, target)=>()=>target is SpellCheckService,
'package:flutter/src/services/spell_check.dart@SpellCheckService@fetchSpellCheckSuggestions': (m.Scope scope, SpellCheckService target)=>target.fetchSpellCheckSuggestions,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@#as': (m.Scope scope, target)=>()=>target as DefaultSpellCheckService,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@#is': (m.Scope scope, target)=>()=>target is DefaultSpellCheckService,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@lastSavedResults': (m.Scope scope, DefaultSpellCheckService target)=>target.lastSavedResults,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@lastSavedResults:set': (m.Scope scope, DefaultSpellCheckService target)=>(other)=>target.lastSavedResults=other,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@spellCheckChannel': (m.Scope scope, DefaultSpellCheckService target)=>target.spellCheckChannel,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@spellCheckChannel:set': (m.Scope scope, DefaultSpellCheckService target)=>(other)=>target.spellCheckChannel=other,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@': (m.Scope scope)=>(){
return DefaultSpellCheckService();
},
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@mergeResults': (m.Scope scope)=>DefaultSpellCheckService.mergeResults,
'package:flutter/src/services/spell_check.dart@DefaultSpellCheckService@fetchSpellCheckSuggestions': (m.Scope scope, DefaultSpellCheckService target)=>target.fetchSpellCheckSuggestions,

};
}