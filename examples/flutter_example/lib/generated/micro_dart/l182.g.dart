import 'package:flutter/src/material/text_field.dart';
import 'dart:ui' show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/desktop_text_selection.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/magnifier.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/selectable_text.dart'
    show iOSHorizontalOffset;
import 'package:flutter/src/material/spell_check_suggestions_toolbar.dart';
import 'package:flutter/src/material/text_selection.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/text_field.dart@TextField@#as':
        (m.Scope scope, target) => () => target as TextField,
    'package:flutter/src/material/text_field.dart@TextField@#is':
        (m.Scope scope, target) => () => target is TextField,
    'package:flutter/src/material/text_field.dart@TextField@magnifierConfiguration':
        (m.Scope scope, TextField target) => target.magnifierConfiguration,
    'package:flutter/src/material/text_field.dart@TextField@controller':
        (m.Scope scope, TextField target) => target.controller,
    'package:flutter/src/material/text_field.dart@TextField@focusNode':
        (m.Scope scope, TextField target) => target.focusNode,
    'package:flutter/src/material/text_field.dart@TextField@decoration':
        (m.Scope scope, TextField target) => target.decoration,
    'package:flutter/src/material/text_field.dart@TextField@keyboardType':
        (m.Scope scope, TextField target) => target.keyboardType,
    'package:flutter/src/material/text_field.dart@TextField@textInputAction':
        (m.Scope scope, TextField target) => target.textInputAction,
    'package:flutter/src/material/text_field.dart@TextField@textCapitalization':
        (m.Scope scope, TextField target) => target.textCapitalization,
    'package:flutter/src/material/text_field.dart@TextField@style':
        (m.Scope scope, TextField target) => target.style,
    'package:flutter/src/material/text_field.dart@TextField@strutStyle':
        (m.Scope scope, TextField target) => target.strutStyle,
    'package:flutter/src/material/text_field.dart@TextField@textAlign':
        (m.Scope scope, TextField target) => target.textAlign,
    'package:flutter/src/material/text_field.dart@TextField@textAlignVertical':
        (m.Scope scope, TextField target) => target.textAlignVertical,
    'package:flutter/src/material/text_field.dart@TextField@textDirection':
        (m.Scope scope, TextField target) => target.textDirection,
    'package:flutter/src/material/text_field.dart@TextField@autofocus':
        (m.Scope scope, TextField target) => target.autofocus,
    'package:flutter/src/material/text_field.dart@TextField@obscuringCharacter':
        (m.Scope scope, TextField target) => target.obscuringCharacter,
    'package:flutter/src/material/text_field.dart@TextField@obscureText':
        (m.Scope scope, TextField target) => target.obscureText,
    'package:flutter/src/material/text_field.dart@TextField@autocorrect':
        (m.Scope scope, TextField target) => target.autocorrect,
    'package:flutter/src/material/text_field.dart@TextField@smartDashesType':
        (m.Scope scope, TextField target) => target.smartDashesType,
    'package:flutter/src/material/text_field.dart@TextField@smartQuotesType':
        (m.Scope scope, TextField target) => target.smartQuotesType,
    'package:flutter/src/material/text_field.dart@TextField@enableSuggestions':
        (m.Scope scope, TextField target) => target.enableSuggestions,
    'package:flutter/src/material/text_field.dart@TextField@maxLines':
        (m.Scope scope, TextField target) => target.maxLines,
    'package:flutter/src/material/text_field.dart@TextField@minLines':
        (m.Scope scope, TextField target) => target.minLines,
    'package:flutter/src/material/text_field.dart@TextField@expands':
        (m.Scope scope, TextField target) => target.expands,
    'package:flutter/src/material/text_field.dart@TextField@readOnly':
        (m.Scope scope, TextField target) => target.readOnly,
    'package:flutter/src/material/text_field.dart@TextField@toolbarOptions':
        (m.Scope scope, TextField target) => target.toolbarOptions,
    'package:flutter/src/material/text_field.dart@TextField@showCursor':
        (m.Scope scope, TextField target) => target.showCursor,
    'package:flutter/src/material/text_field.dart@TextField@noMaxLength':
        (m.Scope scope) => TextField.noMaxLength,
    'package:flutter/src/material/text_field.dart@TextField@maxLength':
        (m.Scope scope, TextField target) => target.maxLength,
    'package:flutter/src/material/text_field.dart@TextField@maxLengthEnforcement':
        (m.Scope scope, TextField target) => target.maxLengthEnforcement,
    'package:flutter/src/material/text_field.dart@TextField@onChanged':
        (m.Scope scope, TextField target) => target.onChanged,
    'package:flutter/src/material/text_field.dart@TextField@onEditingComplete':
        (m.Scope scope, TextField target) => target.onEditingComplete,
    'package:flutter/src/material/text_field.dart@TextField@onSubmitted':
        (m.Scope scope, TextField target) => target.onSubmitted,
    'package:flutter/src/material/text_field.dart@TextField@onAppPrivateCommand':
        (m.Scope scope, TextField target) => target.onAppPrivateCommand,
    'package:flutter/src/material/text_field.dart@TextField@inputFormatters':
        (m.Scope scope, TextField target) => target.inputFormatters,
    'package:flutter/src/material/text_field.dart@TextField@enabled':
        (m.Scope scope, TextField target) => target.enabled,
    'package:flutter/src/material/text_field.dart@TextField@cursorWidth':
        (m.Scope scope, TextField target) => target.cursorWidth,
    'package:flutter/src/material/text_field.dart@TextField@cursorHeight':
        (m.Scope scope, TextField target) => target.cursorHeight,
    'package:flutter/src/material/text_field.dart@TextField@cursorRadius':
        (m.Scope scope, TextField target) => target.cursorRadius,
    'package:flutter/src/material/text_field.dart@TextField@cursorOpacityAnimates':
        (m.Scope scope, TextField target) => target.cursorOpacityAnimates,
    'package:flutter/src/material/text_field.dart@TextField@cursorColor':
        (m.Scope scope, TextField target) => target.cursorColor,
    'package:flutter/src/material/text_field.dart@TextField@selectionHeightStyle':
        (m.Scope scope, TextField target) => target.selectionHeightStyle,
    'package:flutter/src/material/text_field.dart@TextField@selectionWidthStyle':
        (m.Scope scope, TextField target) => target.selectionWidthStyle,
    'package:flutter/src/material/text_field.dart@TextField@keyboardAppearance':
        (m.Scope scope, TextField target) => target.keyboardAppearance,
    'package:flutter/src/material/text_field.dart@TextField@scrollPadding':
        (m.Scope scope, TextField target) => target.scrollPadding,
    'package:flutter/src/material/text_field.dart@TextField@enableInteractiveSelection':
        (m.Scope scope, TextField target) => target.enableInteractiveSelection,
    'package:flutter/src/material/text_field.dart@TextField@selectionControls':
        (m.Scope scope, TextField target) => target.selectionControls,
    'package:flutter/src/material/text_field.dart@TextField@dragStartBehavior':
        (m.Scope scope, TextField target) => target.dragStartBehavior,
    'package:flutter/src/material/text_field.dart@TextField@onTap':
        (m.Scope scope, TextField target) => target.onTap,
    'package:flutter/src/material/text_field.dart@TextField@onTapOutside':
        (m.Scope scope, TextField target) => target.onTapOutside,
    'package:flutter/src/material/text_field.dart@TextField@mouseCursor':
        (m.Scope scope, TextField target) => target.mouseCursor,
    'package:flutter/src/material/text_field.dart@TextField@buildCounter':
        (m.Scope scope, TextField target) => target.buildCounter,
    'package:flutter/src/material/text_field.dart@TextField@scrollPhysics':
        (m.Scope scope, TextField target) => target.scrollPhysics,
    'package:flutter/src/material/text_field.dart@TextField@scrollController':
        (m.Scope scope, TextField target) => target.scrollController,
    'package:flutter/src/material/text_field.dart@TextField@autofillHints':
        (m.Scope scope, TextField target) => target.autofillHints,
    'package:flutter/src/material/text_field.dart@TextField@clipBehavior':
        (m.Scope scope, TextField target) => target.clipBehavior,
    'package:flutter/src/material/text_field.dart@TextField@restorationId':
        (m.Scope scope, TextField target) => target.restorationId,
    'package:flutter/src/material/text_field.dart@TextField@scribbleEnabled':
        (m.Scope scope, TextField target) => target.scribbleEnabled,
    'package:flutter/src/material/text_field.dart@TextField@enableIMEPersonalizedLearning':
        (m.Scope scope, TextField target) =>
            target.enableIMEPersonalizedLearning,
    'package:flutter/src/material/text_field.dart@TextField@contentInsertionConfiguration':
        (m.Scope scope, TextField target) =>
            target.contentInsertionConfiguration,
    'package:flutter/src/material/text_field.dart@TextField@contextMenuBuilder':
        (m.Scope scope, TextField target) => target.contextMenuBuilder,
    'package:flutter/src/material/text_field.dart@TextField@canRequestFocus':
        (m.Scope scope, TextField target) => target.canRequestFocus,
    'package:flutter/src/material/text_field.dart@TextField@undoController':
        (m.Scope scope, TextField target) => target.undoController,
    'package:flutter/src/material/text_field.dart@TextField@spellCheckConfiguration':
        (m.Scope scope, TextField target) => target.spellCheckConfiguration,
    'package:flutter/src/material/text_field.dart@TextField@materialMisspelledTextStyle':
        (m.Scope scope) => TextField.materialMisspelledTextStyle,
    'package:flutter/src/material/text_field.dart@TextField@selectionEnabled':
        (m.Scope scope, TextField target) => target.selectionEnabled,
    'package:flutter/src/material/text_field.dart@TextField@': (m.Scope
            scope) =>
        (
            {autocorrect,
            autofillHints,
            autofocus,
            buildCounter,
            canRequestFocus,
            clipBehavior,
            contentInsertionConfiguration,
            contextMenuBuilder,
            controller,
            cursorColor,
            cursorHeight,
            cursorOpacityAnimates,
            cursorRadius,
            cursorWidth,
            decoration,
            dragStartBehavior,
            enableIMEPersonalizedLearning,
            enableInteractiveSelection,
            enableSuggestions,
            enabled,
            expands,
            focusNode,
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
            onAppPrivateCommand,
            onChanged,
            onEditingComplete,
            onSubmitted,
            onTap,
            onTapOutside,
            readOnly,
            restorationId,
            scribbleEnabled,
            scrollController,
            scrollPadding,
            scrollPhysics,
            selectionControls,
            selectionHeightStyle,
            selectionWidthStyle,
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
            undoController}) {
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

          void onAppPrivateCommandProxy($p0, $p1) {
            engine.callFunctionPointer(
                scope, onAppPrivateCommand!, [$p0, $p1], {});
          }

          void onChangedProxy(value) {
            engine.callFunctionPointer(scope, onChanged!, [value], {});
          }

          void onEditingCompleteProxy() {
            engine.callFunctionPointer(scope, onEditingComplete!, [], {});
          }

          void onSubmittedProxy(value) {
            engine.callFunctionPointer(scope, onSubmitted!, [value], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          void onTapOutsideProxy(event) {
            engine.callFunctionPointer(scope, onTapOutside!, [event], {});
          }

          return TextField(
              autocorrect: autocorrect ?? true,
              autofillHints: autofillHints ?? const <String>[],
              autofocus: autofocus ?? false,
              buildCounter: buildCounter == null ? null : buildCounterProxy,
              canRequestFocus: canRequestFocus ?? true,
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              contentInsertionConfiguration: contentInsertionConfiguration,
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
              cursorOpacityAnimates: cursorOpacityAnimates,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth ?? 2.0,
              decoration: decoration ?? const InputDecoration(),
              dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
              enableIMEPersonalizedLearning:
                  enableIMEPersonalizedLearning ?? true,
              enableInteractiveSelection: enableInteractiveSelection,
              enableSuggestions: enableSuggestions ?? true,
              enabled: enabled,
              expands: expands ?? false,
              focusNode: focusNode,
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
              onAppPrivateCommand:
                  onAppPrivateCommand == null ? null : onAppPrivateCommandProxy,
              onChanged: onChanged == null ? null : onChangedProxy,
              onEditingComplete:
                  onEditingComplete == null ? null : onEditingCompleteProxy,
              onSubmitted: onSubmitted == null ? null : onSubmittedProxy,
              onTap: onTap == null ? null : onTapProxy,
              onTapOutside: onTapOutside == null ? null : onTapOutsideProxy,
              readOnly: readOnly ?? false,
              restorationId: restorationId,
              scribbleEnabled: scribbleEnabled ?? true,
              scrollController: scrollController,
              scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
              scrollPhysics: scrollPhysics,
              selectionControls: selectionControls,
              selectionHeightStyle:
                  selectionHeightStyle ?? BoxHeightStyle.tight,
              selectionWidthStyle: selectionWidthStyle ?? BoxWidthStyle.tight,
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
              undoController: undoController);
        },
    'package:flutter/src/material/text_field.dart@TextField@defaultSpellCheckSuggestionsToolbarBuilder':
        (m.Scope scope) => TextField.defaultSpellCheckSuggestionsToolbarBuilder,
    'package:flutter/src/material/text_field.dart@TextField@inferAndroidSpellCheckConfiguration':
        (m.Scope scope) => TextField.inferAndroidSpellCheckConfiguration,
    'package:flutter/src/material/text_field.dart@TextField@createState':
        (m.Scope scope, TextField target) => target.createState,
    'package:flutter/src/material/text_field.dart@TextField@debugFillProperties':
        (m.Scope scope, TextField target) => target.debugFillProperties,
  };
}
