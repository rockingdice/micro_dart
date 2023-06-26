import 'package:flutter/src/cupertino/text_field.dart';
import 'dart:ui' show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/desktop_text_selection.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/magnifier.dart';
import 'package:flutter/src/cupertino/spell_check_suggestions_toolbar.dart';
import 'package:flutter/src/cupertino/text_selection.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@#as':
        (m.Scope scope, target) => () => target as CupertinoTextField,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@#is':
        (m.Scope scope, target) => () => target is CupertinoTextField,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@controller':
        (m.Scope scope, CupertinoTextField target) => target.controller,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@focusNode':
        (m.Scope scope, CupertinoTextField target) => target.focusNode,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@decoration':
        (m.Scope scope, CupertinoTextField target) => target.decoration,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@padding':
        (m.Scope scope, CupertinoTextField target) => target.padding,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@placeholder':
        (m.Scope scope, CupertinoTextField target) => target.placeholder,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@placeholderStyle':
        (m.Scope scope, CupertinoTextField target) => target.placeholderStyle,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@prefix':
        (m.Scope scope, CupertinoTextField target) => target.prefix,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@prefixMode':
        (m.Scope scope, CupertinoTextField target) => target.prefixMode,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@suffix':
        (m.Scope scope, CupertinoTextField target) => target.suffix,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@suffixMode':
        (m.Scope scope, CupertinoTextField target) => target.suffixMode,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@clearButtonMode':
        (m.Scope scope, CupertinoTextField target) => target.clearButtonMode,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@keyboardType':
        (m.Scope scope, CupertinoTextField target) => target.keyboardType,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@textInputAction':
        (m.Scope scope, CupertinoTextField target) => target.textInputAction,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@textCapitalization':
        (m.Scope scope, CupertinoTextField target) => target.textCapitalization,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@style':
        (m.Scope scope, CupertinoTextField target) => target.style,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@strutStyle':
        (m.Scope scope, CupertinoTextField target) => target.strutStyle,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@textAlign':
        (m.Scope scope, CupertinoTextField target) => target.textAlign,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@toolbarOptions':
        (m.Scope scope, CupertinoTextField target) => target.toolbarOptions,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@textAlignVertical':
        (m.Scope scope, CupertinoTextField target) => target.textAlignVertical,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@textDirection':
        (m.Scope scope, CupertinoTextField target) => target.textDirection,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@readOnly':
        (m.Scope scope, CupertinoTextField target) => target.readOnly,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@showCursor':
        (m.Scope scope, CupertinoTextField target) => target.showCursor,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@autofocus':
        (m.Scope scope, CupertinoTextField target) => target.autofocus,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@obscuringCharacter':
        (m.Scope scope, CupertinoTextField target) => target.obscuringCharacter,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@obscureText':
        (m.Scope scope, CupertinoTextField target) => target.obscureText,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@autocorrect':
        (m.Scope scope, CupertinoTextField target) => target.autocorrect,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@smartDashesType':
        (m.Scope scope, CupertinoTextField target) => target.smartDashesType,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@smartQuotesType':
        (m.Scope scope, CupertinoTextField target) => target.smartQuotesType,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@enableSuggestions':
        (m.Scope scope, CupertinoTextField target) => target.enableSuggestions,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@maxLines':
        (m.Scope scope, CupertinoTextField target) => target.maxLines,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@minLines':
        (m.Scope scope, CupertinoTextField target) => target.minLines,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@expands':
        (m.Scope scope, CupertinoTextField target) => target.expands,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@maxLength':
        (m.Scope scope, CupertinoTextField target) => target.maxLength,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@maxLengthEnforcement':
        (m.Scope scope, CupertinoTextField target) =>
            target.maxLengthEnforcement,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@onChanged':
        (m.Scope scope, CupertinoTextField target) => target.onChanged,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@onEditingComplete':
        (m.Scope scope, CupertinoTextField target) => target.onEditingComplete,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@onSubmitted':
        (m.Scope scope, CupertinoTextField target) => target.onSubmitted,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@onTapOutside':
        (m.Scope scope, CupertinoTextField target) => target.onTapOutside,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@inputFormatters':
        (m.Scope scope, CupertinoTextField target) => target.inputFormatters,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@enabled':
        (m.Scope scope, CupertinoTextField target) => target.enabled,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@cursorWidth':
        (m.Scope scope, CupertinoTextField target) => target.cursorWidth,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@cursorHeight':
        (m.Scope scope, CupertinoTextField target) => target.cursorHeight,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@cursorRadius':
        (m.Scope scope, CupertinoTextField target) => target.cursorRadius,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@cursorOpacityAnimates':
        (m.Scope scope, CupertinoTextField target) =>
            target.cursorOpacityAnimates,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@cursorColor':
        (m.Scope scope, CupertinoTextField target) => target.cursorColor,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@selectionHeightStyle':
        (m.Scope scope, CupertinoTextField target) =>
            target.selectionHeightStyle,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@selectionWidthStyle':
        (m.Scope scope, CupertinoTextField target) =>
            target.selectionWidthStyle,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@keyboardAppearance':
        (m.Scope scope, CupertinoTextField target) => target.keyboardAppearance,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@scrollPadding':
        (m.Scope scope, CupertinoTextField target) => target.scrollPadding,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@enableInteractiveSelection':
        (m.Scope scope, CupertinoTextField target) =>
            target.enableInteractiveSelection,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@selectionControls':
        (m.Scope scope, CupertinoTextField target) => target.selectionControls,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@dragStartBehavior':
        (m.Scope scope, CupertinoTextField target) => target.dragStartBehavior,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@scrollController':
        (m.Scope scope, CupertinoTextField target) => target.scrollController,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@scrollPhysics':
        (m.Scope scope, CupertinoTextField target) => target.scrollPhysics,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@onTap':
        (m.Scope scope, CupertinoTextField target) => target.onTap,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@autofillHints':
        (m.Scope scope, CupertinoTextField target) => target.autofillHints,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@clipBehavior':
        (m.Scope scope, CupertinoTextField target) => target.clipBehavior,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@restorationId':
        (m.Scope scope, CupertinoTextField target) => target.restorationId,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@scribbleEnabled':
        (m.Scope scope, CupertinoTextField target) => target.scribbleEnabled,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@enableIMEPersonalizedLearning':
        (m.Scope scope, CupertinoTextField target) =>
            target.enableIMEPersonalizedLearning,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@contentInsertionConfiguration':
        (m.Scope scope, CupertinoTextField target) =>
            target.contentInsertionConfiguration,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@contextMenuBuilder':
        (m.Scope scope, CupertinoTextField target) => target.contextMenuBuilder,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@magnifierConfiguration':
        (m.Scope scope, CupertinoTextField target) =>
            target.magnifierConfiguration,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@spellCheckConfiguration':
        (m.Scope scope, CupertinoTextField target) =>
            target.spellCheckConfiguration,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@cupertinoMisspelledTextStyle':
        (m.Scope scope) => CupertinoTextField.cupertinoMisspelledTextStyle,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@kMisspelledSelectionColor':
        (m.Scope scope) => CupertinoTextField.kMisspelledSelectionColor,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@undoController':
        (m.Scope scope, CupertinoTextField target) => target.undoController,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@selectionEnabled':
        (m.Scope scope, CupertinoTextField target) => target.selectionEnabled,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@': (m
                .Scope
            scope) =>
        (
            {autocorrect,
            autofillHints,
            autofocus,
            clearButtonMode,
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
            obscureText,
            obscuringCharacter,
            onChanged,
            onEditingComplete,
            onSubmitted,
            onTap,
            onTapOutside,
            padding,
            placeholder,
            placeholderStyle,
            prefix,
            prefixMode,
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
            suffix,
            suffixMode,
            textAlign,
            textAlignVertical,
            textCapitalization,
            textDirection,
            textInputAction,
            toolbarOptions,
            undoController}) {
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

          void onSubmittedProxy(value) {
            engine.callFunctionPointer(scope, onSubmitted!, [value], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          void onTapOutsideProxy(event) {
            engine.callFunctionPointer(scope, onTapOutside!, [event], {});
          }

          return CupertinoTextField(
              autocorrect: autocorrect ?? true,
              autofillHints: autofillHints ?? const <String>[],
              autofocus: autofocus ?? false,
              clearButtonMode: clearButtonMode ?? OverlayVisibilityMode.never,
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              contentInsertionConfiguration: contentInsertionConfiguration,
              contextMenuBuilder: contextMenuBuilder == null
                  ? (BuildContext context,
                      EditableTextState editableTextState) {
                      return CupertinoAdaptiveTextSelectionToolbar.editableText(
                        editableTextState: editableTextState,
                      );
                    }
                  : contextMenuBuilderProxy,
              controller: controller,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorOpacityAnimates: cursorOpacityAnimates ?? true,
              cursorRadius: cursorRadius ?? const Radius.circular(2.0),
              cursorWidth: cursorWidth ?? 2.0,
              decoration: decoration ??
                  BoxDecoration(
                    color: CupertinoDynamicColor.withBrightness(
                      color: CupertinoColors.white,
                      darkColor: CupertinoColors.black,
                    ),
                    border: Border(
                      top: BorderSide(
                        color: CupertinoDynamicColor.withBrightness(
                          color: Color(0x33000000),
                          darkColor: Color(0x33FFFFFF),
                        ),
                        width: 0.0,
                      ),
                      bottom: BorderSide(
                        color: CupertinoDynamicColor.withBrightness(
                          color: Color(0x33000000),
                          darkColor: Color(0x33FFFFFF),
                        ),
                        width: 0.0,
                      ),
                      left: BorderSide(
                        color: CupertinoDynamicColor.withBrightness(
                          color: Color(0x33000000),
                          darkColor: Color(0x33FFFFFF),
                        ),
                        width: 0.0,
                      ),
                      right: BorderSide(
                        color: CupertinoDynamicColor.withBrightness(
                          color: Color(0x33000000),
                          darkColor: Color(0x33FFFFFF),
                        ),
                        width: 0.0,
                      ),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
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
              obscureText: obscureText ?? false,
              obscuringCharacter: obscuringCharacter ?? '•',
              onChanged: onChanged == null ? null : onChangedProxy,
              onEditingComplete:
                  onEditingComplete == null ? null : onEditingCompleteProxy,
              onSubmitted: onSubmitted == null ? null : onSubmittedProxy,
              onTap: onTap == null ? null : onTapProxy,
              onTapOutside: onTapOutside == null ? null : onTapOutsideProxy,
              padding: padding ?? const EdgeInsets.all(7.0),
              placeholder: placeholder,
              placeholderStyle: placeholderStyle ??
                  const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CupertinoColors.placeholderText),
              prefix: prefix,
              prefixMode: prefixMode ?? OverlayVisibilityMode.always,
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
              suffix: suffix,
              suffixMode: suffixMode ?? OverlayVisibilityMode.always,
              textAlign: textAlign ?? TextAlign.start,
              textAlignVertical: textAlignVertical,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              textDirection: textDirection,
              textInputAction: textInputAction,
              toolbarOptions: toolbarOptions,
              undoController: undoController);
        },
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@borderless':
        (m.Scope scope) => (
                {autocorrect,
                autofillHints,
                autofocus,
                clearButtonMode,
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
                obscureText,
                obscuringCharacter,
                onChanged,
                onEditingComplete,
                onSubmitted,
                onTap,
                onTapOutside,
                padding,
                placeholder,
                placeholderStyle,
                prefix,
                prefixMode,
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
                suffix,
                suffixMode,
                textAlign,
                textAlignVertical,
                textCapitalization,
                textDirection,
                textInputAction,
                toolbarOptions,
                undoController}) {
              Widget contextMenuBuilderProxy(context, editableTextState) {
                return engine.callFunctionPointer(scope, contextMenuBuilder!,
                    [context, editableTextState], {});
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

              return CupertinoTextField.borderless(
                  autocorrect: autocorrect ?? true,
                  autofillHints: autofillHints ?? const <String>[],
                  autofocus: autofocus ?? false,
                  clearButtonMode:
                      clearButtonMode ?? OverlayVisibilityMode.never,
                  clipBehavior: clipBehavior ?? Clip.hardEdge,
                  contentInsertionConfiguration: contentInsertionConfiguration,
                  contextMenuBuilder: contextMenuBuilder == null
                      ? (BuildContext context,
                          EditableTextState editableTextState) {
                          return CupertinoAdaptiveTextSelectionToolbar
                              .editableText(
                            editableTextState: editableTextState,
                          );
                        }
                      : contextMenuBuilderProxy,
                  controller: controller,
                  cursorColor: cursorColor,
                  cursorHeight: cursorHeight,
                  cursorOpacityAnimates: cursorOpacityAnimates ?? true,
                  cursorRadius: cursorRadius ?? const Radius.circular(2.0),
                  cursorWidth: cursorWidth ?? 2.0,
                  decoration: decoration,
                  dragStartBehavior:
                      dragStartBehavior ?? DragStartBehavior.start,
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
                  obscureText: obscureText ?? false,
                  obscuringCharacter: obscuringCharacter ?? '•',
                  onChanged: onChanged == null ? null : onChangedProxy,
                  onEditingComplete:
                      onEditingComplete == null ? null : onEditingCompleteProxy,
                  onSubmitted: onSubmitted == null ? null : onSubmittedProxy,
                  onTap: onTap == null ? null : onTapProxy,
                  onTapOutside: onTapOutside == null ? null : onTapOutsideProxy,
                  padding: padding ?? const EdgeInsets.all(7.0),
                  placeholder: placeholder,
                  placeholderStyle: placeholderStyle ??
                      TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CupertinoColors.placeholderText,
                      ),
                  prefix: prefix,
                  prefixMode: prefixMode ?? OverlayVisibilityMode.always,
                  readOnly: readOnly ?? false,
                  restorationId: restorationId,
                  scribbleEnabled: scribbleEnabled ?? true,
                  scrollController: scrollController,
                  scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
                  scrollPhysics: scrollPhysics,
                  selectionControls: selectionControls,
                  selectionHeightStyle:
                      selectionHeightStyle ?? BoxHeightStyle.tight,
                  selectionWidthStyle:
                      selectionWidthStyle ?? BoxWidthStyle.tight,
                  showCursor: showCursor,
                  smartDashesType: smartDashesType,
                  smartQuotesType: smartQuotesType,
                  spellCheckConfiguration: spellCheckConfiguration,
                  strutStyle: strutStyle,
                  style: style,
                  suffix: suffix,
                  suffixMode: suffixMode ?? OverlayVisibilityMode.always,
                  textAlign: textAlign ?? TextAlign.start,
                  textAlignVertical: textAlignVertical,
                  textCapitalization:
                      textCapitalization ?? TextCapitalization.none,
                  textDirection: textDirection,
                  textInputAction: textInputAction,
                  toolbarOptions: toolbarOptions,
                  undoController: undoController);
            },
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@defaultSpellCheckSuggestionsToolbarBuilder':
        (m.Scope scope) =>
            CupertinoTextField.defaultSpellCheckSuggestionsToolbarBuilder,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@createState':
        (m.Scope scope, CupertinoTextField target) => target.createState,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@debugFillProperties':
        (m.Scope scope, CupertinoTextField target) =>
            target.debugFillProperties,
    'package:flutter/src/cupertino/text_field.dart@CupertinoTextField@inferIOSSpellCheckConfiguration':
        (m.Scope scope) => CupertinoTextField.inferIOSSpellCheckConfiguration,
  };
}
