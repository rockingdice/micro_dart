import 'package:flutter/src/widgets/text_editing_intents.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/text_editing_intents.dart@DoNothingAndStopPropagationTextIntent@#as': (m.Scope scope, target)=>()=>target as DoNothingAndStopPropagationTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DoNothingAndStopPropagationTextIntent@#is': (m.Scope scope, target)=>()=>target is DoNothingAndStopPropagationTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DoNothingAndStopPropagationTextIntent@': (m.Scope scope)=>(){
return DoNothingAndStopPropagationTextIntent();
},
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalTextEditingIntent@#as': (m.Scope scope, target)=>()=>target as DirectionalTextEditingIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalTextEditingIntent@#is': (m.Scope scope, target)=>()=>target is DirectionalTextEditingIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalTextEditingIntent@forward': (m.Scope scope, DirectionalTextEditingIntent target)=>target.forward,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteCharacterIntent@#as': (m.Scope scope, target)=>()=>target as DeleteCharacterIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteCharacterIntent@#is': (m.Scope scope, target)=>()=>target is DeleteCharacterIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteCharacterIntent@': (m.Scope scope)=>({ forward}){
return DeleteCharacterIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@DeleteToNextWordBoundaryIntent@#as': (m.Scope scope, target)=>()=>target as DeleteToNextWordBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteToNextWordBoundaryIntent@#is': (m.Scope scope, target)=>()=>target is DeleteToNextWordBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteToNextWordBoundaryIntent@': (m.Scope scope)=>({ forward}){
return DeleteToNextWordBoundaryIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@DeleteToLineBreakIntent@#as': (m.Scope scope, target)=>()=>target as DeleteToLineBreakIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteToLineBreakIntent@#is': (m.Scope scope, target)=>()=>target is DeleteToLineBreakIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DeleteToLineBreakIntent@': (m.Scope scope)=>({ forward}){
return DeleteToLineBreakIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalCaretMovementIntent@#as': (m.Scope scope, target)=>()=>target as DirectionalCaretMovementIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalCaretMovementIntent@#is': (m.Scope scope, target)=>()=>target is DirectionalCaretMovementIntent,
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalCaretMovementIntent@collapseSelection': (m.Scope scope, DirectionalCaretMovementIntent target)=>target.collapseSelection,
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalCaretMovementIntent@collapseAtReversal': (m.Scope scope, DirectionalCaretMovementIntent target)=>target.collapseAtReversal,
'package:flutter/src/widgets/text_editing_intents.dart@DirectionalCaretMovementIntent@continuesAtWrap': (m.Scope scope, DirectionalCaretMovementIntent target)=>target.continuesAtWrap,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionByCharacterIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionByCharacterIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionByCharacterIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionByCharacterIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionByCharacterIntent@': (m.Scope scope)=>({ collapseSelection,  forward}){
return ExtendSelectionByCharacterIntent(collapseSelection:collapseSelection, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextWordBoundaryIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionToNextWordBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextWordBoundaryIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionToNextWordBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextWordBoundaryIntent@': (m.Scope scope)=>({ collapseSelection,  forward}){
return ExtendSelectionToNextWordBoundaryIntent(collapseSelection:collapseSelection, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextWordBoundaryOrCaretLocationIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionToNextWordBoundaryOrCaretLocationIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextWordBoundaryOrCaretLocationIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionToNextWordBoundaryOrCaretLocationIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextWordBoundaryOrCaretLocationIntent@': (m.Scope scope)=>({ forward}){
return ExtendSelectionToNextWordBoundaryOrCaretLocationIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExpandSelectionToDocumentBoundaryIntent@#as': (m.Scope scope, target)=>()=>target as ExpandSelectionToDocumentBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExpandSelectionToDocumentBoundaryIntent@#is': (m.Scope scope, target)=>()=>target is ExpandSelectionToDocumentBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExpandSelectionToDocumentBoundaryIntent@': (m.Scope scope)=>({ forward}){
return ExpandSelectionToDocumentBoundaryIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExpandSelectionToLineBreakIntent@#as': (m.Scope scope, target)=>()=>target as ExpandSelectionToLineBreakIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExpandSelectionToLineBreakIntent@#is': (m.Scope scope, target)=>()=>target is ExpandSelectionToLineBreakIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExpandSelectionToLineBreakIntent@': (m.Scope scope)=>({ forward}){
return ExpandSelectionToLineBreakIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToLineBreakIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionToLineBreakIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToLineBreakIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionToLineBreakIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToLineBreakIntent@': (m.Scope scope)=>({ collapseAtReversal,  collapseSelection,  continuesAtWrap,  forward}){
return ExtendSelectionToLineBreakIntent(collapseAtReversal:collapseAtReversal ?? false, collapseSelection:collapseSelection, continuesAtWrap:continuesAtWrap ?? false, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionVerticallyToAdjacentLineIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionVerticallyToAdjacentLineIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionVerticallyToAdjacentLineIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionVerticallyToAdjacentLineIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionVerticallyToAdjacentLineIntent@': (m.Scope scope)=>({ collapseSelection,  forward}){
return ExtendSelectionVerticallyToAdjacentLineIntent(collapseSelection:collapseSelection, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionVerticallyToAdjacentPageIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionVerticallyToAdjacentPageIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionVerticallyToAdjacentPageIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionVerticallyToAdjacentPageIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionVerticallyToAdjacentPageIntent@': (m.Scope scope)=>({ collapseSelection,  forward}){
return ExtendSelectionVerticallyToAdjacentPageIntent(collapseSelection:collapseSelection, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextParagraphBoundaryIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionToNextParagraphBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextParagraphBoundaryIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionToNextParagraphBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextParagraphBoundaryIntent@': (m.Scope scope)=>({ collapseSelection,  forward}){
return ExtendSelectionToNextParagraphBoundaryIntent(collapseSelection:collapseSelection, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent@': (m.Scope scope)=>({ forward}){
return ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToDocumentBoundaryIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionToDocumentBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToDocumentBoundaryIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionToDocumentBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionToDocumentBoundaryIntent@': (m.Scope scope)=>({ collapseSelection,  forward}){
return ExtendSelectionToDocumentBoundaryIntent(collapseSelection:collapseSelection, forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ScrollToDocumentBoundaryIntent@#as': (m.Scope scope, target)=>()=>target as ScrollToDocumentBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ScrollToDocumentBoundaryIntent@#is': (m.Scope scope, target)=>()=>target is ScrollToDocumentBoundaryIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ScrollToDocumentBoundaryIntent@': (m.Scope scope)=>({ forward}){
return ScrollToDocumentBoundaryIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionByPageIntent@#as': (m.Scope scope, target)=>()=>target as ExtendSelectionByPageIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionByPageIntent@#is': (m.Scope scope, target)=>()=>target is ExtendSelectionByPageIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ExtendSelectionByPageIntent@': (m.Scope scope)=>({ forward}){
return ExtendSelectionByPageIntent(forward:forward);
},
'package:flutter/src/widgets/text_editing_intents.dart@SelectAllTextIntent@#as': (m.Scope scope, target)=>()=>target as SelectAllTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@SelectAllTextIntent@#is': (m.Scope scope, target)=>()=>target is SelectAllTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@SelectAllTextIntent@cause': (m.Scope scope, SelectAllTextIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@SelectAllTextIntent@': (m.Scope scope)=>( cause){
return SelectAllTextIntent(cause);
},
'package:flutter/src/widgets/text_editing_intents.dart@CopySelectionTextIntent@#as': (m.Scope scope, target)=>()=>target as CopySelectionTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@CopySelectionTextIntent@#is': (m.Scope scope, target)=>()=>target is CopySelectionTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@CopySelectionTextIntent@copy': (m.Scope scope)=>CopySelectionTextIntent.copy,
'package:flutter/src/widgets/text_editing_intents.dart@CopySelectionTextIntent@cause': (m.Scope scope, CopySelectionTextIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@CopySelectionTextIntent@collapseSelection': (m.Scope scope, CopySelectionTextIntent target)=>target.collapseSelection,
'package:flutter/src/widgets/text_editing_intents.dart@CopySelectionTextIntent@cut': (m.Scope scope)=>CopySelectionTextIntent.cut,
'package:flutter/src/widgets/text_editing_intents.dart@PasteTextIntent@#as': (m.Scope scope, target)=>()=>target as PasteTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@PasteTextIntent@#is': (m.Scope scope, target)=>()=>target is PasteTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@PasteTextIntent@cause': (m.Scope scope, PasteTextIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@PasteTextIntent@': (m.Scope scope)=>( cause){
return PasteTextIntent(cause);
},
'package:flutter/src/widgets/text_editing_intents.dart@RedoTextIntent@#as': (m.Scope scope, target)=>()=>target as RedoTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@RedoTextIntent@#is': (m.Scope scope, target)=>()=>target is RedoTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@RedoTextIntent@cause': (m.Scope scope, RedoTextIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@RedoTextIntent@': (m.Scope scope)=>( cause){
return RedoTextIntent(cause);
},
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@#as': (m.Scope scope, target)=>()=>target as ReplaceTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@#is': (m.Scope scope, target)=>()=>target is ReplaceTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@currentTextEditingValue': (m.Scope scope, ReplaceTextIntent target)=>target.currentTextEditingValue,
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@replacementText': (m.Scope scope, ReplaceTextIntent target)=>target.replacementText,
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@replacementRange': (m.Scope scope, ReplaceTextIntent target)=>target.replacementRange,
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@cause': (m.Scope scope, ReplaceTextIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@ReplaceTextIntent@': (m.Scope scope)=>( currentTextEditingValue,  replacementText,  replacementRange,  cause){
return ReplaceTextIntent(currentTextEditingValue, replacementText, replacementRange, cause);
},
'package:flutter/src/widgets/text_editing_intents.dart@UndoTextIntent@#as': (m.Scope scope, target)=>()=>target as UndoTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@UndoTextIntent@#is': (m.Scope scope, target)=>()=>target is UndoTextIntent,
'package:flutter/src/widgets/text_editing_intents.dart@UndoTextIntent@cause': (m.Scope scope, UndoTextIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@UndoTextIntent@': (m.Scope scope)=>( cause){
return UndoTextIntent(cause);
},
'package:flutter/src/widgets/text_editing_intents.dart@UpdateSelectionIntent@#as': (m.Scope scope, target)=>()=>target as UpdateSelectionIntent,
'package:flutter/src/widgets/text_editing_intents.dart@UpdateSelectionIntent@#is': (m.Scope scope, target)=>()=>target is UpdateSelectionIntent,
'package:flutter/src/widgets/text_editing_intents.dart@UpdateSelectionIntent@currentTextEditingValue': (m.Scope scope, UpdateSelectionIntent target)=>target.currentTextEditingValue,
'package:flutter/src/widgets/text_editing_intents.dart@UpdateSelectionIntent@newSelection': (m.Scope scope, UpdateSelectionIntent target)=>target.newSelection,
'package:flutter/src/widgets/text_editing_intents.dart@UpdateSelectionIntent@cause': (m.Scope scope, UpdateSelectionIntent target)=>target.cause,
'package:flutter/src/widgets/text_editing_intents.dart@UpdateSelectionIntent@': (m.Scope scope)=>( currentTextEditingValue,  newSelection,  cause){
return UpdateSelectionIntent(currentTextEditingValue, newSelection, cause);
},
'package:flutter/src/widgets/text_editing_intents.dart@TransposeCharactersIntent@#as': (m.Scope scope, target)=>()=>target as TransposeCharactersIntent,
'package:flutter/src/widgets/text_editing_intents.dart@TransposeCharactersIntent@#is': (m.Scope scope, target)=>()=>target is TransposeCharactersIntent,
'package:flutter/src/widgets/text_editing_intents.dart@TransposeCharactersIntent@': (m.Scope scope)=>(){
return TransposeCharactersIntent();
},

};
}