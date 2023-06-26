import 'package:flutter/src/cupertino/activity_indicator.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@#as':
        (m.Scope scope, target) => () => target as CupertinoActivityIndicator,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@#is':
        (m.Scope scope, target) => () => target is CupertinoActivityIndicator,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@color':
        (m.Scope scope, CupertinoActivityIndicator target) => target.color,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@animating':
        (m.Scope scope, CupertinoActivityIndicator target) => target.animating,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@radius':
        (m.Scope scope, CupertinoActivityIndicator target) => target.radius,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@progress':
        (m.Scope scope, CupertinoActivityIndicator target) => target.progress,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@':
        (m.Scope scope) => ({animating, color, key, radius}) {
              return CupertinoActivityIndicator(
                  animating: animating ?? true,
                  color: color,
                  key: key,
                  radius: radius ?? 10.0);
            },
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@partiallyRevealed':
        (m.Scope scope) => CupertinoActivityIndicator.partiallyRevealed,
    'package:flutter/src/cupertino/activity_indicator.dart@CupertinoActivityIndicator@createState':
        (m.Scope scope, CupertinoActivityIndicator target) =>
            target.createState,
  };
}
