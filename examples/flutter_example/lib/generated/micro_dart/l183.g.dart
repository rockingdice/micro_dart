import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/text_form_field.dart@TextFormField@#as':
        (m.Scope scope, target) => () => target as TextFormField,
    'package:flutter/src/material/text_form_field.dart@TextFormField@#is':
        (m.Scope scope, target) => () => target is TextFormField,
    'package:flutter/src/material/text_form_field.dart@TextFormField@controller':
        (m.Scope scope, TextFormField target) => target.controller,
    'package:flutter/src/material/text_form_field.dart@TextFormField@': (m.Scope
            scope) =>
        (
            {autocorrect,
            autofillHints,
            autofocus,
            autovalidateMode,
            buildCounter,
            contextMenuBuilder,
            controller,
            cursorColor,
            cursorHeight,
            cursorRadius,
            cursorWidth,
            decoration,
            enableIMEPersonalizedLearning,
            enableInteractiveSelection,
            enableSuggestions,
            enabled,
            expands,
            focusNode,
            initialValue,
            inputFormatters,
            key,
            keyboardAppearance,
            keyboardType,
            magnifierConfiguration,
            maxLength,
            maxLengthEnforcement,
            maxLines,
            minLines,
            mouseCursor,
            obscureText,
            obscuringCharacter,
            onChanged,
            onEditingComplete,
            onFieldSubmitted,
            onSaved,
            onTap,
            onTapOutside,
            readOnly,
            restorationId,
            scrollController,
            scrollPadding,
            scrollPhysics,
            selectionControls,
            showCursor,
            smartDashesType,
            smartQuotesType,
            spellCheckConfiguration,
            strutStyle,
            style,
            textAlign,
            textAlignVertical,
            textCapitalization,
            textDirection,
            textInputAction,
            toolbarOptions,
            validator}) {
          Widget buildCounterProxy(context,
              {currentLength, isFocused, maxLength}) {
            return engine.callFunctionPointer(scope, buildCounter!, [
              context
            ], {
              'currentLength': currentLength,
              'isFocused': isFocused,
              'maxLength': maxLength
            });
          }

          Widget contextMenuBuilderProxy(context, editableTextState) {
            return engine.callFunctionPointer(
                scope, contextMenuBuilder!, [context, editableTextState], {});
          }

          void onChangedProxy(value) {
            engine.callFunctionPointer(scope, onChanged!, [value], {});
          }

          void onEditingCompleteProxy() {
            engine.callFunctionPointer(scope, onEditingComplete!, [], {});
          }

          void onFieldSubmittedProxy(value) {
            engine.callFunctionPointer(scope, onFieldSubmitted!, [value], {});
          }

          void onSavedProxy(newValue) {
            engine.callFunctionPointer(scope, onSaved!, [newValue], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          void onTapOutsideProxy(event) {
            engine.callFunctionPointer(scope, onTapOutside!, [event], {});
          }

          String validatorProxy(value) {
            return engine.callFunctionPointer(scope, validator!, [value], {});
          }

          return TextFormField(
              autocorrect: autocorrect ?? true,
              autofillHints: autofillHints,
              autofocus: autofocus ?? false,
              autovalidateMode: autovalidateMode,
              buildCounter: buildCounter == null ? null : buildCounterProxy,
              contextMenuBuilder: contextMenuBuilder == null
                  ? (BuildContext context,
                      EditableTextState editableTextState) {
                      return AdaptiveTextSelectionToolbar.editableText(
                        editableTextState: editableTextState,
                      );
                    }
                  : contextMenuBuilderProxy,
              controller: controller,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth ?? 2.0,
              decoration: decoration ?? const InputDecoration(),
              enableIMEPersonalizedLearning:
                  enableIMEPersonalizedLearning ?? true,
              enableInteractiveSelection: enableInteractiveSelection,
              enableSuggestions: enableSuggestions ?? true,
              enabled: enabled,
              expands: expands ?? false,
              focusNode: focusNode,
              initialValue: initialValue,
              inputFormatters: inputFormatters,
              key: key,
              keyboardAppearance: keyboardAppearance,
              keyboardType: keyboardType,
              magnifierConfiguration: magnifierConfiguration,
              maxLength: maxLength,
              maxLengthEnforcement: maxLengthEnforcement,
              maxLines: maxLines ?? 1,
              minLines: minLines,
              mouseCursor: mouseCursor,
              obscureText: obscureText ?? false,
              obscuringCharacter: obscuringCharacter ?? '•',
              onChanged: onChanged == null ? null : onChangedProxy,
              onEditingComplete:
                  onEditingComplete == null ? null : onEditingCompleteProxy,
              onFieldSubmitted:
                  onFieldSubmitted == null ? null : onFieldSubmittedProxy,
              onSaved: onSaved == null ? null : onSavedProxy,
              onTap: onTap == null ? null : onTapProxy,
              onTapOutside: onTapOutside == null ? null : onTapOutsideProxy,
              readOnly: readOnly ?? false,
              restorationId: restorationId,
              scrollController: scrollController,
              scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
              scrollPhysics: scrollPhysics,
              selectionControls: selectionControls,
              showCursor: showCursor,
              smartDashesType: smartDashesType,
              smartQuotesType: smartQuotesType,
              spellCheckConfiguration: spellCheckConfiguration,
              strutStyle: strutStyle,
              style: style,
              textAlign: textAlign ?? TextAlign.start,
              textAlignVertical: textAlignVertical,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              textDirection: textDirection,
              textInputAction: textInputAction,
              toolbarOptions: toolbarOptions,
              validator: validator == null ? null : validatorProxy);
        },
    'package:flutter/src/material/text_form_field.dart@TextFormField@createState':
        (m.Scope scope, TextFormField target) => target.createState,
  };
}
