import 'dart:math';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'dart:math@@e': (m.Scope scope) => e,
    'dart:math@@ln10': (m.Scope scope) => ln10,
    'dart:math@@ln2': (m.Scope scope) => ln2,
    'dart:math@@log2e': (m.Scope scope) => log2e,
    'dart:math@@log10e': (m.Scope scope) => log10e,
    'dart:math@@pi': (m.Scope scope) => pi,
    'dart:math@@sqrt1_2': (m.Scope scope) => sqrt1_2,
    'dart:math@@sqrt2': (m.Scope scope) => sqrt2,
    'dart:math@@min': (m.Scope scope) => min,
    'dart:math@@max': (m.Scope scope) => max,
    'dart:math@@atan2': (m.Scope scope) => atan2,
    'dart:math@@pow': (m.Scope scope) => pow,
    'dart:math@@sin': (m.Scope scope) => sin,
    'dart:math@@cos': (m.Scope scope) => cos,
    'dart:math@@tan': (m.Scope scope) => tan,
    'dart:math@@acos': (m.Scope scope) => acos,
    'dart:math@@asin': (m.Scope scope) => asin,
    'dart:math@@atan': (m.Scope scope) => atan,
    'dart:math@@sqrt': (m.Scope scope) => sqrt,
    'dart:math@@exp': (m.Scope scope) => exp,
    'dart:math@@log': (m.Scope scope) => log,
    'dart:math@Point@#as': (m.Scope scope, target) => () => target as Point,
    'dart:math@Point@#is': (m.Scope scope, target) => () => target is Point,
    'dart:math@Point@x': (m.Scope scope, Point target) => target.x,
    'dart:math@Point@y': (m.Scope scope, Point target) => target.y,
    'dart:math@Point@hashCode': (m.Scope scope, Point target) =>
        target.hashCode,
    'dart:math@Point@magnitude': (m.Scope scope, Point target) =>
        target.magnitude,
    'dart:math@Point@': (m.Scope scope) => <T extends num>(x, y) {
          return Point<T>(x, y);
        },
    'dart:math@Point@toString': (m.Scope scope, Point target) =>
        target.toString,
    'dart:math@Point@==': (m.Scope scope, Point target) =>
        (other) => target == other,
    'dart:math@Point@+': (m.Scope scope, Point target) =>
        (other) => target + other,
    'dart:math@Point@-': (m.Scope scope, Point target) =>
        (other) => target - other,
    'dart:math@Point@*': (m.Scope scope, Point target) =>
        (other) => target * other,
    'dart:math@Point@distanceTo': (m.Scope scope, Point target) =>
        target.distanceTo,
    'dart:math@Point@squaredDistanceTo': (m.Scope scope, Point target) =>
        target.squaredDistanceTo,
    'dart:math@Random@#as': (m.Scope scope, target) => () => target as Random,
    'dart:math@Random@#is': (m.Scope scope, target) => () => target is Random,
    'dart:math@Random@': (m.Scope scope) => ([int? seed]) {
          if (seed == null) {
            return Random();
          }
          return Random(seed);
        },
    'dart:math@Random@secure': (m.Scope scope) => Random.secure,
    'dart:math@Random@nextInt': (m.Scope scope, Random target) =>
        target.nextInt,
    'dart:math@Random@nextDouble': (m.Scope scope, Random target) =>
        target.nextDouble,
    'dart:math@Random@nextBool': (m.Scope scope, Random target) =>
        target.nextBool,
    'dart:math@Rectangle@#as': (m.Scope scope, target) =>
        () => target as Rectangle,
    'dart:math@Rectangle@#is': (m.Scope scope, target) =>
        () => target is Rectangle,
    'dart:math@Rectangle@left': (m.Scope scope, Rectangle target) =>
        target.left,
    'dart:math@Rectangle@top': (m.Scope scope, Rectangle target) => target.top,
    'dart:math@Rectangle@width': (m.Scope scope, Rectangle target) =>
        target.width,
    'dart:math@Rectangle@height': (m.Scope scope, Rectangle target) =>
        target.height,
    'dart:math@Rectangle@': (m.Scope scope) =>
        <T extends num>(left, top, width, height) {
          return Rectangle<T>(left, top, width, height);
        },
    'dart:math@Rectangle@fromPoints': (m.Scope scope) => Rectangle.fromPoints,
    'dart:math@MutableRectangle@#as': (m.Scope scope, target) =>
        () => target as MutableRectangle,
    'dart:math@MutableRectangle@#is': (m.Scope scope, target) =>
        () => target is MutableRectangle,
    'dart:math@MutableRectangle@left':
        (m.Scope scope, MutableRectangle target) => target.left,
    'dart:math@MutableRectangle@left:set':
        (m.Scope scope, MutableRectangle target) =>
            (other) => target.left = other,
    'dart:math@MutableRectangle@top':
        (m.Scope scope, MutableRectangle target) => target.top,
    'dart:math@MutableRectangle@top:set':
        (m.Scope scope, MutableRectangle target) =>
            (other) => target.top = other,
    'dart:math@MutableRectangle@width':
        (m.Scope scope, MutableRectangle target) => target.width,
    'dart:math@MutableRectangle@width:set':
        (m.Scope scope, MutableRectangle target) =>
            (other) => target.width = other,
    'dart:math@MutableRectangle@height':
        (m.Scope scope, MutableRectangle target) => target.height,
    'dart:math@MutableRectangle@height:set':
        (m.Scope scope, MutableRectangle target) =>
            (other) => target.height = other,
    'dart:math@MutableRectangle@': (m.Scope scope) =>
        <T extends num>(left, top, width, height) {
          return MutableRectangle<T>(left, top, width, height);
        },
    'dart:math@MutableRectangle@fromPoints': (m.Scope scope) =>
        MutableRectangle.fromPoints,
  };
}
