import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@#as':
        (m.Scope scope, target) => () => target as PrimaryScrollController,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@#is':
        (m.Scope scope, target) => () => target is PrimaryScrollController,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@controller':
        (m.Scope scope, PrimaryScrollController target) => target.controller,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@scrollDirection':
        (m.Scope scope, PrimaryScrollController target) =>
            target.scrollDirection,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@automaticallyInheritForPlatforms':
        (m.Scope scope, PrimaryScrollController target) =>
            target.automaticallyInheritForPlatforms,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@':
        (m.Scope scope) => (
                {automaticallyInheritForPlatforms,
                child,
                controller,
                key,
                scrollDirection}) {
              return PrimaryScrollController(
                  automaticallyInheritForPlatforms:
                      automaticallyInheritForPlatforms ??
                          const <TargetPlatform>{
                            TargetPlatform.android,
                            TargetPlatform.iOS,
                            TargetPlatform.fuchsia,
                          },
                  child: child,
                  controller: controller,
                  key: key,
                  scrollDirection: scrollDirection ?? Axis.vertical);
            },
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@none':
        (m.Scope scope) => PrimaryScrollController.none,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@shouldInherit':
        (m.Scope scope) => PrimaryScrollController.shouldInherit,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@maybeOf':
        (m.Scope scope) => PrimaryScrollController.maybeOf,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@of':
        (m.Scope scope) => PrimaryScrollController.of,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@updateShouldNotify':
        (m.Scope scope, PrimaryScrollController target) =>
            target.updateShouldNotify,
    'package:flutter/src/widgets/primary_scroll_controller.dart@PrimaryScrollController@debugFillProperties':
        (m.Scope scope, PrimaryScrollController target) =>
            target.debugFillProperties,
  };
}
