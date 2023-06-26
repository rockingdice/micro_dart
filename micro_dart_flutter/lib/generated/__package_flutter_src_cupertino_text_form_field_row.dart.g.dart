import 'package:flutter/src/cupertino/text_form_field_row.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/form_row.dart';
import 'package:flutter/src/cupertino/text_field.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@#as': (m.Scope scope, target)=>()=>target as CupertinoTextFormFieldRow,
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@#is': (m.Scope scope, target)=>()=>target is CupertinoTextFormFieldRow,
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@prefix': (m.Scope scope, CupertinoTextFormFieldRow target)=>target.prefix,
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@padding': (m.Scope scope, CupertinoTextFormFieldRow target)=>target.padding,
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@controller': (m.Scope scope, CupertinoTextFormFieldRow target)=>target.controller,
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@': (m.Scope scope)=>({ autocorrect,  autofillHints,  autofocus,  autovalidateMode,  contextMenuBuilder,  controller,  cursorColor,  cursorHeight,  cursorWidth,  decoration,  enableInteractiveSelection,  enableSuggestions,  enabled,  expands,  focusNode,  initialValue,  inputFormatters,  key,  keyboardAppearance,  keyboardType,  maxLength,  maxLines,  minLines,  obscureText,  obscuringCharacter,  onChanged,  onEditingComplete,  onFieldSubmitted,  onSaved,  onTap,  padding,  placeholder,  placeholderStyle,  prefix,  readOnly,  scrollPadding,  scrollPhysics,  selectionControls,  showCursor,  smartDashesType,  smartQuotesType,  strutStyle,  style,  textAlign,  textAlignVertical,  textCapitalization,  textDirection,  textInputAction,  toolbarOptions,  validator}){
Widget contextMenuBuilderProxy( context,  editableTextState) {
return  engine.callFunctionPointer(scope, contextMenuBuilder!,[context, editableTextState], {});
}

void onChangedProxy( value) {
 engine.callFunctionPointer(scope, onChanged!,[value], {});
}

void onEditingCompleteProxy() {
 engine.callFunctionPointer(scope, onEditingComplete!,[], {});
}

void onFieldSubmittedProxy( value) {
 engine.callFunctionPointer(scope, onFieldSubmitted!,[value], {});
}

void onSavedProxy( newValue) {
 engine.callFunctionPointer(scope, onSaved!,[newValue], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

String validatorProxy( value) {
return  engine.callFunctionPointer(scope, validator!,[value], {});
}

return CupertinoTextFormFieldRow(autocorrect:autocorrect ?? true, autofillHints:autofillHints, autofocus:autofocus ?? false, autovalidateMode:autovalidateMode ?? AutovalidateMode.disabled, contextMenuBuilder:contextMenuBuilder == null ? (BuildContext context, EditableTextState editableTextState) {return CupertinoAdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState,);} :contextMenuBuilderProxy, controller:controller, cursorColor:cursorColor, cursorHeight:cursorHeight, cursorWidth:cursorWidth ?? 2.0, decoration:decoration, enableInteractiveSelection:enableInteractiveSelection ?? true, enableSuggestions:enableSuggestions ?? true, enabled:enabled, expands:expands ?? false, focusNode:focusNode, initialValue:initialValue, inputFormatters:inputFormatters, key:key, keyboardAppearance:keyboardAppearance, keyboardType:keyboardType, maxLength:maxLength, maxLines:maxLines ?? 1, minLines:minLines, obscureText:obscureText ?? false, obscuringCharacter:obscuringCharacter ?? '•', onChanged:onChanged == null ? null :onChangedProxy, onEditingComplete:onEditingComplete == null ? null :onEditingCompleteProxy, onFieldSubmitted:onFieldSubmitted == null ? null :onFieldSubmittedProxy, onSaved:onSaved == null ? null :onSavedProxy, onTap:onTap == null ? null :onTapProxy, padding:padding, placeholder:placeholder, placeholderStyle:placeholderStyle ?? const TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText), prefix:prefix, readOnly:readOnly ?? false, scrollPadding:scrollPadding ?? const EdgeInsets.all(20.0), scrollPhysics:scrollPhysics, selectionControls:selectionControls, showCursor:showCursor, smartDashesType:smartDashesType, smartQuotesType:smartQuotesType, strutStyle:strutStyle, style:style, textAlign:textAlign ?? TextAlign.start, textAlignVertical:textAlignVertical, textCapitalization:textCapitalization ?? TextCapitalization.none, textDirection:textDirection, textInputAction:textInputAction, toolbarOptions:toolbarOptions, validator:validator == null ? null :validatorProxy);
},
'package:flutter/src/cupertino/text_form_field_row.dart@CupertinoTextFormFieldRow@createState': (m.Scope scope, CupertinoTextFormFieldRow target)=>target.createState,

};
}