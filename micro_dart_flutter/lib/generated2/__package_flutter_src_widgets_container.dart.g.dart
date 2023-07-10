import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/container.dart@DecoratedBox@#as':
        (m.Scope scope, target) => () => target as DecoratedBox,
    'package:flutter/src/widgets/container.dart@DecoratedBox@#is':
        (m.Scope scope, target) => () => target is DecoratedBox,
    'package:flutter/src/widgets/container.dart@DecoratedBox@decoration':
        (m.Scope scope, DecoratedBox target) => target.decoration,
    'package:flutter/src/widgets/container.dart@DecoratedBox@position':
        (m.Scope scope, DecoratedBox target) => target.position,
    'package:flutter/src/widgets/container.dart@DecoratedBox@':
        (m.Scope scope) => ({child, decoration, key, position}) {
              return DecoratedBox(
                  child: child,
                  decoration: decoration,
                  key: key,
                  position: position ?? DecorationPosition.background);
            },
    'package:flutter/src/widgets/container.dart@DecoratedBox@createRenderObject':
        (m.Scope scope, DecoratedBox target) => target.createRenderObject,
    'package:flutter/src/widgets/container.dart@DecoratedBox@updateRenderObject':
        (m.Scope scope, DecoratedBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/container.dart@DecoratedBox@debugFillProperties':
        (m.Scope scope, DecoratedBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/container.dart@Container@#as':
        (m.Scope scope, target) => () => target as Container,
    'package:flutter/src/widgets/container.dart@Container@#is':
        (m.Scope scope, target) => () => target is Container,
    'package:flutter/src/widgets/container.dart@Container@child':
        (m.Scope scope, Container target) => target.child,
    'package:flutter/src/widgets/container.dart@Container@alignment':
        (m.Scope scope, Container target) => target.alignment,
    'package:flutter/src/widgets/container.dart@Container@padding':
        (m.Scope scope, Container target) => target.padding,
    'package:flutter/src/widgets/container.dart@Container@color':
        (m.Scope scope, Container target) => target.color,
    'package:flutter/src/widgets/container.dart@Container@decoration':
        (m.Scope scope, Container target) => target.decoration,
    'package:flutter/src/widgets/container.dart@Container@foregroundDecoration':
        (m.Scope scope, Container target) => target.foregroundDecoration,
    'package:flutter/src/widgets/container.dart@Container@constraints':
        (m.Scope scope, Container target) => target.constraints,
    'package:flutter/src/widgets/container.dart@Container@margin':
        (m.Scope scope, Container target) => target.margin,
    'package:flutter/src/widgets/container.dart@Container@transform':
        (m.Scope scope, Container target) => target.transform,
    'package:flutter/src/widgets/container.dart@Container@transformAlignment':
        (m.Scope scope, Container target) => target.transformAlignment,
    'package:flutter/src/widgets/container.dart@Container@clipBehavior':
        (m.Scope scope, Container target) => target.clipBehavior,
    'package:flutter/src/widgets/container.dart@Container@': (m.Scope scope) =>
        (
            {alignment,
            child,
            clipBehavior,
            color,
            constraints,
            decoration,
            foregroundDecoration,
            height,
            key,
            margin,
            padding,
            transform,
            transformAlignment,
            width}) {
          return Container(
              alignment: alignment,
              child: child,
              clipBehavior: clipBehavior ?? Clip.none,
              color: color,
              constraints: constraints,
              decoration: decoration,
              foregroundDecoration: foregroundDecoration,
              height: height,
              key: key,
              margin: margin,
              padding: padding,
              transform: transform,
              transformAlignment: transformAlignment,
              width: width);
        },
    'package:flutter/src/widgets/container.dart@Container@build':
        (m.Scope scope, Container target) => target.build,
    'package:flutter/src/widgets/container.dart@Container@debugFillProperties':
        (m.Scope scope, Container target) => target.debugFillProperties,
  };
}
