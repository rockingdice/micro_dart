import 'package:flutter/src/cupertino/text_selection_toolbar.dart';
import 'dart:collection';
import 'dart:ui';
import 'package:flutter/foundation.dart' show Brightness, clampDouble;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/text_selection_toolbar_button.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@#as':
        (m.Scope scope, target) =>
            () => target as CupertinoTextSelectionToolbar,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@#is':
        (m.Scope scope, target) =>
            () => target is CupertinoTextSelectionToolbar,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@anchorAbove':
        (m.Scope scope, CupertinoTextSelectionToolbar target) =>
            target.anchorAbove,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@anchorBelow':
        (m.Scope scope, CupertinoTextSelectionToolbar target) =>
            target.anchorBelow,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@children':
        (m.Scope scope, CupertinoTextSelectionToolbar target) =>
            target.children,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@toolbarBuilder':
        (m.Scope scope, CupertinoTextSelectionToolbar target) =>
            target.toolbarBuilder,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@kToolbarScreenPadding':
        (m.Scope scope) => CupertinoTextSelectionToolbar.kToolbarScreenPadding,
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@':
        (m.Scope scope) =>
            ({anchorAbove, anchorBelow, children, key, toolbarBuilder}) {
              if (toolbarBuilder == null) {
                return CupertinoTextSelectionToolbar(
                    anchorAbove: anchorAbove,
                    anchorBelow: anchorBelow,
                    children: children,
                    key: key);
              }
              Widget toolbarBuilderProxy(context, anchor, isAbove, child) {
                return engine.callFunctionPointer(scope, toolbarBuilder!,
                    [context, anchor, isAbove, child], {});
              }

              return CupertinoTextSelectionToolbar(
                  anchorAbove: anchorAbove,
                  anchorBelow: anchorBelow,
                  children: children,
                  key: key,
                  toolbarBuilder: toolbarBuilderProxy);
            },
    'package:flutter/src/cupertino/text_selection_toolbar.dart@CupertinoTextSelectionToolbar@build':
        (m.Scope scope, CupertinoTextSelectionToolbar target) => target.build,
  };
}
