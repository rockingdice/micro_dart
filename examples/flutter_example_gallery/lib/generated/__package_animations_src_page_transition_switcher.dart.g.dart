import 'package:animations/src/page_transition_switcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@#as':
        (m.Scope scope, target) => () => target as PageTransitionSwitcher,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@#is':
        (m.Scope scope, target) => () => target is PageTransitionSwitcher,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@child':
        (m.Scope scope, PageTransitionSwitcher target) => target.child,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@duration':
        (m.Scope scope, PageTransitionSwitcher target) => target.duration,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@reverse':
        (m.Scope scope, PageTransitionSwitcher target) => target.reverse,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@transitionBuilder':
        (m.Scope scope, PageTransitionSwitcher target) =>
            target.transitionBuilder,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@layoutBuilder':
        (m.Scope scope, PageTransitionSwitcher target) => target.layoutBuilder,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@':
        (m.Scope scope) => (
                {child,
                duration,
                key,
                layoutBuilder,
                reverse,
                transitionBuilder}) {
              Widget layoutBuilderProxy(entries) {
                return engine
                    .callFunctionPointer(scope, layoutBuilder!, [entries], {});
              }

              Widget transitionBuilderProxy(
                  child, primaryAnimation, secondaryAnimation) {
                return engine.callFunctionPointer(scope, transitionBuilder!,
                    [child, primaryAnimation, secondaryAnimation], {});
              }

              return PageTransitionSwitcher(
                  child: child,
                  duration: duration ?? const Duration(milliseconds: 300),
                  key: key,
                  layoutBuilder: layoutBuilder == null
                      ? PageTransitionSwitcher.defaultLayoutBuilder
                      : layoutBuilderProxy,
                  reverse: reverse ?? false,
                  transitionBuilder: transitionBuilderProxy);
            },
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@defaultLayoutBuilder':
        (m.Scope scope) => PageTransitionSwitcher.defaultLayoutBuilder,
    'package:animations/src/page_transition_switcher.dart@PageTransitionSwitcher@createState':
        (m.Scope scope, PageTransitionSwitcher target) => target.createState,
  };
}
