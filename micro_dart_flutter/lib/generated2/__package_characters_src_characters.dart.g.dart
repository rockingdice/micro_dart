import 'package:characters/src/characters.dart';
import 'package:characters/src/characters_impl.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:characters/src/characters.dart@Characters@#as': (m.Scope scope, target)=>()=>target as Characters,
'package:characters/src/characters.dart@Characters@#is': (m.Scope scope, target)=>()=>target is Characters,
'package:characters/src/characters.dart@Characters@empty': (m.Scope scope)=>Characters.empty,
'package:characters/src/characters.dart@Characters@string': (m.Scope scope, Characters target)=>target.string,
'package:characters/src/characters.dart@Characters@iterator': (m.Scope scope, Characters target)=>target.iterator,
'package:characters/src/characters.dart@Characters@iteratorAtEnd': (m.Scope scope, Characters target)=>target.iteratorAtEnd,
'package:characters/src/characters.dart@Characters@hashCode': (m.Scope scope, Characters target)=>target.hashCode,
'package:characters/src/characters.dart@Characters@': (m.Scope scope)=>( string){
return Characters(string);
},
'package:characters/src/characters.dart@Characters@contains': (m.Scope scope, Characters target)=>target.contains,
'package:characters/src/characters.dart@Characters@containsAll': (m.Scope scope, Characters target)=>target.containsAll,
'package:characters/src/characters.dart@Characters@startsWith': (m.Scope scope, Characters target)=>target.startsWith,
'package:characters/src/characters.dart@Characters@endsWith': (m.Scope scope, Characters target)=>target.endsWith,
'package:characters/src/characters.dart@Characters@findFirst': (m.Scope scope, Characters target)=>target.findFirst,
'package:characters/src/characters.dart@Characters@findLast': (m.Scope scope, Characters target)=>target.findLast,
'package:characters/src/characters.dart@Characters@where': (m.Scope scope, Characters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.where(testProxy);
},
'package:characters/src/characters.dart@Characters@skip': (m.Scope scope, Characters target)=>target.skip,
'package:characters/src/characters.dart@Characters@take': (m.Scope scope, Characters target)=>target.take,
'package:characters/src/characters.dart@Characters@getRange': (m.Scope scope, Characters target)=>target.getRange,
'package:characters/src/characters.dart@Characters@characterAt': (m.Scope scope, Characters target)=>target.characterAt,
'package:characters/src/characters.dart@Characters@skipLast': (m.Scope scope, Characters target)=>target.skipLast,
'package:characters/src/characters.dart@Characters@takeLast': (m.Scope scope, Characters target)=>target.takeLast,
'package:characters/src/characters.dart@Characters@skipWhile': (m.Scope scope, Characters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.skipWhile(testProxy);
},
'package:characters/src/characters.dart@Characters@takeWhile': (m.Scope scope, Characters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.takeWhile(testProxy);
},
'package:characters/src/characters.dart@Characters@skipLastWhile': (m.Scope scope, Characters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.skipLastWhile(testProxy);
},
'package:characters/src/characters.dart@Characters@takeLastWhile': (m.Scope scope, Characters target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

return target.takeLastWhile(testProxy);
},
'package:characters/src/characters.dart@Characters@+': (m.Scope scope, Characters target)=>(other)=> target + other,
'package:characters/src/characters.dart@Characters@replaceAll': (m.Scope scope, Characters target)=>target.replaceAll,
'package:characters/src/characters.dart@Characters@split': (m.Scope scope, Characters target)=>target.split,
'package:characters/src/characters.dart@Characters@replaceFirst': (m.Scope scope, Characters target)=>target.replaceFirst,
'package:characters/src/characters.dart@Characters@toLowerCase': (m.Scope scope, Characters target)=>target.toLowerCase,
'package:characters/src/characters.dart@Characters@toUpperCase': (m.Scope scope, Characters target)=>target.toUpperCase,
'package:characters/src/characters.dart@Characters@==': (m.Scope scope, Characters target)=>(other)=> target == other,
'package:characters/src/characters.dart@Characters@toString': (m.Scope scope, Characters target)=>target.toString,
'package:characters/src/characters.dart@CharacterRange@#as': (m.Scope scope, target)=>()=>target as CharacterRange,
'package:characters/src/characters.dart@CharacterRange@#is': (m.Scope scope, target)=>()=>target is CharacterRange,
'package:characters/src/characters.dart@CharacterRange@source': (m.Scope scope, CharacterRange target)=>target.source,
'package:characters/src/characters.dart@CharacterRange@utf16CodeUnits': (m.Scope scope, CharacterRange target)=>target.utf16CodeUnits,
'package:characters/src/characters.dart@CharacterRange@runes': (m.Scope scope, CharacterRange target)=>target.runes,
'package:characters/src/characters.dart@CharacterRange@currentCharacters': (m.Scope scope, CharacterRange target)=>target.currentCharacters,
'package:characters/src/characters.dart@CharacterRange@charactersBefore': (m.Scope scope, CharacterRange target)=>target.charactersBefore,
'package:characters/src/characters.dart@CharacterRange@charactersAfter': (m.Scope scope, CharacterRange target)=>target.charactersAfter,
'package:characters/src/characters.dart@CharacterRange@stringBefore': (m.Scope scope, CharacterRange target)=>target.stringBefore,
'package:characters/src/characters.dart@CharacterRange@stringBeforeLength': (m.Scope scope, CharacterRange target)=>target.stringBeforeLength,
'package:characters/src/characters.dart@CharacterRange@stringAfter': (m.Scope scope, CharacterRange target)=>target.stringAfter,
'package:characters/src/characters.dart@CharacterRange@stringAfterLength': (m.Scope scope, CharacterRange target)=>target.stringAfterLength,
'package:characters/src/characters.dart@CharacterRange@isEmpty': (m.Scope scope, CharacterRange target)=>target.isEmpty,
'package:characters/src/characters.dart@CharacterRange@isNotEmpty': (m.Scope scope, CharacterRange target)=>target.isNotEmpty,
'package:characters/src/characters.dart@CharacterRange@': (m.Scope scope)=>( string){
return CharacterRange(string);
},
'package:characters/src/characters.dart@CharacterRange@at': (m.Scope scope)=>CharacterRange.at,
'package:characters/src/characters.dart@CharacterRange@copy': (m.Scope scope, CharacterRange target)=>target.copy,
'package:characters/src/characters.dart@CharacterRange@moveNext': (m.Scope scope, CharacterRange target)=>target.moveNext,
'package:characters/src/characters.dart@CharacterRange@moveNextAll': (m.Scope scope, CharacterRange target)=>target.moveNextAll,
'package:characters/src/characters.dart@CharacterRange@moveTo': (m.Scope scope, CharacterRange target)=>target.moveTo,
'package:characters/src/characters.dart@CharacterRange@moveUntil': (m.Scope scope, CharacterRange target)=>target.moveUntil,
'package:characters/src/characters.dart@CharacterRange@moveBack': (m.Scope scope, CharacterRange target)=>target.moveBack,
'package:characters/src/characters.dart@CharacterRange@moveBackAll': (m.Scope scope, CharacterRange target)=>target.moveBackAll,
'package:characters/src/characters.dart@CharacterRange@moveBackTo': (m.Scope scope, CharacterRange target)=>target.moveBackTo,
'package:characters/src/characters.dart@CharacterRange@moveBackUntil': (m.Scope scope, CharacterRange target)=>target.moveBackUntil,
'package:characters/src/characters.dart@CharacterRange@expandNext': (m.Scope scope, CharacterRange target)=>target.expandNext,
'package:characters/src/characters.dart@CharacterRange@expandTo': (m.Scope scope, CharacterRange target)=>target.expandTo,
'package:characters/src/characters.dart@CharacterRange@expandUntil': (m.Scope scope, CharacterRange target)=>target.expandUntil,
'package:characters/src/characters.dart@CharacterRange@expandWhile': (m.Scope scope, CharacterRange target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.expandWhile(testProxy);
},
'package:characters/src/characters.dart@CharacterRange@expandAll': (m.Scope scope, CharacterRange target)=>target.expandAll,
'package:characters/src/characters.dart@CharacterRange@expandBack': (m.Scope scope, CharacterRange target)=>target.expandBack,
'package:characters/src/characters.dart@CharacterRange@expandBackTo': (m.Scope scope, CharacterRange target)=>target.expandBackTo,
'package:characters/src/characters.dart@CharacterRange@expandBackUntil': (m.Scope scope, CharacterRange target)=>target.expandBackUntil,
'package:characters/src/characters.dart@CharacterRange@expandBackWhile': (m.Scope scope, CharacterRange target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.expandBackWhile(testProxy);
},
'package:characters/src/characters.dart@CharacterRange@expandBackAll': (m.Scope scope, CharacterRange target)=>target.expandBackAll,
'package:characters/src/characters.dart@CharacterRange@collapseToStart': (m.Scope scope, CharacterRange target)=>target.collapseToStart,
'package:characters/src/characters.dart@CharacterRange@collapseToFirst': (m.Scope scope, CharacterRange target)=>target.collapseToFirst,
'package:characters/src/characters.dart@CharacterRange@collapseToLast': (m.Scope scope, CharacterRange target)=>target.collapseToLast,
'package:characters/src/characters.dart@CharacterRange@collapseToEnd': (m.Scope scope, CharacterRange target)=>target.collapseToEnd,
'package:characters/src/characters.dart@CharacterRange@dropFirst': (m.Scope scope, CharacterRange target)=>target.dropFirst,
'package:characters/src/characters.dart@CharacterRange@dropTo': (m.Scope scope, CharacterRange target)=>target.dropTo,
'package:characters/src/characters.dart@CharacterRange@dropUntil': (m.Scope scope, CharacterRange target)=>target.dropUntil,
'package:characters/src/characters.dart@CharacterRange@dropWhile': (m.Scope scope, CharacterRange target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.dropWhile(testProxy);
},
'package:characters/src/characters.dart@CharacterRange@dropLast': (m.Scope scope, CharacterRange target)=>target.dropLast,
'package:characters/src/characters.dart@CharacterRange@dropBackTo': (m.Scope scope, CharacterRange target)=>target.dropBackTo,
'package:characters/src/characters.dart@CharacterRange@dropBackUntil': (m.Scope scope, CharacterRange target)=>target.dropBackUntil,
'package:characters/src/characters.dart@CharacterRange@dropBackWhile': (m.Scope scope, CharacterRange target)=>( test){
bool testProxy( $p0) {
return  engine.callFunctionPointer(scope, test!,[$p0], {});
}

target.dropBackWhile(testProxy);
},
'package:characters/src/characters.dart@CharacterRange@replaceRange': (m.Scope scope, CharacterRange target)=>target.replaceRange,
'package:characters/src/characters.dart@CharacterRange@replaceAll': (m.Scope scope, CharacterRange target)=>target.replaceAll,
'package:characters/src/characters.dart@CharacterRange@split': (m.Scope scope, CharacterRange target)=>target.split,
'package:characters/src/characters.dart@CharacterRange@replaceFirst': (m.Scope scope, CharacterRange target)=>target.replaceFirst,
'package:characters/src/characters.dart@CharacterRange@startsWith': (m.Scope scope, CharacterRange target)=>target.startsWith,
'package:characters/src/characters.dart@CharacterRange@endsWith': (m.Scope scope, CharacterRange target)=>target.endsWith,
'package:characters/src/characters.dart@CharacterRange@isPrecededBy': (m.Scope scope, CharacterRange target)=>target.isPrecededBy,
'package:characters/src/characters.dart@CharacterRange@isFollowedBy': (m.Scope scope, CharacterRange target)=>target.isFollowedBy,

};
}