import 'package:flutter/src/material/text_selection_toolbar.dart';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show listEquals;
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@#as':
        (m.Scope scope, target) => () => target as TextSelectionToolbar,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@#is':
        (m.Scope scope, target) => () => target is TextSelectionToolbar,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@anchorAbove':
        (m.Scope scope, TextSelectionToolbar target) => target.anchorAbove,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@anchorBelow':
        (m.Scope scope, TextSelectionToolbar target) => target.anchorBelow,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@children':
        (m.Scope scope, TextSelectionToolbar target) => target.children,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@toolbarBuilder':
        (m.Scope scope, TextSelectionToolbar target) => target.toolbarBuilder,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@kHandleSize':
        (m.Scope scope) => TextSelectionToolbar.kHandleSize,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@kToolbarContentDistanceBelow':
        (m.Scope scope) => TextSelectionToolbar.kToolbarContentDistanceBelow,
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@':
        (m.Scope scope) =>
            ({anchorAbove, anchorBelow, children, key, toolbarBuilder}) {
              Widget toolbarBuilderProxy(context, child) {
                return engine.callFunctionPointer(
                    scope, toolbarBuilder!, [context, child], {});
              }

              return TextSelectionToolbar(
                  anchorAbove: anchorAbove,
                  anchorBelow: anchorBelow,
                  children: children,
                  key: key,
                  toolbarBuilder: toolbarBuilder == null
                      ? (BuildContext context, Widget child) {
                          return Material(
                            // This value was eyeballed to match the native text selection menu on
                            // a Pixel 2 running Android 10.
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7.0)),
                            clipBehavior: Clip.antiAlias,
                            elevation: 1.0,
                            type: MaterialType.card,
                            child: child,
                          );
                        }
                      : toolbarBuilderProxy);
            },
    'package:flutter/src/material/text_selection_toolbar.dart@TextSelectionToolbar@build':
        (m.Scope scope, TextSelectionToolbar target) => target.build,
  };
}
