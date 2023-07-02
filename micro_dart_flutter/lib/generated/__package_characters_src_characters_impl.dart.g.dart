import 'package:characters/src/characters_impl.dart';
import 'package:characters/src/grapheme_clusters/table.dart';
import 'package:characters/src/characters.dart';
import 'package:characters/src/grapheme_clusters/constants.dart';
import 'package:characters/src/grapheme_clusters/breaks.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:characters/src/characters_impl.dart@StringCharacters@#as': (m.Scope scope, target)=>()=>target as StringCharacters,
'package:characters/src/characters_impl.dart@StringCharacters@#is': (m.Scope scope, target)=>()=>target is StringCharacters,
'package:characters/src/characters_impl.dart@StringCharacters@string': (m.Scope scope, StringCharacters target)=>target.string,
'package:characters/src/characters_impl.dart@StringCharacters@iterator': (m.Scope scope, StringCharacters target)=>target.iterator,
'package:characters/src/characters_impl.dart@StringCharacters@iteratorAtEnd': (m.Scope scope, StringCharacters target)=>target.iteratorAtEnd,
'package:characters/src/characters_impl.dart@StringCharacters@first': (m.Scope scope, StringCharacters target)=>target.first,
'package:characters/src/characters_impl.dart@StringCharacters@last': (m.Scope scope, StringCharacters target)=>target.last,
'package:characters/src/characters_impl.dart@StringCharacters@single': (m.Scope scope, StringCharacters target)=>target.single,
'package:characters/src/characters_impl.dart@StringCharacters@isEmpty': (m.Scope scope, StringCharacters target)=>target.isEmpty,
'package:characters/src/characters_impl.dart@StringCharacters@isNotEmpty': (m.Scope scope, StringCharacters target)=>target.isNotEmpty,
'package:characters/src/characters_impl.dart@StringCharacters@length': (m.Scope scope, StringCharacters target)=>target.length,
'package:characters/src/characters_impl.dart@StringCharacters@hashCode': (m.Scope scope, StringCharacters target)=>target.hashCode,
'package:characters/src/characters_impl.dart@StringCharacters@': (m.Scope scope)=>( string){
return StringCharacters(string);
},
'package:characters/src/characters_impl.dart@StringCharacters@whereType': (m.Scope scope, StringCharacters target)=>target.whereType,
'package:characters/src/characters_impl.dart@StringCharacters@join': (m.Scope scope, StringCharacters target)=>target.join,
'package:characters/src/characters_impl.dart@StringCharacters@lastWhere': (m.Scope scope, StringCharacters target)=>( test, { orElse}){
bool testProxy( element) {
return  engine.callFunctionPointer(scope, test!,[element], {});
}

String orElseProxy() {
return  engine.callFunctionPointer(scope, orElse!,[], {});
}

return target.lastWhere(testProxy, orElse:orElse == null ? null :orElseProxy);
},
'package:characters/src/characters_impl.dart@StringCharacters@elementAt': (m.Scope scope, StringCharacters target)=>target.elementAt,
'package:characters/src/characters_impl.dart@StringCharacters@contains': (m.Scope scope, StringCharacters target)=>target.contains,
'package:characters/src/characters_impl.dart@StringCharacters@startsWith': (m.Scope scope, StringCharacters target)=>target.startsWith,
'package:characters/src/characters_impl.dart@StringCharacters@endsWith': (m.Scope scope, StringCharacters target)=>target.endsWith,
'package:characters/src/characters_impl.dart@StringCharacters@replaceAll': (m.Scope scope, StringCharacters target)=>target.replaceAll,
'package:characters/src/characters_impl.dart@StringCharacters@replaceFirst': (m.Scope scope, StringCharacters target)=>target.replaceFirst,
'package:characters/src/characters_impl.dart@StringCharacters@split': (m.Scope scope, StringCharacters target)=>target.split,
'package:characters/src/characters_impl.dart@StringCharacters@containsAll': (m.Scope scope, StringCharacters target)=>target.containsAll,
'package:characters/src/characters_impl.dart@StringCharacters@skip': (m.Scope scope, StringCharacters target)=>target.skip,
'package:characters/src/characters_impl.dart@StringCharacters@take': (m.Scope scope, StringCharacters target)=>target.take,
'package:characters/src/characters_impl.dart@StringCharacters@getRange': (m.Scope scope, StringCharacters target)=>target.getRange,
'package:characters/src/characters_impl.dart@StringCharacters@characterAt': (m.Scope scope, StringCharacters target)=>target.characterAt,
'package:characters/src/characters_impl.dart@StringCharacters@skipWhile': (m.Scope scope, StringCharacters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.skipWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacters@takeWhile': (m.Scope scope, StringCharacters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.takeWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacters@where': (m.Scope scope, StringCharacters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.where(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacters@+': (m.Scope scope, StringCharacters target)=>(other)=> target + other,
'package:characters/src/characters_impl.dart@StringCharacters@skipLast': (m.Scope scope, StringCharacters target)=>target.skipLast,
'package:characters/src/characters_impl.dart@StringCharacters@skipLastWhile': (m.Scope scope, StringCharacters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.skipLastWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacters@takeLast': (m.Scope scope, StringCharacters target)=>target.takeLast,
'package:characters/src/characters_impl.dart@StringCharacters@takeLastWhile': (m.Scope scope, StringCharacters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.takeLastWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacters@toLowerCase': (m.Scope scope, StringCharacters target)=>target.toLowerCase,
'package:characters/src/characters_impl.dart@StringCharacters@toUpperCase': (m.Scope scope, StringCharacters target)=>target.toUpperCase,
'package:characters/src/characters_impl.dart@StringCharacters@==': (m.Scope scope, StringCharacters target)=>(other)=> target == other,
'package:characters/src/characters_impl.dart@StringCharacters@toString': (m.Scope scope, StringCharacters target)=>target.toString,
'package:characters/src/characters_impl.dart@StringCharacters@findFirst': (m.Scope scope, StringCharacters target)=>target.findFirst,
'package:characters/src/characters_impl.dart@StringCharacters@findLast': (m.Scope scope, StringCharacters target)=>target.findLast,
'package:characters/src/characters_impl.dart@StringCharacterRange@#as': (m.Scope scope, target)=>()=>target as StringCharacterRange,
'package:characters/src/characters_impl.dart@StringCharacterRange@#is': (m.Scope scope, target)=>()=>target is StringCharacterRange,
'package:characters/src/characters_impl.dart@StringCharacterRange@current': (m.Scope scope, StringCharacterRange target)=>target.current,
'package:characters/src/characters_impl.dart@StringCharacterRange@utf16CodeUnits': (m.Scope scope, StringCharacterRange target)=>target.utf16CodeUnits,
'package:characters/src/characters_impl.dart@StringCharacterRange@runes': (m.Scope scope, StringCharacterRange target)=>target.runes,
'package:characters/src/characters_impl.dart@StringCharacterRange@isEmpty': (m.Scope scope, StringCharacterRange target)=>target.isEmpty,
'package:characters/src/characters_impl.dart@StringCharacterRange@isNotEmpty': (m.Scope scope, StringCharacterRange target)=>target.isNotEmpty,
'package:characters/src/characters_impl.dart@StringCharacterRange@source': (m.Scope scope, StringCharacterRange target)=>target.source,
'package:characters/src/characters_impl.dart@StringCharacterRange@charactersAfter': (m.Scope scope, StringCharacterRange target)=>target.charactersAfter,
'package:characters/src/characters_impl.dart@StringCharacterRange@charactersBefore': (m.Scope scope, StringCharacterRange target)=>target.charactersBefore,
'package:characters/src/characters_impl.dart@StringCharacterRange@currentCharacters': (m.Scope scope, StringCharacterRange target)=>target.currentCharacters,
'package:characters/src/characters_impl.dart@StringCharacterRange@stringAfter': (m.Scope scope, StringCharacterRange target)=>target.stringAfter,
'package:characters/src/characters_impl.dart@StringCharacterRange@stringAfterLength': (m.Scope scope, StringCharacterRange target)=>target.stringAfterLength,
'package:characters/src/characters_impl.dart@StringCharacterRange@stringBefore': (m.Scope scope, StringCharacterRange target)=>target.stringBefore,
'package:characters/src/characters_impl.dart@StringCharacterRange@stringBeforeLength': (m.Scope scope, StringCharacterRange target)=>target.stringBeforeLength,
'package:characters/src/characters_impl.dart@StringCharacterRange@': (m.Scope scope)=>( string){
return StringCharacterRange(string);
},
'package:characters/src/characters_impl.dart@StringCharacterRange@at': (m.Scope scope)=>StringCharacterRange.at,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveNext': (m.Scope scope, StringCharacterRange target)=>target.moveNext,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveBack': (m.Scope scope, StringCharacterRange target)=>target.moveBack,
'package:characters/src/characters_impl.dart@StringCharacterRange@copy': (m.Scope scope, StringCharacterRange target)=>target.copy,
'package:characters/src/characters_impl.dart@StringCharacterRange@collapseToEnd': (m.Scope scope, StringCharacterRange target)=>target.collapseToEnd,
'package:characters/src/characters_impl.dart@StringCharacterRange@collapseToStart': (m.Scope scope, StringCharacterRange target)=>target.collapseToStart,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropFirst': (m.Scope scope, StringCharacterRange target)=>target.dropFirst,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropTo': (m.Scope scope, StringCharacterRange target)=>target.dropTo,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropUntil': (m.Scope scope, StringCharacterRange target)=>target.dropUntil,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropWhile': (m.Scope scope, StringCharacterRange target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.dropWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacterRange@dropLast': (m.Scope scope, StringCharacterRange target)=>target.dropLast,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropBackTo': (m.Scope scope, StringCharacterRange target)=>target.dropBackTo,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropBackUntil': (m.Scope scope, StringCharacterRange target)=>target.dropBackUntil,
'package:characters/src/characters_impl.dart@StringCharacterRange@dropBackWhile': (m.Scope scope, StringCharacterRange target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.dropBackWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacterRange@expandNext': (m.Scope scope, StringCharacterRange target)=>target.expandNext,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandTo': (m.Scope scope, StringCharacterRange target)=>target.expandTo,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandWhile': (m.Scope scope, StringCharacterRange target)=>( test){
bool testProxy( character) {
return  engine.callFunctionPointer(scope, test!,[character], {});
}

target.expandWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacterRange@expandAll': (m.Scope scope, StringCharacterRange target)=>target.expandAll,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandBack': (m.Scope scope, StringCharacterRange target)=>target.expandBack,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandBackTo': (m.Scope scope, StringCharacterRange target)=>target.expandBackTo,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandBackWhile': (m.Scope scope, StringCharacterRange target)=>( test){
bool testProxy( character) {
return  engine.callFunctionPointer(scope, test!,[character], {});
}

target.expandBackWhile(testProxy);
},
'package:characters/src/characters_impl.dart@StringCharacterRange@expandBackUntil': (m.Scope scope, StringCharacterRange target)=>target.expandBackUntil,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandBackAll': (m.Scope scope, StringCharacterRange target)=>target.expandBackAll,
'package:characters/src/characters_impl.dart@StringCharacterRange@expandUntil': (m.Scope scope, StringCharacterRange target)=>target.expandUntil,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveBackUntil': (m.Scope scope, StringCharacterRange target)=>target.moveBackUntil,
'package:characters/src/characters_impl.dart@StringCharacterRange@collapseToFirst': (m.Scope scope, StringCharacterRange target)=>target.collapseToFirst,
'package:characters/src/characters_impl.dart@StringCharacterRange@collapseToLast': (m.Scope scope, StringCharacterRange target)=>target.collapseToLast,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveUntil': (m.Scope scope, StringCharacterRange target)=>target.moveUntil,
'package:characters/src/characters_impl.dart@StringCharacterRange@replaceFirst': (m.Scope scope, StringCharacterRange target)=>target.replaceFirst,
'package:characters/src/characters_impl.dart@StringCharacterRange@replaceAll': (m.Scope scope, StringCharacterRange target)=>target.replaceAll,
'package:characters/src/characters_impl.dart@StringCharacterRange@replaceRange': (m.Scope scope, StringCharacterRange target)=>target.replaceRange,
'package:characters/src/characters_impl.dart@StringCharacterRange@startsWith': (m.Scope scope, StringCharacterRange target)=>target.startsWith,
'package:characters/src/characters_impl.dart@StringCharacterRange@endsWith': (m.Scope scope, StringCharacterRange target)=>target.endsWith,
'package:characters/src/characters_impl.dart@StringCharacterRange@isFollowedBy': (m.Scope scope, StringCharacterRange target)=>target.isFollowedBy,
'package:characters/src/characters_impl.dart@StringCharacterRange@isPrecededBy': (m.Scope scope, StringCharacterRange target)=>target.isPrecededBy,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveBackTo': (m.Scope scope, StringCharacterRange target)=>target.moveBackTo,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveTo': (m.Scope scope, StringCharacterRange target)=>target.moveTo,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveBackAll': (m.Scope scope, StringCharacterRange target)=>target.moveBackAll,
'package:characters/src/characters_impl.dart@StringCharacterRange@moveNextAll': (m.Scope scope, StringCharacterRange target)=>target.moveNextAll,
'package:characters/src/characters_impl.dart@StringCharacterRange@split': (m.Scope scope, StringCharacterRange target)=>target.split,

};
}