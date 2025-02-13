// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/cupertino/text_form_field_row.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/form_row.dart';
import 'package:flutter/src/cupertino/text_field.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/cupertino/text_form_field_row.dart',
  {'CupertinoTextFormFieldRow.': _CupertinoTextFormFieldRow__$},
  {},
  {
    'CupertinoTextFormFieldRow': m.ClassMirror(
      'CupertinoTextFormFieldRow',
      {
        '#as': CupertinoTextFormFieldRow_as$,
        '#is': CupertinoTextFormFieldRow_is$,
        'prefix': _CupertinoTextFormFieldRow_prefix$,
        'padding': _CupertinoTextFormFieldRow_padding$,
        'controller': _CupertinoTextFormFieldRow_controller$,
        'createState': _CupertinoTextFormFieldRow_createState$,
      },
      {},
    )
  },
);
Function CupertinoTextFormFieldRow_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as CupertinoTextFormFieldRow;
Function CupertinoTextFormFieldRow_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is CupertinoTextFormFieldRow;
Function _CupertinoTextFormFieldRow_prefix$(
  m.Scope scope$,
  CupertinoTextFormFieldRow target$,
) =>
    () {
      return target$.prefix;
    };
Function _CupertinoTextFormFieldRow_padding$(
  m.Scope scope$,
  CupertinoTextFormFieldRow target$,
) =>
    () {
      return target$.padding;
    };
Function _CupertinoTextFormFieldRow_controller$(
  m.Scope scope$,
  CupertinoTextFormFieldRow target$,
) =>
    () {
      return target$.controller;
    };
Function _CupertinoTextFormFieldRow__$(m.Scope scope$) => ({
      Key? key,
      Widget? prefix,
      EdgeInsetsGeometry? padding,
      TextEditingController? controller,
      String? initialValue,
      FocusNode? focusNode,
      BoxDecoration? decoration,
      TextInputType? keyboardType,
      TextCapitalization? textCapitalization,
      TextInputAction? textInputAction,
      TextStyle? style,
      StrutStyle? strutStyle,
      TextDirection? textDirection,
      TextAlign? textAlign,
      TextAlignVertical? textAlignVertical,
      bool? autofocus,
      bool? readOnly,
      ToolbarOptions? toolbarOptions,
      bool? showCursor,
      String? obscuringCharacter,
      bool? obscureText,
      bool? autocorrect,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      bool? enableSuggestions,
      int? maxLines,
      int? minLines,
      bool? expands,
      int? maxLength,
      m.FunctionPointer? onChanged,
      m.FunctionPointer? onTap,
      m.FunctionPointer? onEditingComplete,
      m.FunctionPointer? onFieldSubmitted,
      m.FunctionPointer? onSaved,
      m.FunctionPointer? validator,
      List? inputFormatters,
      bool? enabled,
      double? cursorWidth,
      double? cursorHeight,
      Color? cursorColor,
      Brightness? keyboardAppearance,
      EdgeInsets? scrollPadding,
      bool? enableInteractiveSelection,
      TextSelectionControls? selectionControls,
      ScrollPhysics? scrollPhysics,
      Iterable? autofillHints,
      AutovalidateMode? autovalidateMode,
      String? placeholder,
      TextStyle? placeholderStyle,
      m.FunctionPointer? contextMenuBuilder,
    }) {
      Widget contextMenuBuilderProxy(
        BuildContext contextMenuBuilder_context$,
        EditableTextState contextMenuBuilder_editableTextState$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            contextMenuBuilder!,
            [
              contextMenuBuilder_context$,
              contextMenuBuilder_editableTextState$,
            ],
            {},
          );
      void onChangedProxy(String onChanged_value$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onChanged!,
            [onChanged_value$],
            {},
          );
      void onEditingCompleteProxy() => scope$.engine.callFunctionPointer(
            scope$,
            onEditingComplete!,
            [],
            {},
          );
      void onFieldSubmittedProxy(String onFieldSubmitted_value$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onFieldSubmitted!,
            [onFieldSubmitted_value$],
            {},
          );
      void onSavedProxy(String? onSaved_newValue$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            onSaved!,
            [onSaved_newValue$],
            {},
          );
      void onTapProxy() => scope$.engine.callFunctionPointer(
            scope$,
            onTap!,
            [],
            {},
          );
      String? validatorProxy(String? validator_value$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            validator!,
            [validator_value$],
            {},
          );
      return CupertinoTextFormFieldRow(
        autocorrect: autocorrect ?? true,
        autofillHints:
            autofillHints == null ? null : Iterable.castFrom(autofillHints),
        autofocus: autofocus ?? false,
        autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
        contextMenuBuilder: contextMenuBuilder == null
            ? (BuildContext context, EditableTextState editableTextState) {
                return CupertinoAdaptiveTextSelectionToolbar.editableText(
                  editableTextState: editableTextState,
                );
              }
            : contextMenuBuilderProxy,
        controller: controller,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        cursorWidth: cursorWidth ?? 2.0,
        decoration: decoration,
        enableInteractiveSelection: enableInteractiveSelection ?? true,
        enableSuggestions: enableSuggestions ?? true,
        enabled: enabled,
        expands: expands ?? false,
        focusNode: focusNode,
        initialValue: initialValue,
        inputFormatters:
            inputFormatters == null ? null : List.from(inputFormatters),
        key: key,
        keyboardAppearance: keyboardAppearance,
        keyboardType: keyboardType,
        maxLength: maxLength,
        maxLines: maxLines ?? 1,
        minLines: minLines,
        obscureText: obscureText ?? false,
        obscuringCharacter: obscuringCharacter ?? '•',
        onChanged: onChanged == null ? null : onChangedProxy,
        onEditingComplete:
            onEditingComplete == null ? null : onEditingCompleteProxy,
        onFieldSubmitted:
            onFieldSubmitted == null ? null : onFieldSubmittedProxy,
        onSaved: onSaved == null ? null : onSavedProxy,
        onTap: onTap == null ? null : onTapProxy,
        padding: padding,
        placeholder: placeholder,
        placeholderStyle: placeholderStyle ??
            const TextStyle(
                fontWeight: FontWeight.w400,
                color: CupertinoColors.placeholderText),
        prefix: prefix,
        readOnly: readOnly ?? false,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
        scrollPhysics: scrollPhysics,
        selectionControls: selectionControls,
        showCursor: showCursor,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        strutStyle: strutStyle,
        style: style,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        textDirection: textDirection,
        textInputAction: textInputAction,
        toolbarOptions: toolbarOptions,
        validator: validator == null ? null : validatorProxy,
      );
    };
Function _CupertinoTextFormFieldRow_createState$(
  m.Scope scope$,
  CupertinoTextFormFieldRow target$,
) =>
    target$.createState;
