import 'package:characters/src/grapheme_clusters/table.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:characters/src/grapheme_clusters/table.dart@@low': (m.Scope scope)=>low,
'package:characters/src/grapheme_clusters/table.dart@@high': (m.Scope scope)=>high,
'package:characters/src/grapheme_clusters/table.dart@@move': (m.Scope scope)=>move,
'package:characters/src/grapheme_clusters/table.dart@@moveBack': (m.Scope scope)=>moveBack,

};
}