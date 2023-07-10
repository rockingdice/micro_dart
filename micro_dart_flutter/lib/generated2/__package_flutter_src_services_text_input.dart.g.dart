import 'package:flutter/src/services/text_input.dart';
import 'dart:async';
import 'dart:io' show Platform;
import 'dart:ui' show FontWeight,Offset,Rect,Size,TextAlign,TextDirection;
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix4;
import 'package:flutter/src/services/autofill.dart';
import 'package:flutter/src/services/clipboard.dart' show Clipboard;
import 'package:flutter/src/services/keyboard_inserted_content.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/platform_channel.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'package:flutter/src/services/text_editing_delta.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/text_input.dart@TextInputType@#as': (m.Scope scope, target)=>()=>target as TextInputType,
'package:flutter/src/services/text_input.dart@TextInputType@#is': (m.Scope scope, target)=>()=>target is TextInputType,
'package:flutter/src/services/text_input.dart@TextInputType@index': (m.Scope scope, TextInputType target)=>target.index,
'package:flutter/src/services/text_input.dart@TextInputType@signed': (m.Scope scope, TextInputType target)=>target.signed,
'package:flutter/src/services/text_input.dart@TextInputType@decimal': (m.Scope scope, TextInputType target)=>target.decimal,
'package:flutter/src/services/text_input.dart@TextInputType@text': (m.Scope scope)=>TextInputType.text,
'package:flutter/src/services/text_input.dart@TextInputType@multiline': (m.Scope scope)=>TextInputType.multiline,
'package:flutter/src/services/text_input.dart@TextInputType@number': (m.Scope scope)=>TextInputType.number,
'package:flutter/src/services/text_input.dart@TextInputType@phone': (m.Scope scope)=>TextInputType.phone,
'package:flutter/src/services/text_input.dart@TextInputType@datetime': (m.Scope scope)=>TextInputType.datetime,
'package:flutter/src/services/text_input.dart@TextInputType@emailAddress': (m.Scope scope)=>TextInputType.emailAddress,
'package:flutter/src/services/text_input.dart@TextInputType@url': (m.Scope scope)=>TextInputType.url,
'package:flutter/src/services/text_input.dart@TextInputType@visiblePassword': (m.Scope scope)=>TextInputType.visiblePassword,
'package:flutter/src/services/text_input.dart@TextInputType@name': (m.Scope scope)=>TextInputType.name,
'package:flutter/src/services/text_input.dart@TextInputType@streetAddress': (m.Scope scope)=>TextInputType.streetAddress,
'package:flutter/src/services/text_input.dart@TextInputType@none': (m.Scope scope)=>TextInputType.none,
'package:flutter/src/services/text_input.dart@TextInputType@values': (m.Scope scope)=>TextInputType.values,
'package:flutter/src/services/text_input.dart@TextInputType@hashCode': (m.Scope scope, TextInputType target)=>target.hashCode,
'package:flutter/src/services/text_input.dart@TextInputType@numberWithOptions': (m.Scope scope)=>TextInputType.numberWithOptions,
'package:flutter/src/services/text_input.dart@TextInputType@toJson': (m.Scope scope, TextInputType target)=>target.toJson,
'package:flutter/src/services/text_input.dart@TextInputType@toString': (m.Scope scope, TextInputType target)=>target.toString,
'package:flutter/src/services/text_input.dart@TextInputType@==': (m.Scope scope, TextInputType target)=>(other)=> target == other,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@#as': (m.Scope scope, target)=>()=>target as TextInputConfiguration,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@#is': (m.Scope scope, target)=>()=>target is TextInputConfiguration,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@inputType': (m.Scope scope, TextInputConfiguration target)=>target.inputType,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@readOnly': (m.Scope scope, TextInputConfiguration target)=>target.readOnly,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@obscureText': (m.Scope scope, TextInputConfiguration target)=>target.obscureText,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@autocorrect': (m.Scope scope, TextInputConfiguration target)=>target.autocorrect,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@autofillConfiguration': (m.Scope scope, TextInputConfiguration target)=>target.autofillConfiguration,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@smartDashesType': (m.Scope scope, TextInputConfiguration target)=>target.smartDashesType,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@smartQuotesType': (m.Scope scope, TextInputConfiguration target)=>target.smartQuotesType,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@enableSuggestions': (m.Scope scope, TextInputConfiguration target)=>target.enableSuggestions,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@enableInteractiveSelection': (m.Scope scope, TextInputConfiguration target)=>target.enableInteractiveSelection,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@actionLabel': (m.Scope scope, TextInputConfiguration target)=>target.actionLabel,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@inputAction': (m.Scope scope, TextInputConfiguration target)=>target.inputAction,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@textCapitalization': (m.Scope scope, TextInputConfiguration target)=>target.textCapitalization,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@keyboardAppearance': (m.Scope scope, TextInputConfiguration target)=>target.keyboardAppearance,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@enableIMEPersonalizedLearning': (m.Scope scope, TextInputConfiguration target)=>target.enableIMEPersonalizedLearning,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@allowedMimeTypes': (m.Scope scope, TextInputConfiguration target)=>target.allowedMimeTypes,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@enableDeltaModel': (m.Scope scope, TextInputConfiguration target)=>target.enableDeltaModel,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@': (m.Scope scope)=>({ actionLabel,  allowedMimeTypes,  autocorrect,  autofillConfiguration,  enableDeltaModel,  enableIMEPersonalizedLearning,  enableInteractiveSelection,  enableSuggestions,  inputAction,  inputType,  keyboardAppearance,  obscureText,  readOnly,  smartDashesType,  smartQuotesType,  textCapitalization}){
return TextInputConfiguration(actionLabel:actionLabel, allowedMimeTypes:allowedMimeTypes ?? const <String>[], autocorrect:autocorrect ?? true, autofillConfiguration:autofillConfiguration ?? AutofillConfiguration.disabled, enableDeltaModel:enableDeltaModel ?? false, enableIMEPersonalizedLearning:enableIMEPersonalizedLearning ?? true, enableInteractiveSelection:enableInteractiveSelection ?? true, enableSuggestions:enableSuggestions ?? true, inputAction:inputAction ?? TextInputAction.done, inputType:inputType ?? TextInputType.text, keyboardAppearance:keyboardAppearance ?? Brightness.light, obscureText:obscureText ?? false, readOnly:readOnly ?? false, smartDashesType:smartDashesType, smartQuotesType:smartQuotesType, textCapitalization:textCapitalization ?? TextCapitalization.none);
},
'package:flutter/src/services/text_input.dart@TextInputConfiguration@copyWith': (m.Scope scope, TextInputConfiguration target)=>target.copyWith,
'package:flutter/src/services/text_input.dart@TextInputConfiguration@toJson': (m.Scope scope, TextInputConfiguration target)=>target.toJson,
'package:flutter/src/services/text_input.dart@RawFloatingCursorPoint@#as': (m.Scope scope, target)=>()=>target as RawFloatingCursorPoint,
'package:flutter/src/services/text_input.dart@RawFloatingCursorPoint@#is': (m.Scope scope, target)=>()=>target is RawFloatingCursorPoint,
'package:flutter/src/services/text_input.dart@RawFloatingCursorPoint@offset': (m.Scope scope, RawFloatingCursorPoint target)=>target.offset,
'package:flutter/src/services/text_input.dart@RawFloatingCursorPoint@state': (m.Scope scope, RawFloatingCursorPoint target)=>target.state,
'package:flutter/src/services/text_input.dart@RawFloatingCursorPoint@': (m.Scope scope)=>({ offset,  state}){
return RawFloatingCursorPoint(offset:offset, state:state);
},
'package:flutter/src/services/text_input.dart@TextEditingValue@#as': (m.Scope scope, target)=>()=>target as TextEditingValue,
'package:flutter/src/services/text_input.dart@TextEditingValue@#is': (m.Scope scope, target)=>()=>target is TextEditingValue,
'package:flutter/src/services/text_input.dart@TextEditingValue@text': (m.Scope scope, TextEditingValue target)=>target.text,
'package:flutter/src/services/text_input.dart@TextEditingValue@selection': (m.Scope scope, TextEditingValue target)=>target.selection,
'package:flutter/src/services/text_input.dart@TextEditingValue@composing': (m.Scope scope, TextEditingValue target)=>target.composing,
'package:flutter/src/services/text_input.dart@TextEditingValue@empty': (m.Scope scope)=>TextEditingValue.empty,
'package:flutter/src/services/text_input.dart@TextEditingValue@isComposingRangeValid': (m.Scope scope, TextEditingValue target)=>target.isComposingRangeValid,
'package:flutter/src/services/text_input.dart@TextEditingValue@hashCode': (m.Scope scope, TextEditingValue target)=>target.hashCode,
'package:flutter/src/services/text_input.dart@TextEditingValue@': (m.Scope scope)=>({ composing,  selection,  text}){
return TextEditingValue(composing:composing ?? TextRange.empty, selection:selection ?? const TextSelection.collapsed(offset: -1), text:text ?? '');
},
'package:flutter/src/services/text_input.dart@TextEditingValue@fromJSON': (m.Scope scope)=>TextEditingValue.fromJSON,
'package:flutter/src/services/text_input.dart@TextEditingValue@copyWith': (m.Scope scope, TextEditingValue target)=>target.copyWith,
'package:flutter/src/services/text_input.dart@TextEditingValue@replaced': (m.Scope scope, TextEditingValue target)=>target.replaced,
'package:flutter/src/services/text_input.dart@TextEditingValue@toJSON': (m.Scope scope, TextEditingValue target)=>target.toJSON,
'package:flutter/src/services/text_input.dart@TextEditingValue@toString': (m.Scope scope, TextEditingValue target)=>target.toString,
'package:flutter/src/services/text_input.dart@TextEditingValue@==': (m.Scope scope, TextEditingValue target)=>(other)=> target == other,
'package:flutter/src/services/text_input.dart@ScribbleClient@#as': (m.Scope scope, target)=>()=>target as ScribbleClient,
'package:flutter/src/services/text_input.dart@ScribbleClient@#is': (m.Scope scope, target)=>()=>target is ScribbleClient,
'package:flutter/src/services/text_input.dart@ScribbleClient@elementIdentifier': (m.Scope scope, ScribbleClient target)=>target.elementIdentifier,
'package:flutter/src/services/text_input.dart@ScribbleClient@bounds': (m.Scope scope, ScribbleClient target)=>target.bounds,
'package:flutter/src/services/text_input.dart@ScribbleClient@onScribbleFocus': (m.Scope scope, ScribbleClient target)=>target.onScribbleFocus,
'package:flutter/src/services/text_input.dart@ScribbleClient@isInScribbleRect': (m.Scope scope, ScribbleClient target)=>target.isInScribbleRect,
'package:flutter/src/services/text_input.dart@SelectionRect@#as': (m.Scope scope, target)=>()=>target as SelectionRect,
'package:flutter/src/services/text_input.dart@SelectionRect@#is': (m.Scope scope, target)=>()=>target is SelectionRect,
'package:flutter/src/services/text_input.dart@SelectionRect@position': (m.Scope scope, SelectionRect target)=>target.position,
'package:flutter/src/services/text_input.dart@SelectionRect@bounds': (m.Scope scope, SelectionRect target)=>target.bounds,
'package:flutter/src/services/text_input.dart@SelectionRect@direction': (m.Scope scope, SelectionRect target)=>target.direction,
'package:flutter/src/services/text_input.dart@SelectionRect@hashCode': (m.Scope scope, SelectionRect target)=>target.hashCode,
'package:flutter/src/services/text_input.dart@SelectionRect@': (m.Scope scope)=>({ bounds,  direction,  position}){
return SelectionRect(bounds:bounds, direction:direction ?? TextDirection.ltr, position:position);
},
'package:flutter/src/services/text_input.dart@SelectionRect@==': (m.Scope scope, SelectionRect target)=>(other)=> target == other,
'package:flutter/src/services/text_input.dart@SelectionRect@toString': (m.Scope scope, SelectionRect target)=>target.toString,
'package:flutter/src/services/text_input.dart@TextInputConnection@#as': (m.Scope scope, target)=>()=>target as TextInputConnection,
'package:flutter/src/services/text_input.dart@TextInputConnection@#is': (m.Scope scope, target)=>()=>target is TextInputConnection,
'package:flutter/src/services/text_input.dart@TextInputConnection@attached': (m.Scope scope, TextInputConnection target)=>target.attached,
'package:flutter/src/services/text_input.dart@TextInputConnection@scribbleInProgress': (m.Scope scope, TextInputConnection target)=>target.scribbleInProgress,
'package:flutter/src/services/text_input.dart@TextInputConnection@debugResetId': (m.Scope scope)=>TextInputConnection.debugResetId,
'package:flutter/src/services/text_input.dart@TextInputConnection@show': (m.Scope scope, TextInputConnection target)=>target.show,
'package:flutter/src/services/text_input.dart@TextInputConnection@requestAutofill': (m.Scope scope, TextInputConnection target)=>target.requestAutofill,
'package:flutter/src/services/text_input.dart@TextInputConnection@updateConfig': (m.Scope scope, TextInputConnection target)=>target.updateConfig,
'package:flutter/src/services/text_input.dart@TextInputConnection@setEditingState': (m.Scope scope, TextInputConnection target)=>target.setEditingState,
'package:flutter/src/services/text_input.dart@TextInputConnection@setEditableSizeAndTransform': (m.Scope scope, TextInputConnection target)=>target.setEditableSizeAndTransform,
'package:flutter/src/services/text_input.dart@TextInputConnection@setComposingRect': (m.Scope scope, TextInputConnection target)=>target.setComposingRect,
'package:flutter/src/services/text_input.dart@TextInputConnection@setCaretRect': (m.Scope scope, TextInputConnection target)=>target.setCaretRect,
'package:flutter/src/services/text_input.dart@TextInputConnection@setSelectionRects': (m.Scope scope, TextInputConnection target)=>target.setSelectionRects,
'package:flutter/src/services/text_input.dart@TextInputConnection@setStyle': (m.Scope scope, TextInputConnection target)=>target.setStyle,
'package:flutter/src/services/text_input.dart@TextInputConnection@close': (m.Scope scope, TextInputConnection target)=>target.close,
'package:flutter/src/services/text_input.dart@TextInputConnection@connectionClosedReceived': (m.Scope scope, TextInputConnection target)=>target.connectionClosedReceived,
'package:flutter/src/services/text_input.dart@TextInput@#as': (m.Scope scope, target)=>()=>target as TextInput,
'package:flutter/src/services/text_input.dart@TextInput@#is': (m.Scope scope, target)=>()=>target is TextInput,
'package:flutter/src/services/text_input.dart@TextInput@scribbleClients': (m.Scope scope)=>TextInput.scribbleClients,
'package:flutter/src/services/text_input.dart@TextInput@scribbleInProgress': (m.Scope scope, TextInput target)=>target.scribbleInProgress,
'package:flutter/src/services/text_input.dart@TextInput@setChannel': (m.Scope scope)=>TextInput.setChannel,
'package:flutter/src/services/text_input.dart@TextInput@setInputControl': (m.Scope scope)=>TextInput.setInputControl,
'package:flutter/src/services/text_input.dart@TextInput@restorePlatformInputControl': (m.Scope scope)=>TextInput.restorePlatformInputControl,
'package:flutter/src/services/text_input.dart@TextInput@ensureInitialized': (m.Scope scope)=>TextInput.ensureInitialized,
'package:flutter/src/services/text_input.dart@TextInput@attach': (m.Scope scope)=>TextInput.attach,
'package:flutter/src/services/text_input.dart@TextInput@updateEditingValue': (m.Scope scope)=>TextInput.updateEditingValue,
'package:flutter/src/services/text_input.dart@TextInput@finishAutofillContext': (m.Scope scope)=>TextInput.finishAutofillContext,
'package:flutter/src/services/text_input.dart@TextInput@registerScribbleElement': (m.Scope scope)=>TextInput.registerScribbleElement,
'package:flutter/src/services/text_input.dart@TextInput@unregisterScribbleElement': (m.Scope scope)=>TextInput.unregisterScribbleElement,

};
}