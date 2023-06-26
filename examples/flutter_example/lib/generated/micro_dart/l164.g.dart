import 'package:flutter/src/material/selection_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/adaptive_text_selection_toolbar.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/desktop_text_selection.dart';
import 'package:flutter/src/material/magnifier.dart';
import 'package:flutter/src/material/text_selection.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/selection_area.dart@SelectionArea@#as':
        (m.Scope scope, target) => () => target as SelectionArea,
    'package:flutter/src/material/selection_area.dart@SelectionArea@#is':
        (m.Scope scope, target) => () => target is SelectionArea,
    'package:flutter/src/material/selection_area.dart@SelectionArea@magnifierConfiguration':
        (m.Scope scope, SelectionArea target) => target.magnifierConfiguration,
    'package:flutter/src/material/selection_area.dart@SelectionArea@focusNode':
        (m.Scope scope, SelectionArea target) => target.focusNode,
    'package:flutter/src/material/selection_area.dart@SelectionArea@selectionControls':
        (m.Scope scope, SelectionArea target) => target.selectionControls,
    'package:flutter/src/material/selection_area.dart@SelectionArea@contextMenuBuilder':
        (m.Scope scope, SelectionArea target) => target.contextMenuBuilder,
    'package:flutter/src/material/selection_area.dart@SelectionArea@onSelectionChanged':
        (m.Scope scope, SelectionArea target) => target.onSelectionChanged,
    'package:flutter/src/material/selection_area.dart@SelectionArea@child':
        (m.Scope scope, SelectionArea target) => target.child,
    'package:flutter/src/material/selection_area.dart@SelectionArea@':
        (m.Scope scope) => (
                {child,
                contextMenuBuilder,
                focusNode,
                key,
                magnifierConfiguration,
                onSelectionChanged,
                selectionControls}) {
              Widget contextMenuBuilderProxy(context, selectableRegionState) {
                return engine.callFunctionPointer(scope, contextMenuBuilder!,
                    [context, selectableRegionState], {});
              }

              void onSelectionChangedProxy(value) {
                engine.callFunctionPointer(
                    scope, onSelectionChanged!, [value], {});
              }

              return SelectionArea(
                  child: child,
                  contextMenuBuilder: contextMenuBuilder == null
                      ? (BuildContext context,
                          SelectableRegionState selectableRegionState) {
                          return AdaptiveTextSelectionToolbar.selectableRegion(
                            selectableRegionState: selectableRegionState,
                          );
                        }
                      : contextMenuBuilderProxy,
                  focusNode: focusNode,
                  key: key,
                  magnifierConfiguration: magnifierConfiguration,
                  onSelectionChanged: onSelectionChanged == null
                      ? null
                      : onSelectionChangedProxy,
                  selectionControls: selectionControls);
            },
    'package:flutter/src/material/selection_area.dart@SelectionArea@createState':
        (m.Scope scope, SelectionArea target) => target.createState,
  };
}
