import 'package:flutter/src/services/text_editing_delta.dart';
import 'dart:ui' show TextRange;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'package:flutter/src/services/text_input.dart' show TextEditingValue;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@#as': (m.Scope scope, target)=>()=>target as TextEditingDelta,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@#is': (m.Scope scope, target)=>()=>target is TextEditingDelta,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@oldText': (m.Scope scope, TextEditingDelta target)=>target.oldText,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@selection': (m.Scope scope, TextEditingDelta target)=>target.selection,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@composing': (m.Scope scope, TextEditingDelta target)=>target.composing,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@fromJSON': (m.Scope scope)=>TextEditingDelta.fromJSON,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDelta@apply': (m.Scope scope, TextEditingDelta target)=>target.apply,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@#as': (m.Scope scope, target)=>()=>target as TextEditingDeltaInsertion,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@#is': (m.Scope scope, target)=>()=>target is TextEditingDeltaInsertion,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@textInserted': (m.Scope scope, TextEditingDeltaInsertion target)=>target.textInserted,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@insertionOffset': (m.Scope scope, TextEditingDeltaInsertion target)=>target.insertionOffset,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@': (m.Scope scope)=>({ composing,  insertionOffset,  oldText,  selection,  textInserted}){
return TextEditingDeltaInsertion(composing:composing, insertionOffset:insertionOffset, oldText:oldText, selection:selection, textInserted:textInserted);
},
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@apply': (m.Scope scope, TextEditingDeltaInsertion target)=>target.apply,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaInsertion@debugFillProperties': (m.Scope scope, TextEditingDeltaInsertion target)=>target.debugFillProperties,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@#as': (m.Scope scope, target)=>()=>target as TextEditingDeltaDeletion,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@#is': (m.Scope scope, target)=>()=>target is TextEditingDeltaDeletion,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@deletedRange': (m.Scope scope, TextEditingDeltaDeletion target)=>target.deletedRange,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@textDeleted': (m.Scope scope, TextEditingDeltaDeletion target)=>target.textDeleted,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@': (m.Scope scope)=>({ composing,  deletedRange,  oldText,  selection}){
return TextEditingDeltaDeletion(composing:composing, deletedRange:deletedRange, oldText:oldText, selection:selection);
},
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@apply': (m.Scope scope, TextEditingDeltaDeletion target)=>target.apply,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaDeletion@debugFillProperties': (m.Scope scope, TextEditingDeltaDeletion target)=>target.debugFillProperties,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@#as': (m.Scope scope, target)=>()=>target as TextEditingDeltaReplacement,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@#is': (m.Scope scope, target)=>()=>target is TextEditingDeltaReplacement,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@replacementText': (m.Scope scope, TextEditingDeltaReplacement target)=>target.replacementText,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@replacedRange': (m.Scope scope, TextEditingDeltaReplacement target)=>target.replacedRange,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@textReplaced': (m.Scope scope, TextEditingDeltaReplacement target)=>target.textReplaced,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@': (m.Scope scope)=>({ composing,  oldText,  replacedRange,  replacementText,  selection}){
return TextEditingDeltaReplacement(composing:composing, oldText:oldText, replacedRange:replacedRange, replacementText:replacementText, selection:selection);
},
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@apply': (m.Scope scope, TextEditingDeltaReplacement target)=>target.apply,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaReplacement@debugFillProperties': (m.Scope scope, TextEditingDeltaReplacement target)=>target.debugFillProperties,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaNonTextUpdate@#as': (m.Scope scope, target)=>()=>target as TextEditingDeltaNonTextUpdate,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaNonTextUpdate@#is': (m.Scope scope, target)=>()=>target is TextEditingDeltaNonTextUpdate,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaNonTextUpdate@': (m.Scope scope)=>({ composing,  oldText,  selection}){
return TextEditingDeltaNonTextUpdate(composing:composing, oldText:oldText, selection:selection);
},
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaNonTextUpdate@apply': (m.Scope scope, TextEditingDeltaNonTextUpdate target)=>target.apply,
'package:flutter/src/services/text_editing_delta.dart@TextEditingDeltaNonTextUpdate@debugFillProperties': (m.Scope scope, TextEditingDeltaNonTextUpdate target)=>target.debugFillProperties,

};
}