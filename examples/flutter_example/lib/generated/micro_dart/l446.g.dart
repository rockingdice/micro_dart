import 'package:flutter/src/rendering/editable.dart';
import 'dart:collection';
import 'dart:math';
import 'dart:ui'
    show
        BoxHeightStyle,
        BoxWidthStyle,
        LineMetrics,
        PlaceholderAlignment,
        TextBox;
import 'package:characters/characters.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/paragraph.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@#as':
        (m.Scope scope, target) => () => target as TextSelectionPoint,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@#is':
        (m.Scope scope, target) => () => target is TextSelectionPoint,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@point':
        (m.Scope scope, TextSelectionPoint target) => target.point,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@direction':
        (m.Scope scope, TextSelectionPoint target) => target.direction,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@hashCode':
        (m.Scope scope, TextSelectionPoint target) => target.hashCode,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@':
        (m.Scope scope) => TextSelectionPoint,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@==':
        (m.Scope scope, TextSelectionPoint target) =>
            (other) => target == other,
    'package:flutter/src/rendering/editable.dart@TextSelectionPoint@toString':
        (m.Scope scope, TextSelectionPoint target) => target.toString,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@#as':
        (m.Scope scope, target) => () => target as VerticalCaretMovementRun,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@#is':
        (m.Scope scope, target) => () => target is VerticalCaretMovementRun,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@isValid':
        (m.Scope scope, VerticalCaretMovementRun target) => target.isValid,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@current':
        (m.Scope scope, VerticalCaretMovementRun target) => target.current,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@moveNext':
        (m.Scope scope, VerticalCaretMovementRun target) => target.moveNext,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@movePrevious':
        (m.Scope scope, VerticalCaretMovementRun target) => target.movePrevious,
    'package:flutter/src/rendering/editable.dart@VerticalCaretMovementRun@moveByOffset':
        (m.Scope scope, VerticalCaretMovementRun target) => target.moveByOffset,
    'package:flutter/src/rendering/editable.dart@RenderEditable@#as':
        (m.Scope scope, target) => () => target as RenderEditable,
    'package:flutter/src/rendering/editable.dart@RenderEditable@#is':
        (m.Scope scope, target) => () => target is RenderEditable,
    'package:flutter/src/rendering/editable.dart@RenderEditable@onCaretChanged':
        (m.Scope scope, RenderEditable target) => target.onCaretChanged,
    'package:flutter/src/rendering/editable.dart@RenderEditable@onCaretChanged:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.onCaretChanged = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@ignorePointer':
        (m.Scope scope, RenderEditable target) => target.ignorePointer,
    'package:flutter/src/rendering/editable.dart@RenderEditable@ignorePointer:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.ignorePointer = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textSelectionDelegate':
        (m.Scope scope, RenderEditable target) => target.textSelectionDelegate,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textSelectionDelegate:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.textSelectionDelegate = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@floatingCursorAddedMargin':
        (m.Scope scope, RenderEditable target) =>
            target.floatingCursorAddedMargin,
    'package:flutter/src/rendering/editable.dart@RenderEditable@floatingCursorAddedMargin:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.floatingCursorAddedMargin = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@foregroundPainter':
        (m.Scope scope, RenderEditable target) => target.foregroundPainter,
    'package:flutter/src/rendering/editable.dart@RenderEditable@foregroundPainter:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.foregroundPainter = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@painter':
        (m.Scope scope, RenderEditable target) => target.painter,
    'package:flutter/src/rendering/editable.dart@RenderEditable@painter:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.painter = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textHeightBehavior':
        (m.Scope scope, RenderEditable target) => target.textHeightBehavior,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textHeightBehavior:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.textHeightBehavior = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textWidthBasis':
        (m.Scope scope, RenderEditable target) => target.textWidthBasis,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textWidthBasis:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.textWidthBasis = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@devicePixelRatio':
        (m.Scope scope, RenderEditable target) => target.devicePixelRatio,
    'package:flutter/src/rendering/editable.dart@RenderEditable@devicePixelRatio:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.devicePixelRatio = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@obscuringCharacter':
        (m.Scope scope, RenderEditable target) => target.obscuringCharacter,
    'package:flutter/src/rendering/editable.dart@RenderEditable@obscuringCharacter:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.obscuringCharacter = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@obscureText':
        (m.Scope scope, RenderEditable target) => target.obscureText,
    'package:flutter/src/rendering/editable.dart@RenderEditable@obscureText:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.obscureText = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionHeightStyle':
        (m.Scope scope, RenderEditable target) => target.selectionHeightStyle,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionHeightStyle:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.selectionHeightStyle = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionWidthStyle':
        (m.Scope scope, RenderEditable target) => target.selectionWidthStyle,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionWidthStyle:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.selectionWidthStyle = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionStartInViewport':
        (m.Scope scope, RenderEditable target) =>
            target.selectionStartInViewport,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionEndInViewport':
        (m.Scope scope, RenderEditable target) => target.selectionEndInViewport,
    'package:flutter/src/rendering/editable.dart@RenderEditable@plainText':
        (m.Scope scope, RenderEditable target) => target.plainText,
    'package:flutter/src/rendering/editable.dart@RenderEditable@text':
        (m.Scope scope, RenderEditable target) => target.text,
    'package:flutter/src/rendering/editable.dart@RenderEditable@text:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.text = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textAlign':
        (m.Scope scope, RenderEditable target) => target.textAlign,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textAlign:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.textAlign = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textDirection':
        (m.Scope scope, RenderEditable target) => target.textDirection,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textDirection:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.textDirection = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@locale':
        (m.Scope scope, RenderEditable target) => target.locale,
    'package:flutter/src/rendering/editable.dart@RenderEditable@locale:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.locale = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@strutStyle':
        (m.Scope scope, RenderEditable target) => target.strutStyle,
    'package:flutter/src/rendering/editable.dart@RenderEditable@strutStyle:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.strutStyle = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorColor':
        (m.Scope scope, RenderEditable target) => target.cursorColor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorColor:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.cursorColor = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@backgroundCursorColor':
        (m.Scope scope, RenderEditable target) => target.backgroundCursorColor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@backgroundCursorColor:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.backgroundCursorColor = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@showCursor':
        (m.Scope scope, RenderEditable target) => target.showCursor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@showCursor:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.showCursor = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@hasFocus':
        (m.Scope scope, RenderEditable target) => target.hasFocus,
    'package:flutter/src/rendering/editable.dart@RenderEditable@hasFocus:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.hasFocus = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@forceLine':
        (m.Scope scope, RenderEditable target) => target.forceLine,
    'package:flutter/src/rendering/editable.dart@RenderEditable@forceLine:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.forceLine = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@readOnly':
        (m.Scope scope, RenderEditable target) => target.readOnly,
    'package:flutter/src/rendering/editable.dart@RenderEditable@readOnly:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.readOnly = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@maxLines':
        (m.Scope scope, RenderEditable target) => target.maxLines,
    'package:flutter/src/rendering/editable.dart@RenderEditable@maxLines:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.maxLines = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@minLines':
        (m.Scope scope, RenderEditable target) => target.minLines,
    'package:flutter/src/rendering/editable.dart@RenderEditable@minLines:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.minLines = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@expands':
        (m.Scope scope, RenderEditable target) => target.expands,
    'package:flutter/src/rendering/editable.dart@RenderEditable@expands:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.expands = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionColor':
        (m.Scope scope, RenderEditable target) => target.selectionColor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionColor:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.selectionColor = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textScaleFactor':
        (m.Scope scope, RenderEditable target) => target.textScaleFactor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@textScaleFactor:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.textScaleFactor = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selection':
        (m.Scope scope, RenderEditable target) => target.selection,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selection:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.selection = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@offset':
        (m.Scope scope, RenderEditable target) => target.offset,
    'package:flutter/src/rendering/editable.dart@RenderEditable@offset:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.offset = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorWidth':
        (m.Scope scope, RenderEditable target) => target.cursorWidth,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorWidth:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.cursorWidth = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorHeight':
        (m.Scope scope, RenderEditable target) => target.cursorHeight,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorHeight:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.cursorHeight = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@paintCursorAboveText':
        (m.Scope scope, RenderEditable target) => target.paintCursorAboveText,
    'package:flutter/src/rendering/editable.dart@RenderEditable@paintCursorAboveText:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.paintCursorAboveText = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorOffset':
        (m.Scope scope, RenderEditable target) => target.cursorOffset,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorOffset:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.cursorOffset = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorRadius':
        (m.Scope scope, RenderEditable target) => target.cursorRadius,
    'package:flutter/src/rendering/editable.dart@RenderEditable@cursorRadius:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.cursorRadius = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@startHandleLayerLink':
        (m.Scope scope, RenderEditable target) => target.startHandleLayerLink,
    'package:flutter/src/rendering/editable.dart@RenderEditable@startHandleLayerLink:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.startHandleLayerLink = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@endHandleLayerLink':
        (m.Scope scope, RenderEditable target) => target.endHandleLayerLink,
    'package:flutter/src/rendering/editable.dart@RenderEditable@endHandleLayerLink:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.endHandleLayerLink = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@enableInteractiveSelection':
        (m.Scope scope, RenderEditable target) =>
            target.enableInteractiveSelection,
    'package:flutter/src/rendering/editable.dart@RenderEditable@enableInteractiveSelection:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.enableInteractiveSelection = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectionEnabled':
        (m.Scope scope, RenderEditable target) => target.selectionEnabled,
    'package:flutter/src/rendering/editable.dart@RenderEditable@promptRectColor':
        (m.Scope scope, RenderEditable target) => target.promptRectColor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@promptRectColor:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.promptRectColor = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@maxScrollExtent':
        (m.Scope scope, RenderEditable target) => target.maxScrollExtent,
    'package:flutter/src/rendering/editable.dart@RenderEditable@clipBehavior':
        (m.Scope scope, RenderEditable target) => target.clipBehavior,
    'package:flutter/src/rendering/editable.dart@RenderEditable@clipBehavior:set':
        (m.Scope scope, RenderEditable target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/editable.dart@RenderEditable@preferredLineHeight':
        (m.Scope scope, RenderEditable target) => target.preferredLineHeight,
    'package:flutter/src/rendering/editable.dart@RenderEditable@lastSecondaryTapDownPosition':
        (m.Scope scope, RenderEditable target) =>
            target.lastSecondaryTapDownPosition,
    'package:flutter/src/rendering/editable.dart@RenderEditable@wordBoundaries':
        (m.Scope scope, RenderEditable target) => target.wordBoundaries,
    'package:flutter/src/rendering/editable.dart@RenderEditable@': (m.Scope
            scope) =>
        (
            {backgroundCursorColor,
            children,
            clipBehavior,
            cursorColor,
            cursorHeight,
            cursorOffset,
            cursorRadius,
            cursorWidth,
            devicePixelRatio,
            enableInteractiveSelection,
            endHandleLayerLink,
            expands,
            floatingCursorAddedMargin,
            forceLine,
            foregroundPainter,
            hasFocus,
            ignorePointer,
            locale,
            maxLines,
            minLines,
            obscureText,
            obscuringCharacter,
            offset,
            onCaretChanged,
            paintCursorAboveText,
            painter,
            promptRectColor,
            promptRectRange,
            readOnly,
            selection,
            selectionColor,
            selectionHeightStyle,
            selectionWidthStyle,
            showCursor,
            startHandleLayerLink,
            strutStyle,
            text,
            textAlign,
            textDirection,
            textHeightBehavior,
            textScaleFactor,
            textSelectionDelegate,
            textWidthBasis}) {
          void onCaretChangedProxy(caretRect) {
            engine.callFunctionPointer(scope, onCaretChanged!, [caretRect], {});
          }

          return RenderEditable(
              backgroundCursorColor: backgroundCursorColor,
              children: children,
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorOffset: cursorOffset ?? Offset.zero,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth ?? 1.0,
              devicePixelRatio: devicePixelRatio ?? 1.0,
              enableInteractiveSelection: enableInteractiveSelection,
              endHandleLayerLink: endHandleLayerLink,
              expands: expands ?? false,
              floatingCursorAddedMargin: floatingCursorAddedMargin ??
                  const EdgeInsets.fromLTRB(4, 4, 4, 5),
              forceLine: forceLine ?? true,
              foregroundPainter: foregroundPainter,
              hasFocus: hasFocus,
              ignorePointer: ignorePointer ?? false,
              locale: locale,
              maxLines: maxLines ?? 1,
              minLines: minLines,
              obscureText: obscureText ?? false,
              obscuringCharacter: obscuringCharacter ?? '•',
              offset: offset,
              onCaretChanged:
                  onCaretChanged == null ? null : onCaretChangedProxy,
              paintCursorAboveText: paintCursorAboveText ?? false,
              painter: painter,
              promptRectColor: promptRectColor,
              promptRectRange: promptRectRange,
              readOnly: readOnly ?? false,
              selection: selection,
              selectionColor: selectionColor,
              selectionHeightStyle:
                  selectionHeightStyle ?? BoxHeightStyle.tight,
              selectionWidthStyle: selectionWidthStyle ?? BoxWidthStyle.tight,
              showCursor: showCursor,
              startHandleLayerLink: startHandleLayerLink,
              strutStyle: strutStyle,
              text: text,
              textAlign: textAlign ?? TextAlign.start,
              textDirection: textDirection,
              textHeightBehavior: textHeightBehavior,
              textScaleFactor: textScaleFactor ?? 1.0,
              textSelectionDelegate: textSelectionDelegate,
              textWidthBasis: textWidthBasis ?? TextWidthBasis.parent);
        },
    'package:flutter/src/rendering/editable.dart@RenderEditable@setupParentData':
        (m.Scope scope, RenderEditable target) => target.setupParentData,
    'package:flutter/src/rendering/editable.dart@RenderEditable@dispose':
        (m.Scope scope, RenderEditable target) => target.dispose,
    'package:flutter/src/rendering/editable.dart@RenderEditable@debugAssertLayoutUpToDate':
        (m.Scope scope, RenderEditable target) =>
            target.debugAssertLayoutUpToDate,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getLineAtOffset':
        (m.Scope scope, RenderEditable target) => target.getLineAtOffset,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getWordBoundary':
        (m.Scope scope, RenderEditable target) => target.getWordBoundary,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getTextPositionAbove':
        (m.Scope scope, RenderEditable target) => target.getTextPositionAbove,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getTextPositionBelow':
        (m.Scope scope, RenderEditable target) => target.getTextPositionBelow,
    'package:flutter/src/rendering/editable.dart@RenderEditable@markNeedsPaint':
        (m.Scope scope, RenderEditable target) => target.markNeedsPaint,
    'package:flutter/src/rendering/editable.dart@RenderEditable@markNeedsTextLayout':
        (m.Scope scope, RenderEditable target) => target.markNeedsTextLayout,
    'package:flutter/src/rendering/editable.dart@RenderEditable@systemFontsDidChange':
        (m.Scope scope, RenderEditable target) => target.systemFontsDidChange,
    'package:flutter/src/rendering/editable.dart@RenderEditable@setPromptRectRange':
        (m.Scope scope, RenderEditable target) => target.setPromptRectRange,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getBoxesForSelection':
        (m.Scope scope, RenderEditable target) => target.getBoxesForSelection,
    'package:flutter/src/rendering/editable.dart@RenderEditable@describeSemanticsConfiguration':
        (m.Scope scope, RenderEditable target) =>
            target.describeSemanticsConfiguration,
    'package:flutter/src/rendering/editable.dart@RenderEditable@assembleSemanticsNode':
        (m.Scope scope, RenderEditable target) => target.assembleSemanticsNode,
    'package:flutter/src/rendering/editable.dart@RenderEditable@attach':
        (m.Scope scope, RenderEditable target) => target.attach,
    'package:flutter/src/rendering/editable.dart@RenderEditable@detach':
        (m.Scope scope, RenderEditable target) => target.detach,
    'package:flutter/src/rendering/editable.dart@RenderEditable@redepthChildren':
        (m.Scope scope, RenderEditable target) => target.redepthChildren,
    'package:flutter/src/rendering/editable.dart@RenderEditable@visitChildren':
        (m.Scope scope, RenderEditable target) => (visitor) {
              void visitorProxy(child) {
                engine.callFunctionPointer(scope, visitor!, [child], {});
              }

              target.visitChildren(visitorProxy);
            },
    'package:flutter/src/rendering/editable.dart@RenderEditable@getEndpointsForSelection':
        (m.Scope scope, RenderEditable target) =>
            target.getEndpointsForSelection,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getRectForComposingRange':
        (m.Scope scope, RenderEditable target) =>
            target.getRectForComposingRange,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getPositionForPoint':
        (m.Scope scope, RenderEditable target) => target.getPositionForPoint,
    'package:flutter/src/rendering/editable.dart@RenderEditable@getLocalRectForCaret':
        (m.Scope scope, RenderEditable target) => target.getLocalRectForCaret,
    'package:flutter/src/rendering/editable.dart@RenderEditable@computeMinIntrinsicWidth':
        (m.Scope scope, RenderEditable target) =>
            target.computeMinIntrinsicWidth,
    'package:flutter/src/rendering/editable.dart@RenderEditable@computeMaxIntrinsicWidth':
        (m.Scope scope, RenderEditable target) =>
            target.computeMaxIntrinsicWidth,
    'package:flutter/src/rendering/editable.dart@RenderEditable@computeMinIntrinsicHeight':
        (m.Scope scope, RenderEditable target) =>
            target.computeMinIntrinsicHeight,
    'package:flutter/src/rendering/editable.dart@RenderEditable@computeMaxIntrinsicHeight':
        (m.Scope scope, RenderEditable target) =>
            target.computeMaxIntrinsicHeight,
    'package:flutter/src/rendering/editable.dart@RenderEditable@computeDistanceToActualBaseline':
        (m.Scope scope, RenderEditable target) =>
            target.computeDistanceToActualBaseline,
    'package:flutter/src/rendering/editable.dart@RenderEditable@hitTestSelf':
        (m.Scope scope, RenderEditable target) => target.hitTestSelf,
    'package:flutter/src/rendering/editable.dart@RenderEditable@hitTestChildren':
        (m.Scope scope, RenderEditable target) => target.hitTestChildren,
    'package:flutter/src/rendering/editable.dart@RenderEditable@handleEvent':
        (m.Scope scope, RenderEditable target) => target.handleEvent,
    'package:flutter/src/rendering/editable.dart@RenderEditable@handleSecondaryTapDown':
        (m.Scope scope, RenderEditable target) => target.handleSecondaryTapDown,
    'package:flutter/src/rendering/editable.dart@RenderEditable@handleTapDown':
        (m.Scope scope, RenderEditable target) => target.handleTapDown,
    'package:flutter/src/rendering/editable.dart@RenderEditable@handleTap':
        (m.Scope scope, RenderEditable target) => target.handleTap,
    'package:flutter/src/rendering/editable.dart@RenderEditable@handleDoubleTap':
        (m.Scope scope, RenderEditable target) => target.handleDoubleTap,
    'package:flutter/src/rendering/editable.dart@RenderEditable@handleLongPress':
        (m.Scope scope, RenderEditable target) => target.handleLongPress,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectPosition':
        (m.Scope scope, RenderEditable target) => target.selectPosition,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectPositionAt':
        (m.Scope scope, RenderEditable target) => target.selectPositionAt,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectWord':
        (m.Scope scope, RenderEditable target) => target.selectWord,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectWordsInRange':
        (m.Scope scope, RenderEditable target) => target.selectWordsInRange,
    'package:flutter/src/rendering/editable.dart@RenderEditable@selectWordEdge':
        (m.Scope scope, RenderEditable target) => target.selectWordEdge,
    'package:flutter/src/rendering/editable.dart@RenderEditable@computeDryLayout':
        (m.Scope scope, RenderEditable target) => target.computeDryLayout,
    'package:flutter/src/rendering/editable.dart@RenderEditable@performLayout':
        (m.Scope scope, RenderEditable target) => target.performLayout,
    'package:flutter/src/rendering/editable.dart@RenderEditable@calculateBoundedFloatingCursorOffset':
        (m.Scope scope, RenderEditable target) =>
            target.calculateBoundedFloatingCursorOffset,
    'package:flutter/src/rendering/editable.dart@RenderEditable@setFloatingCursor':
        (m.Scope scope, RenderEditable target) => target.setFloatingCursor,
    'package:flutter/src/rendering/editable.dart@RenderEditable@startVerticalCaretMovement':
        (m.Scope scope, RenderEditable target) =>
            target.startVerticalCaretMovement,
    'package:flutter/src/rendering/editable.dart@RenderEditable@paint':
        (m.Scope scope, RenderEditable target) => target.paint,
    'package:flutter/src/rendering/editable.dart@RenderEditable@describeApproximatePaintClip':
        (m.Scope scope, RenderEditable target) =>
            target.describeApproximatePaintClip,
    'package:flutter/src/rendering/editable.dart@RenderEditable@debugFillProperties':
        (m.Scope scope, RenderEditable target) => target.debugFillProperties,
    'package:flutter/src/rendering/editable.dart@RenderEditable@debugDescribeChildren':
        (m.Scope scope, RenderEditable target) => target.debugDescribeChildren,
    'package:flutter/src/rendering/editable.dart@RenderEditablePainter@#as':
        (m.Scope scope, target) => () => target as RenderEditablePainter,
    'package:flutter/src/rendering/editable.dart@RenderEditablePainter@#is':
        (m.Scope scope, target) => () => target is RenderEditablePainter,
    'package:flutter/src/rendering/editable.dart@RenderEditablePainter@shouldRepaint':
        (m.Scope scope, RenderEditablePainter target) => target.shouldRepaint,
    'package:flutter/src/rendering/editable.dart@RenderEditablePainter@paint':
        (m.Scope scope, RenderEditablePainter target) => target.paint,
  };
}
