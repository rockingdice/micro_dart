import 'package:flutter/src/widgets/editable_text.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui' hide TextStyle;
import 'package:characters/characters.dart'
    show CharacterRange, StringCharacters;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/autofill.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:flutter/src/widgets/context_menu_button_item.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/default_selection_style.dart';
import 'package:flutter/src/widgets/default_text_editing_shortcuts.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/magnifier.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:flutter/src/widgets/spell_check.dart';
import 'package:flutter/src/widgets/tap_region.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/text_editing_intents.dart';
import 'package:flutter/src/widgets/text_selection.dart';
import 'package:flutter/src/widgets/text_selection_toolbar_anchors.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/undo_history.dart';
import 'package:flutter/src/widgets/view.dart';
import 'package:flutter/src/widgets/widget_span.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/editable_text.dart@@kDefaultContentInsertionMimeTypes':
        (m.Scope scope) => kDefaultContentInsertionMimeTypes,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@#as':
        (m.Scope scope, target) => () => target as TextEditingController,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@#is':
        (m.Scope scope, target) => () => target is TextEditingController,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@text':
        (m.Scope scope, TextEditingController target) => target.text,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@text:set':
        (m.Scope scope, TextEditingController target) =>
            (other) => target.text = other,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@value:set':
        (m.Scope scope, TextEditingController target) =>
            (other) => target.value = other,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@selection':
        (m.Scope scope, TextEditingController target) => target.selection,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@selection:set':
        (m.Scope scope, TextEditingController target) =>
            (other) => target.selection = other,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@':
        (m.Scope scope) => ({text}) {
              return TextEditingController(text: text);
            },
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@fromValue':
        (m.Scope scope) => TextEditingController.fromValue,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@buildTextSpan':
        (m.Scope scope, TextEditingController target) => target.buildTextSpan,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@clear':
        (m.Scope scope, TextEditingController target) => target.clear,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@clearComposing':
        (m.Scope scope, TextEditingController target) => target.clearComposing,
    'package:flutter/src/widgets/editable_text.dart@TextEditingController@isSelectionWithinTextBounds':
        (m.Scope scope, TextEditingController target) =>
            target.isSelectionWithinTextBounds,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@#as':
        (m.Scope scope, target) => () => target as ToolbarOptions,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@#is':
        (m.Scope scope, target) => () => target is ToolbarOptions,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@empty':
        (m.Scope scope) => ToolbarOptions.empty,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@copy':
        (m.Scope scope, ToolbarOptions target) => target.copy,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@cut':
        (m.Scope scope, ToolbarOptions target) => target.cut,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@paste':
        (m.Scope scope, ToolbarOptions target) => target.paste,
    'package:flutter/src/widgets/editable_text.dart@ToolbarOptions@selectAll':
        (m.Scope scope, ToolbarOptions target) => target.selectAll,
    'package:flutter/src/widgets/editable_text.dart@ContentInsertionConfiguration@#as':
        (m.Scope scope, target) =>
            () => target as ContentInsertionConfiguration,
    'package:flutter/src/widgets/editable_text.dart@ContentInsertionConfiguration@#is':
        (m.Scope scope, target) =>
            () => target is ContentInsertionConfiguration,
    'package:flutter/src/widgets/editable_text.dart@ContentInsertionConfiguration@onContentInserted':
        (m.Scope scope, ContentInsertionConfiguration target) =>
            target.onContentInserted,
    'package:flutter/src/widgets/editable_text.dart@ContentInsertionConfiguration@allowedMimeTypes':
        (m.Scope scope, ContentInsertionConfiguration target) =>
            target.allowedMimeTypes,
    'package:flutter/src/widgets/editable_text.dart@ContentInsertionConfiguration@':
        (m.Scope scope) => ({allowedMimeTypes, onContentInserted}) {
              void onContentInsertedProxy(value) {
                engine.callFunctionPointer(
                    scope, onContentInserted!, [value], {});
              }

              return ContentInsertionConfiguration(
                  allowedMimeTypes:
                      allowedMimeTypes ?? kDefaultContentInsertionMimeTypes,
                  onContentInserted: onContentInsertedProxy);
            },
    'package:flutter/src/widgets/editable_text.dart@EditableText@#as':
        (m.Scope scope, target) => () => target as EditableText,
    'package:flutter/src/widgets/editable_text.dart@EditableText@#is':
        (m.Scope scope, target) => () => target is EditableText,
    'package:flutter/src/widgets/editable_text.dart@EditableText@controller':
        (m.Scope scope, EditableText target) => target.controller,
    'package:flutter/src/widgets/editable_text.dart@EditableText@focusNode':
        (m.Scope scope, EditableText target) => target.focusNode,
    'package:flutter/src/widgets/editable_text.dart@EditableText@obscuringCharacter':
        (m.Scope scope, EditableText target) => target.obscuringCharacter,
    'package:flutter/src/widgets/editable_text.dart@EditableText@obscureText':
        (m.Scope scope, EditableText target) => target.obscureText,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textHeightBehavior':
        (m.Scope scope, EditableText target) => target.textHeightBehavior,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textWidthBasis':
        (m.Scope scope, EditableText target) => target.textWidthBasis,
    'package:flutter/src/widgets/editable_text.dart@EditableText@readOnly':
        (m.Scope scope, EditableText target) => target.readOnly,
    'package:flutter/src/widgets/editable_text.dart@EditableText@forceLine':
        (m.Scope scope, EditableText target) => target.forceLine,
    'package:flutter/src/widgets/editable_text.dart@EditableText@toolbarOptions':
        (m.Scope scope, EditableText target) => target.toolbarOptions,
    'package:flutter/src/widgets/editable_text.dart@EditableText@showSelectionHandles':
        (m.Scope scope, EditableText target) => target.showSelectionHandles,
    'package:flutter/src/widgets/editable_text.dart@EditableText@showCursor':
        (m.Scope scope, EditableText target) => target.showCursor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@autocorrect':
        (m.Scope scope, EditableText target) => target.autocorrect,
    'package:flutter/src/widgets/editable_text.dart@EditableText@smartDashesType':
        (m.Scope scope, EditableText target) => target.smartDashesType,
    'package:flutter/src/widgets/editable_text.dart@EditableText@smartQuotesType':
        (m.Scope scope, EditableText target) => target.smartQuotesType,
    'package:flutter/src/widgets/editable_text.dart@EditableText@enableSuggestions':
        (m.Scope scope, EditableText target) => target.enableSuggestions,
    'package:flutter/src/widgets/editable_text.dart@EditableText@style':
        (m.Scope scope, EditableText target) => target.style,
    'package:flutter/src/widgets/editable_text.dart@EditableText@undoController':
        (m.Scope scope, EditableText target) => target.undoController,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textAlign':
        (m.Scope scope, EditableText target) => target.textAlign,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textDirection':
        (m.Scope scope, EditableText target) => target.textDirection,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textCapitalization':
        (m.Scope scope, EditableText target) => target.textCapitalization,
    'package:flutter/src/widgets/editable_text.dart@EditableText@locale':
        (m.Scope scope, EditableText target) => target.locale,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textScaleFactor':
        (m.Scope scope, EditableText target) => target.textScaleFactor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@cursorColor':
        (m.Scope scope, EditableText target) => target.cursorColor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@autocorrectionTextRectColor':
        (m.Scope scope, EditableText target) =>
            target.autocorrectionTextRectColor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@backgroundCursorColor':
        (m.Scope scope, EditableText target) => target.backgroundCursorColor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@maxLines':
        (m.Scope scope, EditableText target) => target.maxLines,
    'package:flutter/src/widgets/editable_text.dart@EditableText@minLines':
        (m.Scope scope, EditableText target) => target.minLines,
    'package:flutter/src/widgets/editable_text.dart@EditableText@expands':
        (m.Scope scope, EditableText target) => target.expands,
    'package:flutter/src/widgets/editable_text.dart@EditableText@autofocus':
        (m.Scope scope, EditableText target) => target.autofocus,
    'package:flutter/src/widgets/editable_text.dart@EditableText@selectionColor':
        (m.Scope scope, EditableText target) => target.selectionColor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@selectionControls':
        (m.Scope scope, EditableText target) => target.selectionControls,
    'package:flutter/src/widgets/editable_text.dart@EditableText@keyboardType':
        (m.Scope scope, EditableText target) => target.keyboardType,
    'package:flutter/src/widgets/editable_text.dart@EditableText@textInputAction':
        (m.Scope scope, EditableText target) => target.textInputAction,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onChanged':
        (m.Scope scope, EditableText target) => target.onChanged,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onEditingComplete':
        (m.Scope scope, EditableText target) => target.onEditingComplete,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onSubmitted':
        (m.Scope scope, EditableText target) => target.onSubmitted,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onAppPrivateCommand':
        (m.Scope scope, EditableText target) => target.onAppPrivateCommand,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onSelectionChanged':
        (m.Scope scope, EditableText target) => target.onSelectionChanged,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onSelectionHandleTapped':
        (m.Scope scope, EditableText target) => target.onSelectionHandleTapped,
    'package:flutter/src/widgets/editable_text.dart@EditableText@onTapOutside':
        (m.Scope scope, EditableText target) => target.onTapOutside,
    'package:flutter/src/widgets/editable_text.dart@EditableText@inputFormatters':
        (m.Scope scope, EditableText target) => target.inputFormatters,
    'package:flutter/src/widgets/editable_text.dart@EditableText@mouseCursor':
        (m.Scope scope, EditableText target) => target.mouseCursor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@rendererIgnoresPointer':
        (m.Scope scope, EditableText target) => target.rendererIgnoresPointer,
    'package:flutter/src/widgets/editable_text.dart@EditableText@cursorWidth':
        (m.Scope scope, EditableText target) => target.cursorWidth,
    'package:flutter/src/widgets/editable_text.dart@EditableText@cursorHeight':
        (m.Scope scope, EditableText target) => target.cursorHeight,
    'package:flutter/src/widgets/editable_text.dart@EditableText@cursorRadius':
        (m.Scope scope, EditableText target) => target.cursorRadius,
    'package:flutter/src/widgets/editable_text.dart@EditableText@cursorOpacityAnimates':
        (m.Scope scope, EditableText target) => target.cursorOpacityAnimates,
    'package:flutter/src/widgets/editable_text.dart@EditableText@cursorOffset':
        (m.Scope scope, EditableText target) => target.cursorOffset,
    'package:flutter/src/widgets/editable_text.dart@EditableText@paintCursorAboveText':
        (m.Scope scope, EditableText target) => target.paintCursorAboveText,
    'package:flutter/src/widgets/editable_text.dart@EditableText@selectionHeightStyle':
        (m.Scope scope, EditableText target) => target.selectionHeightStyle,
    'package:flutter/src/widgets/editable_text.dart@EditableText@selectionWidthStyle':
        (m.Scope scope, EditableText target) => target.selectionWidthStyle,
    'package:flutter/src/widgets/editable_text.dart@EditableText@keyboardAppearance':
        (m.Scope scope, EditableText target) => target.keyboardAppearance,
    'package:flutter/src/widgets/editable_text.dart@EditableText@scrollPadding':
        (m.Scope scope, EditableText target) => target.scrollPadding,
    'package:flutter/src/widgets/editable_text.dart@EditableText@enableInteractiveSelection':
        (m.Scope scope, EditableText target) =>
            target.enableInteractiveSelection,
    'package:flutter/src/widgets/editable_text.dart@EditableText@debugDeterministicCursor':
        (m.Scope scope) => EditableText.debugDeterministicCursor,
    'package:flutter/src/widgets/editable_text.dart@EditableText@debugDeterministicCursor:set':
        (m.Scope scope) =>
            (other) => EditableText.debugDeterministicCursor = other,
    'package:flutter/src/widgets/editable_text.dart@EditableText@dragStartBehavior':
        (m.Scope scope, EditableText target) => target.dragStartBehavior,
    'package:flutter/src/widgets/editable_text.dart@EditableText@scrollController':
        (m.Scope scope, EditableText target) => target.scrollController,
    'package:flutter/src/widgets/editable_text.dart@EditableText@scrollPhysics':
        (m.Scope scope, EditableText target) => target.scrollPhysics,
    'package:flutter/src/widgets/editable_text.dart@EditableText@scribbleEnabled':
        (m.Scope scope, EditableText target) => target.scribbleEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableText@autofillHints':
        (m.Scope scope, EditableText target) => target.autofillHints,
    'package:flutter/src/widgets/editable_text.dart@EditableText@autofillClient':
        (m.Scope scope, EditableText target) => target.autofillClient,
    'package:flutter/src/widgets/editable_text.dart@EditableText@clipBehavior':
        (m.Scope scope, EditableText target) => target.clipBehavior,
    'package:flutter/src/widgets/editable_text.dart@EditableText@restorationId':
        (m.Scope scope, EditableText target) => target.restorationId,
    'package:flutter/src/widgets/editable_text.dart@EditableText@scrollBehavior':
        (m.Scope scope, EditableText target) => target.scrollBehavior,
    'package:flutter/src/widgets/editable_text.dart@EditableText@enableIMEPersonalizedLearning':
        (m.Scope scope, EditableText target) =>
            target.enableIMEPersonalizedLearning,
    'package:flutter/src/widgets/editable_text.dart@EditableText@contentInsertionConfiguration':
        (m.Scope scope, EditableText target) =>
            target.contentInsertionConfiguration,
    'package:flutter/src/widgets/editable_text.dart@EditableText@contextMenuBuilder':
        (m.Scope scope, EditableText target) => target.contextMenuBuilder,
    'package:flutter/src/widgets/editable_text.dart@EditableText@spellCheckConfiguration':
        (m.Scope scope, EditableText target) => target.spellCheckConfiguration,
    'package:flutter/src/widgets/editable_text.dart@EditableText@magnifierConfiguration':
        (m.Scope scope, EditableText target) => target.magnifierConfiguration,
    'package:flutter/src/widgets/editable_text.dart@EditableText@strutStyle':
        (m.Scope scope, EditableText target) => target.strutStyle,
    'package:flutter/src/widgets/editable_text.dart@EditableText@selectionEnabled':
        (m.Scope scope, EditableText target) => target.selectionEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableText@': (m.Scope
            scope) =>
        (
            {autocorrect,
            autocorrectionTextRectColor,
            autofillClient,
            autofillHints,
            autofocus,
            backgroundCursorColor,
            clipBehavior,
            contentInsertionConfiguration,
            contextMenuBuilder,
            controller,
            cursorColor,
            cursorHeight,
            cursorOffset,
            cursorOpacityAnimates,
            cursorRadius,
            cursorWidth,
            dragStartBehavior,
            enableIMEPersonalizedLearning,
            enableInteractiveSelection,
            enableSuggestions,
            expands,
            focusNode,
            forceLine,
            inputFormatters,
            key,
            keyboardAppearance,
            keyboardType,
            locale,
            magnifierConfiguration,
            maxLines,
            minLines,
            mouseCursor,
            obscureText,
            obscuringCharacter,
            onAppPrivateCommand,
            onChanged,
            onEditingComplete,
            onSelectionChanged,
            onSelectionHandleTapped,
            onSubmitted,
            onTapOutside,
            paintCursorAboveText,
            readOnly,
            rendererIgnoresPointer,
            restorationId,
            scribbleEnabled,
            scrollBehavior,
            scrollController,
            scrollPadding,
            scrollPhysics,
            selectionColor,
            selectionControls,
            selectionHeightStyle,
            selectionWidthStyle,
            showCursor,
            showSelectionHandles,
            smartDashesType,
            smartQuotesType,
            spellCheckConfiguration,
            strutStyle,
            style,
            textAlign,
            textCapitalization,
            textDirection,
            textHeightBehavior,
            textInputAction,
            textScaleFactor,
            textWidthBasis,
            toolbarOptions,
            undoController}) {
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

          void onSelectionChangedProxy(selection, cause) {
            engine.callFunctionPointer(
                scope, onSelectionChanged!, [selection, cause], {});
          }

          void onSelectionHandleTappedProxy() {
            engine.callFunctionPointer(scope, onSelectionHandleTapped!, [], {});
          }

          void onSubmittedProxy(value) {
            engine.callFunctionPointer(scope, onSubmitted!, [value], {});
          }

          void onTapOutsideProxy(event) {
            engine.callFunctionPointer(scope, onTapOutside!, [event], {});
          }

          return EditableText(
              autocorrect: autocorrect ?? true,
              autocorrectionTextRectColor: autocorrectionTextRectColor,
              autofillClient: autofillClient,
              autofillHints: autofillHints ?? const <String>[],
              autofocus: autofocus ?? false,
              backgroundCursorColor: backgroundCursorColor,
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              contentInsertionConfiguration: contentInsertionConfiguration,
              contextMenuBuilder:
                  contextMenuBuilder == null ? null : contextMenuBuilderProxy,
              controller: controller,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorOffset: cursorOffset,
              cursorOpacityAnimates: cursorOpacityAnimates ?? false,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth ?? 2.0,
              dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
              enableIMEPersonalizedLearning:
                  enableIMEPersonalizedLearning ?? true,
              enableInteractiveSelection: enableInteractiveSelection,
              enableSuggestions: enableSuggestions ?? true,
              expands: expands ?? false,
              focusNode: focusNode,
              forceLine: forceLine ?? true,
              inputFormatters: inputFormatters,
              key: key,
              keyboardAppearance: keyboardAppearance ?? Brightness.light,
              keyboardType: keyboardType,
              locale: locale,
              magnifierConfiguration:
                  magnifierConfiguration ?? TextMagnifierConfiguration.disabled,
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
              onSelectionChanged:
                  onSelectionChanged == null ? null : onSelectionChangedProxy,
              onSelectionHandleTapped: onSelectionHandleTapped == null
                  ? null
                  : onSelectionHandleTappedProxy,
              onSubmitted: onSubmitted == null ? null : onSubmittedProxy,
              onTapOutside: onTapOutside == null ? null : onTapOutsideProxy,
              paintCursorAboveText: paintCursorAboveText ?? false,
              readOnly: readOnly ?? false,
              rendererIgnoresPointer: rendererIgnoresPointer ?? false,
              restorationId: restorationId,
              scribbleEnabled: scribbleEnabled ?? true,
              scrollBehavior: scrollBehavior,
              scrollController: scrollController,
              scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
              scrollPhysics: scrollPhysics,
              selectionColor: selectionColor,
              selectionControls: selectionControls,
              selectionHeightStyle:
                  selectionHeightStyle ?? BoxHeightStyle.tight,
              selectionWidthStyle: selectionWidthStyle ?? BoxWidthStyle.tight,
              showCursor: showCursor,
              showSelectionHandles: showSelectionHandles ?? false,
              smartDashesType: smartDashesType,
              smartQuotesType: smartQuotesType,
              spellCheckConfiguration: spellCheckConfiguration,
              strutStyle: strutStyle,
              style: style,
              textAlign: textAlign ?? TextAlign.start,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              textDirection: textDirection,
              textHeightBehavior: textHeightBehavior,
              textInputAction: textInputAction,
              textScaleFactor: textScaleFactor,
              textWidthBasis: textWidthBasis ?? TextWidthBasis.parent,
              toolbarOptions: toolbarOptions,
              undoController: undoController);
        },
    'package:flutter/src/widgets/editable_text.dart@EditableText@getEditableButtonItems':
        (m.Scope scope) =>
            ({clipboardStatus, onCopy, onCut, onPaste, onSelectAll}) {
              void onCopyProxy() {
                engine.callFunctionPointer(scope, onCopy!, [], {});
              }

              void onCutProxy() {
                engine.callFunctionPointer(scope, onCut!, [], {});
              }

              void onPasteProxy() {
                engine.callFunctionPointer(scope, onPaste!, [], {});
              }

              void onSelectAllProxy() {
                engine.callFunctionPointer(scope, onSelectAll!, [], {});
              }

              return EditableText.getEditableButtonItems(
                  clipboardStatus: clipboardStatus,
                  onCopy: onCopyProxy,
                  onCut: onCutProxy,
                  onPaste: onPasteProxy,
                  onSelectAll: onSelectAllProxy);
            },
    'package:flutter/src/widgets/editable_text.dart@EditableText@createState':
        (m.Scope scope, EditableText target) => target.createState,
    'package:flutter/src/widgets/editable_text.dart@EditableText@debugFillProperties':
        (m.Scope scope, EditableText target) => target.debugFillProperties,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@#as':
        (m.Scope scope, target) => () => target as EditableTextState,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@#is':
        (m.Scope scope, target) => () => target is EditableTextState,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@clipboardStatus':
        (m.Scope scope, EditableTextState target) => target.clipboardStatus,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@spellCheckResults':
        (m.Scope scope, EditableTextState target) => target.spellCheckResults,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@spellCheckResults:set':
        (m.Scope scope, EditableTextState target) =>
            (other) => target.spellCheckResults = other,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@renderEditable':
        (m.Scope scope, EditableTextState target) => target.renderEditable,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@currentAutofillScope':
        (m.Scope scope, EditableTextState target) =>
            target.currentAutofillScope,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@spellCheckConfiguration':
        (m.Scope scope, EditableTextState target) =>
            target.spellCheckConfiguration,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@spellCheckEnabled':
        (m.Scope scope, EditableTextState target) => target.spellCheckEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@wantKeepAlive':
        (m.Scope scope, EditableTextState target) => target.wantKeepAlive,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@cutEnabled':
        (m.Scope scope, EditableTextState target) => target.cutEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@copyEnabled':
        (m.Scope scope, EditableTextState target) => target.copyEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@pasteEnabled':
        (m.Scope scope, EditableTextState target) => target.pasteEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@selectAllEnabled':
        (m.Scope scope, EditableTextState target) => target.selectAllEnabled,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@contextMenuAnchors':
        (m.Scope scope, EditableTextState target) => target.contextMenuAnchors,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@contextMenuButtonItems':
        (m.Scope scope, EditableTextState target) =>
            target.contextMenuButtonItems,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@currentTextEditingValue':
        (m.Scope scope, EditableTextState target) =>
            target.currentTextEditingValue,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@cursorCurrentlyVisible':
        (m.Scope scope, EditableTextState target) =>
            target.cursorCurrentlyVisible,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@cursorBlinkInterval':
        (m.Scope scope, EditableTextState target) => target.cursorBlinkInterval,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@selectionOverlay':
        (m.Scope scope, EditableTextState target) => target.selectionOverlay,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@textEditingValue':
        (m.Scope scope, EditableTextState target) => target.textEditingValue,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@autofillId':
        (m.Scope scope, EditableTextState target) => target.autofillId,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@textInputConfiguration':
        (m.Scope scope, EditableTextState target) =>
            target.textInputConfiguration,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@':
        (m.Scope scope) => () {
              return EditableTextState();
            },
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@copySelection':
        (m.Scope scope, EditableTextState target) => target.copySelection,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@cutSelection':
        (m.Scope scope, EditableTextState target) => target.cutSelection,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@pasteText':
        (m.Scope scope, EditableTextState target) => target.pasteText,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@selectAll':
        (m.Scope scope, EditableTextState target) => target.selectAll,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@findSuggestionSpanAtCursorIndex':
        (m.Scope scope, EditableTextState target) =>
            target.findSuggestionSpanAtCursorIndex,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@initState':
        (m.Scope scope, EditableTextState target) => target.initState,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@didChangeDependencies':
        (m.Scope scope, EditableTextState target) =>
            target.didChangeDependencies,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@didUpdateWidget':
        (m.Scope scope, EditableTextState target) => target.didUpdateWidget,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@dispose':
        (m.Scope scope, EditableTextState target) => target.dispose,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@updateEditingValue':
        (m.Scope scope, EditableTextState target) => target.updateEditingValue,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@performAction':
        (m.Scope scope, EditableTextState target) => target.performAction,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@performPrivateCommand':
        (m.Scope scope, EditableTextState target) =>
            target.performPrivateCommand,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@insertContent':
        (m.Scope scope, EditableTextState target) => target.insertContent,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@updateFloatingCursor':
        (m.Scope scope, EditableTextState target) =>
            target.updateFloatingCursor,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@beginBatchEdit':
        (m.Scope scope, EditableTextState target) => target.beginBatchEdit,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@endBatchEdit':
        (m.Scope scope, EditableTextState target) => target.endBatchEdit,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@didChangeInputControl':
        (m.Scope scope, EditableTextState target) =>
            target.didChangeInputControl,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@connectionClosed':
        (m.Scope scope, EditableTextState target) => target.connectionClosed,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@requestKeyboard':
        (m.Scope scope, EditableTextState target) => target.requestKeyboard,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@didChangeMetrics':
        (m.Scope scope, EditableTextState target) => target.didChangeMetrics,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@userUpdateTextEditingValue':
        (m.Scope scope, EditableTextState target) =>
            target.userUpdateTextEditingValue,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@bringIntoView':
        (m.Scope scope, EditableTextState target) => target.bringIntoView,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@showToolbar':
        (m.Scope scope, EditableTextState target) => target.showToolbar,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@hideToolbar':
        (m.Scope scope, EditableTextState target) => target.hideToolbar,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@toggleToolbar':
        (m.Scope scope, EditableTextState target) => target.toggleToolbar,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@showSpellCheckSuggestionsToolbar':
        (m.Scope scope, EditableTextState target) =>
            target.showSpellCheckSuggestionsToolbar,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@showMagnifier':
        (m.Scope scope, EditableTextState target) => target.showMagnifier,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@hideMagnifier':
        (m.Scope scope, EditableTextState target) => target.hideMagnifier,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@insertTextPlaceholder':
        (m.Scope scope, EditableTextState target) =>
            target.insertTextPlaceholder,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@removeTextPlaceholder':
        (m.Scope scope, EditableTextState target) =>
            target.removeTextPlaceholder,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@performSelector':
        (m.Scope scope, EditableTextState target) => target.performSelector,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@autofill':
        (m.Scope scope, EditableTextState target) => target.autofill,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@showAutocorrectionPromptRect':
        (m.Scope scope, EditableTextState target) =>
            target.showAutocorrectionPromptRect,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@build':
        (m.Scope scope, EditableTextState target) => target.build,
    'package:flutter/src/widgets/editable_text.dart@EditableTextState@buildTextSpan':
        (m.Scope scope, EditableTextState target) => target.buildTextSpan,
  };
}
