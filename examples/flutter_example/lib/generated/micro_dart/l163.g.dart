import 'package:flutter/src/material/selectable_text.dart';
import 'dart:ui' show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/material/desktop_text_selection.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/magnifier.dart';
import 'package:flutter/src/material/text_selection.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/selectable_text.dart@@iOSHorizontalOffset':
        (m.Scope scope) => iOSHorizontalOffset,
    'package:flutter/src/material/selectable_text.dart@SelectableText@#as':
        (m.Scope scope, target) => () => target as SelectableText,
    'package:flutter/src/material/selectable_text.dart@SelectableText@#is':
        (m.Scope scope, target) => () => target is SelectableText,
    'package:flutter/src/material/selectable_text.dart@SelectableText@data':
        (m.Scope scope, SelectableText target) => target.data,
    'package:flutter/src/material/selectable_text.dart@SelectableText@textSpan':
        (m.Scope scope, SelectableText target) => target.textSpan,
    'package:flutter/src/material/selectable_text.dart@SelectableText@focusNode':
        (m.Scope scope, SelectableText target) => target.focusNode,
    'package:flutter/src/material/selectable_text.dart@SelectableText@style':
        (m.Scope scope, SelectableText target) => target.style,
    'package:flutter/src/material/selectable_text.dart@SelectableText@strutStyle':
        (m.Scope scope, SelectableText target) => target.strutStyle,
    'package:flutter/src/material/selectable_text.dart@SelectableText@textAlign':
        (m.Scope scope, SelectableText target) => target.textAlign,
    'package:flutter/src/material/selectable_text.dart@SelectableText@textDirection':
        (m.Scope scope, SelectableText target) => target.textDirection,
    'package:flutter/src/material/selectable_text.dart@SelectableText@textScaleFactor':
        (m.Scope scope, SelectableText target) => target.textScaleFactor,
    'package:flutter/src/material/selectable_text.dart@SelectableText@autofocus':
        (m.Scope scope, SelectableText target) => target.autofocus,
    'package:flutter/src/material/selectable_text.dart@SelectableText@minLines':
        (m.Scope scope, SelectableText target) => target.minLines,
    'package:flutter/src/material/selectable_text.dart@SelectableText@maxLines':
        (m.Scope scope, SelectableText target) => target.maxLines,
    'package:flutter/src/material/selectable_text.dart@SelectableText@showCursor':
        (m.Scope scope, SelectableText target) => target.showCursor,
    'package:flutter/src/material/selectable_text.dart@SelectableText@cursorWidth':
        (m.Scope scope, SelectableText target) => target.cursorWidth,
    'package:flutter/src/material/selectable_text.dart@SelectableText@cursorHeight':
        (m.Scope scope, SelectableText target) => target.cursorHeight,
    'package:flutter/src/material/selectable_text.dart@SelectableText@cursorRadius':
        (m.Scope scope, SelectableText target) => target.cursorRadius,
    'package:flutter/src/material/selectable_text.dart@SelectableText@cursorColor':
        (m.Scope scope, SelectableText target) => target.cursorColor,
    'package:flutter/src/material/selectable_text.dart@SelectableText@selectionHeightStyle':
        (m.Scope scope, SelectableText target) => target.selectionHeightStyle,
    'package:flutter/src/material/selectable_text.dart@SelectableText@selectionWidthStyle':
        (m.Scope scope, SelectableText target) => target.selectionWidthStyle,
    'package:flutter/src/material/selectable_text.dart@SelectableText@enableInteractiveSelection':
        (m.Scope scope, SelectableText target) =>
            target.enableInteractiveSelection,
    'package:flutter/src/material/selectable_text.dart@SelectableText@selectionControls':
        (m.Scope scope, SelectableText target) => target.selectionControls,
    'package:flutter/src/material/selectable_text.dart@SelectableText@dragStartBehavior':
        (m.Scope scope, SelectableText target) => target.dragStartBehavior,
    'package:flutter/src/material/selectable_text.dart@SelectableText@toolbarOptions':
        (m.Scope scope, SelectableText target) => target.toolbarOptions,
    'package:flutter/src/material/selectable_text.dart@SelectableText@onTap':
        (m.Scope scope, SelectableText target) => target.onTap,
    'package:flutter/src/material/selectable_text.dart@SelectableText@scrollPhysics':
        (m.Scope scope, SelectableText target) => target.scrollPhysics,
    'package:flutter/src/material/selectable_text.dart@SelectableText@semanticsLabel':
        (m.Scope scope, SelectableText target) => target.semanticsLabel,
    'package:flutter/src/material/selectable_text.dart@SelectableText@textHeightBehavior':
        (m.Scope scope, SelectableText target) => target.textHeightBehavior,
    'package:flutter/src/material/selectable_text.dart@SelectableText@textWidthBasis':
        (m.Scope scope, SelectableText target) => target.textWidthBasis,
    'package:flutter/src/material/selectable_text.dart@SelectableText@onSelectionChanged':
        (m.Scope scope, SelectableText target) => target.onSelectionChanged,
    'package:flutter/src/material/selectable_text.dart@SelectableText@contextMenuBuilder':
        (m.Scope scope, SelectableText target) => target.contextMenuBuilder,
    'package:flutter/src/material/selectable_text.dart@SelectableText@magnifierConfiguration':
        (m.Scope scope, SelectableText target) => target.magnifierConfiguration,
    'package:flutter/src/material/selectable_text.dart@SelectableText@selectionEnabled':
        (m.Scope scope, SelectableText target) => target.selectionEnabled,
    'package:flutter/src/material/selectable_text.dart@SelectableText@': (m
                .Scope
            scope) =>
        (data,
            {autofocus,
            contextMenuBuilder,
            cursorColor,
            cursorHeight,
            cursorRadius,
            cursorWidth,
            dragStartBehavior,
            enableInteractiveSelection,
            focusNode,
            key,
            magnifierConfiguration,
            maxLines,
            minLines,
            onSelectionChanged,
            onTap,
            scrollPhysics,
            selectionControls,
            selectionHeightStyle,
            selectionWidthStyle,
            semanticsLabel,
            showCursor,
            strutStyle,
            style,
            textAlign,
            textDirection,
            textHeightBehavior,
            textScaleFactor,
            textWidthBasis,
            toolbarOptions}) {
          Widget contextMenuBuilderProxy(context, editableTextState) {
            return engine.callFunctionPointer(
                scope, contextMenuBuilder!, [context, editableTextState], {});
          }

          void onSelectionChangedProxy(selection, cause) {
            engine.callFunctionPointer(
                scope, onSelectionChanged!, [selection, cause], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          return SelectableText(data,
              autofocus: autofocus ?? false,
              contextMenuBuilder: contextMenuBuilder == null
                  ? (BuildContext context,
                      EditableTextState editableTextState) {
                      return AdaptiveTextSelectionToolbar.editableText(
                        editableTextState: editableTextState,
                      );
                    }
                  : contextMenuBuilderProxy,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth ?? 2.0,
              dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
              enableInteractiveSelection: enableInteractiveSelection ?? true,
              focusNode: focusNode,
              key: key,
              magnifierConfiguration: magnifierConfiguration,
              maxLines: maxLines,
              minLines: minLines,
              onSelectionChanged:
                  onSelectionChanged == null ? null : onSelectionChangedProxy,
              onTap: onTap == null ? null : onTapProxy,
              scrollPhysics: scrollPhysics,
              selectionControls: selectionControls,
              selectionHeightStyle:
                  selectionHeightStyle ?? BoxHeightStyle.tight,
              selectionWidthStyle: selectionWidthStyle ?? BoxWidthStyle.tight,
              semanticsLabel: semanticsLabel,
              showCursor: showCursor ?? false,
              strutStyle: strutStyle,
              style: style,
              textAlign: textAlign,
              textDirection: textDirection,
              textHeightBehavior: textHeightBehavior,
              textScaleFactor: textScaleFactor,
              textWidthBasis: textWidthBasis,
              toolbarOptions: toolbarOptions);
        },
    'package:flutter/src/material/selectable_text.dart@SelectableText@rich': (m
                .Scope
            scope) =>
        (textSpan,
            {autofocus,
            contextMenuBuilder,
            cursorColor,
            cursorHeight,
            cursorRadius,
            cursorWidth,
            dragStartBehavior,
            enableInteractiveSelection,
            focusNode,
            key,
            magnifierConfiguration,
            maxLines,
            minLines,
            onSelectionChanged,
            onTap,
            scrollPhysics,
            selectionControls,
            selectionHeightStyle,
            selectionWidthStyle,
            semanticsLabel,
            showCursor,
            strutStyle,
            style,
            textAlign,
            textDirection,
            textHeightBehavior,
            textScaleFactor,
            textWidthBasis,
            toolbarOptions}) {
          Widget contextMenuBuilderProxy(context, editableTextState) {
            return engine.callFunctionPointer(
                scope, contextMenuBuilder!, [context, editableTextState], {});
          }

          void onSelectionChangedProxy(selection, cause) {
            engine.callFunctionPointer(
                scope, onSelectionChanged!, [selection, cause], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          return SelectableText.rich(textSpan,
              autofocus: autofocus ?? false,
              contextMenuBuilder: contextMenuBuilder == null
                  ? (BuildContext context,
                      EditableTextState editableTextState) {
                      return AdaptiveTextSelectionToolbar.editableText(
                        editableTextState: editableTextState,
                      );
                    }
                  : contextMenuBuilderProxy,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth ?? 2.0,
              dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
              enableInteractiveSelection: enableInteractiveSelection ?? true,
              focusNode: focusNode,
              key: key,
              magnifierConfiguration: magnifierConfiguration,
              maxLines: maxLines,
              minLines: minLines,
              onSelectionChanged:
                  onSelectionChanged == null ? null : onSelectionChangedProxy,
              onTap: onTap == null ? null : onTapProxy,
              scrollPhysics: scrollPhysics,
              selectionControls: selectionControls,
              selectionHeightStyle:
                  selectionHeightStyle ?? BoxHeightStyle.tight,
              selectionWidthStyle: selectionWidthStyle ?? BoxWidthStyle.tight,
              semanticsLabel: semanticsLabel,
              showCursor: showCursor ?? false,
              strutStyle: strutStyle,
              style: style,
              textAlign: textAlign,
              textDirection: textDirection,
              textHeightBehavior: textHeightBehavior,
              textScaleFactor: textScaleFactor,
              textWidthBasis: textWidthBasis,
              toolbarOptions: toolbarOptions);
        },
    'package:flutter/src/material/selectable_text.dart@SelectableText@createState':
        (m.Scope scope, SelectableText target) => target.createState,
    'package:flutter/src/material/selectable_text.dart@SelectableText@debugFillProperties':
        (m.Scope scope, SelectableText target) => target.debugFillProperties,
  };
}
