import 'package:flutter/src/widgets/animated_cross_fade.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/animated_size.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@#as':
        (m.Scope scope, target) => () => target as AnimatedCrossFade,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@#is':
        (m.Scope scope, target) => () => target is AnimatedCrossFade,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@firstChild':
        (m.Scope scope, AnimatedCrossFade target) => target.firstChild,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@secondChild':
        (m.Scope scope, AnimatedCrossFade target) => target.secondChild,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@crossFadeState':
        (m.Scope scope, AnimatedCrossFade target) => target.crossFadeState,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@duration':
        (m.Scope scope, AnimatedCrossFade target) => target.duration,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@reverseDuration':
        (m.Scope scope, AnimatedCrossFade target) => target.reverseDuration,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@firstCurve':
        (m.Scope scope, AnimatedCrossFade target) => target.firstCurve,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@secondCurve':
        (m.Scope scope, AnimatedCrossFade target) => target.secondCurve,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@sizeCurve':
        (m.Scope scope, AnimatedCrossFade target) => target.sizeCurve,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@alignment':
        (m.Scope scope, AnimatedCrossFade target) => target.alignment,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@layoutBuilder':
        (m.Scope scope, AnimatedCrossFade target) => target.layoutBuilder,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@excludeBottomFocus':
        (m.Scope scope, AnimatedCrossFade target) => target.excludeBottomFocus,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@':
        (m.Scope scope) => (
                {alignment,
                crossFadeState,
                duration,
                excludeBottomFocus,
                firstChild,
                firstCurve,
                key,
                layoutBuilder,
                reverseDuration,
                secondChild,
                secondCurve,
                sizeCurve}) {
              Widget layoutBuilderProxy(
                  topChild, topChildKey, bottomChild, bottomChildKey) {
                return engine.callFunctionPointer(scope, layoutBuilder!,
                    [topChild, topChildKey, bottomChild, bottomChildKey], {});
              }

              return AnimatedCrossFade(
                  alignment: alignment ?? Alignment.topCenter,
                  crossFadeState: crossFadeState,
                  duration: duration,
                  excludeBottomFocus: excludeBottomFocus ?? true,
                  firstChild: firstChild,
                  firstCurve: firstCurve ?? Curves.linear,
                  key: key,
                  layoutBuilder: layoutBuilder == null
                      ? AnimatedCrossFade.defaultLayoutBuilder
                      : layoutBuilderProxy,
                  reverseDuration: reverseDuration,
                  secondChild: secondChild,
                  secondCurve: secondCurve ?? Curves.linear,
                  sizeCurve: sizeCurve ?? Curves.linear);
            },
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@defaultLayoutBuilder':
        (m.Scope scope) => AnimatedCrossFade.defaultLayoutBuilder,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@createState':
        (m.Scope scope, AnimatedCrossFade target) => target.createState,
    'package:flutter/src/widgets/animated_cross_fade.dart@AnimatedCrossFade@debugFillProperties':
        (m.Scope scope, AnimatedCrossFade target) => target.debugFillProperties,
  };
}
