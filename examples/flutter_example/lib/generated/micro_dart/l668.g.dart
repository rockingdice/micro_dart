import 'package:characters/src/grapheme_clusters/breaks.dart';
import 'package:characters/src/grapheme_clusters/constants.dart';
import 'package:characters/src/grapheme_clusters/table.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@#as': (m.Scope scope, target)=>()=>target as Breaks,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@#is': (m.Scope scope, target)=>()=>target is Breaks,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@base': (m.Scope scope, Breaks target)=>target.base,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@end': (m.Scope scope, Breaks target)=>target.end,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@cursor': (m.Scope scope, Breaks target)=>target.cursor,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@cursor:set': (m.Scope scope, Breaks target)=>(other)=>target.cursor=other,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@state': (m.Scope scope, Breaks target)=>target.state,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@state:set': (m.Scope scope, Breaks target)=>(other)=>target.state=other,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@': (m.Scope scope)=>Breaks,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@copy': (m.Scope scope, Breaks target)=>target.copy,
'package:characters/src/grapheme_clusters/breaks.dart@Breaks@nextBreak': (m.Scope scope, Breaks target)=>target.nextBreak,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@#as': (m.Scope scope, target)=>()=>target as BackBreaks,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@#is': (m.Scope scope, target)=>()=>target is BackBreaks,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@base': (m.Scope scope, BackBreaks target)=>target.base,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@start': (m.Scope scope, BackBreaks target)=>target.start,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@cursor': (m.Scope scope, BackBreaks target)=>target.cursor,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@cursor:set': (m.Scope scope, BackBreaks target)=>(other)=>target.cursor=other,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@state': (m.Scope scope, BackBreaks target)=>target.state,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@state:set': (m.Scope scope, BackBreaks target)=>(other)=>target.state=other,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@': (m.Scope scope)=>BackBreaks,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@copy': (m.Scope scope, BackBreaks target)=>target.copy,
'package:characters/src/grapheme_clusters/breaks.dart@BackBreaks@nextBreak': (m.Scope scope, BackBreaks target)=>target.nextBreak,
'package:characters/src/grapheme_clusters/breaks.dart@@lookAhead': (m.Scope scope)=>lookAhead,
'package:characters/src/grapheme_clusters/breaks.dart@@lookAheadRegional': (m.Scope scope)=>lookAheadRegional,
'package:characters/src/grapheme_clusters/breaks.dart@@lookAheadPictorgraphicExtend': (m.Scope scope)=>lookAheadPictorgraphicExtend,
'package:characters/src/grapheme_clusters/breaks.dart@@isGraphemeClusterBoundary': (m.Scope scope)=>isGraphemeClusterBoundary,
'package:characters/src/grapheme_clusters/breaks.dart@@previousBreak': (m.Scope scope)=>previousBreak,
'package:characters/src/grapheme_clusters/breaks.dart@@nextBreak': (m.Scope scope)=>nextBreak,

};
}