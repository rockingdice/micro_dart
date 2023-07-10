import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'dart:math';

Map<String, Function> getLibrary(m.MicroDartEngine engine) => {};

class $Rectangle<T extends num> extends m.InstanceBridge<Rectangle<T>>
    implements Rectangle<T> {
  @override
  final Rectangle<T> target;
  @override
  final m.TypeRef bridgeType = const m.TypeRef(
    'dart:math',
    'Rectangle',
    true,
  );

  $Rectangle(
    T left,
    T top,
    T width,
    T height,
  ) : target = Rectangle<T>(left, top, width, height);

  factory $Rectangle.fromPoints(Point<T> a, Point<T> b) {
    T left = min(a.x, b.x);
    T width = (max(a.x, b.x) - left) as T;
    T top = min(a.y, b.y);
    T height = (max(a.y, b.y) - top) as T;
    return $Rectangle(left, top, width, height);
  }

  @override
  final Map<String, Function> superGetters = {};

  @override
  T get bottom => target.bottom;

  @override
  Point<T> get bottomLeft => target.bottomLeft;

  @override
  Point<T> get bottomRight => target.bottomRight;

  @override
  T get height => target.height;

  @override
  T get left => target.left;

  @override
  T get right => target.right;

  @override
  T get top => target.top;

  @override
  Point<T> get topLeft => target.topLeft;

  @override
  Point<T> get topRight => target.topRight;

  @override
  T get width => target.width;

  @override
  Rectangle<T> boundingBox(Rectangle<T> other) {
    return target.boundingBox(other);
  }

  @override
  bool containsPoint(Point<num> another) {
    return target.containsPoint(another);
  }

  @override
  bool containsRectangle(Rectangle<num> another) {
    return target.containsRectangle(another);
  }

  @override
  Rectangle<T>? intersection(Rectangle<T> other) {
    return target.intersection(other);
  }

  @override
  bool intersects(Rectangle<num> other) {
    return target.intersects(other);
  }
}

class $MutableRectangle<T extends num> extends MutableRectangle<T>
    with m.InstanceBridge {
  $MutableRectangle(
    T left,
    T top,
    T width,
    T height,
  ) : super(
          left,
          top,
          width,
          height,
        );

  @override
  final m.TypeRef bridgeType = const m.TypeRef(
    'dart:math',
    'MutableRectangle',
    true,
  );

  @override
  final Map<String, Function> superGetters = {};
}
