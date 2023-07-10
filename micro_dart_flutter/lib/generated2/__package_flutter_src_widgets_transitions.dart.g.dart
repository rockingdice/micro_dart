import 'package:flutter/src/widgets/transitions.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@#as':
        (m.Scope scope, target) => () => target as AnimatedWidget,
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@#is':
        (m.Scope scope, target) => () => target is AnimatedWidget,
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@listenable':
        (m.Scope scope, AnimatedWidget target) => target.listenable,
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@build':
        (m.Scope scope, AnimatedWidget target) => target.build,
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@createState':
        (m.Scope scope, AnimatedWidget target) => target.createState,
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@debugFillProperties':
        (m.Scope scope, AnimatedWidget target) => target.debugFillProperties,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@#as':
        (m.Scope scope, target) => () => target as SlideTransition,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@#is':
        (m.Scope scope, target) => () => target is SlideTransition,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@textDirection':
        (m.Scope scope, SlideTransition target) => target.textDirection,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@transformHitTests':
        (m.Scope scope, SlideTransition target) => target.transformHitTests,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@child':
        (m.Scope scope, SlideTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@position':
        (m.Scope scope, SlideTransition target) => target.position,
    'package:flutter/src/widgets/transitions.dart@SlideTransition@':
        (m.Scope scope) =>
            ({child, key, position, textDirection, transformHitTests}) {
              return SlideTransition(
                  child: child,
                  key: key,
                  position: position,
                  textDirection: textDirection,
                  transformHitTests: transformHitTests ?? true);
            },
    'package:flutter/src/widgets/transitions.dart@SlideTransition@build':
        (m.Scope scope, SlideTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@#as':
        (m.Scope scope, target) => () => target as ScaleTransition,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@#is':
        (m.Scope scope, target) => () => target is ScaleTransition,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@alignment':
        (m.Scope scope, ScaleTransition target) => target.alignment,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@filterQuality':
        (m.Scope scope, ScaleTransition target) => target.filterQuality,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@child':
        (m.Scope scope, ScaleTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@scale':
        (m.Scope scope, ScaleTransition target) => target.scale,
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@':
        (m.Scope scope) => ({alignment, child, filterQuality, key, scale}) {
              return ScaleTransition(
                  alignment: alignment ?? Alignment.center,
                  child: child,
                  filterQuality: filterQuality,
                  key: key,
                  scale: scale);
            },
    'package:flutter/src/widgets/transitions.dart@ScaleTransition@build':
        (m.Scope scope, ScaleTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@#as':
        (m.Scope scope, target) => () => target as RotationTransition,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@#is':
        (m.Scope scope, target) => () => target is RotationTransition,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@alignment':
        (m.Scope scope, RotationTransition target) => target.alignment,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@filterQuality':
        (m.Scope scope, RotationTransition target) => target.filterQuality,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@child':
        (m.Scope scope, RotationTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@turns':
        (m.Scope scope, RotationTransition target) => target.turns,
    'package:flutter/src/widgets/transitions.dart@RotationTransition@':
        (m.Scope scope) => ({alignment, child, filterQuality, key, turns}) {
              print("turns:${turns.runtimeType.toString()}");
              return RotationTransition(
                  alignment: alignment ?? Alignment.center,
                  child: child,
                  filterQuality: filterQuality,
                  key: key,
                  turns: turns);
            },
    'package:flutter/src/widgets/transitions.dart@RotationTransition@build':
        (m.Scope scope, RotationTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@#as':
        (m.Scope scope, target) => () => target as SizeTransition,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@#is':
        (m.Scope scope, target) => () => target is SizeTransition,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@axis':
        (m.Scope scope, SizeTransition target) => target.axis,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@axisAlignment':
        (m.Scope scope, SizeTransition target) => target.axisAlignment,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@child':
        (m.Scope scope, SizeTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@sizeFactor':
        (m.Scope scope, SizeTransition target) => target.sizeFactor,
    'package:flutter/src/widgets/transitions.dart@SizeTransition@':
        (m.Scope scope) => ({axis, axisAlignment, child, key, sizeFactor}) {
              return SizeTransition(
                  axis: axis ?? Axis.vertical,
                  axisAlignment: axisAlignment ?? 0.0,
                  child: child,
                  key: key,
                  sizeFactor: sizeFactor);
            },
    'package:flutter/src/widgets/transitions.dart@SizeTransition@build':
        (m.Scope scope, SizeTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@#as':
        (m.Scope scope, target) => () => target as FadeTransition,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@#is':
        (m.Scope scope, target) => () => target is FadeTransition,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@opacity':
        (m.Scope scope, FadeTransition target) => target.opacity,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@alwaysIncludeSemantics':
        (m.Scope scope, FadeTransition target) => target.alwaysIncludeSemantics,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@':
        (m.Scope scope) => ({alwaysIncludeSemantics, child, key, opacity}) {
              return FadeTransition(
                  alwaysIncludeSemantics: alwaysIncludeSemantics ?? false,
                  child: child,
                  key: key,
                  opacity: opacity);
            },
    'package:flutter/src/widgets/transitions.dart@FadeTransition@createRenderObject':
        (m.Scope scope, FadeTransition target) => target.createRenderObject,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@updateRenderObject':
        (m.Scope scope, FadeTransition target) => target.updateRenderObject,
    'package:flutter/src/widgets/transitions.dart@FadeTransition@debugFillProperties':
        (m.Scope scope, FadeTransition target) => target.debugFillProperties,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@#as':
        (m.Scope scope, target) => () => target as SliverFadeTransition,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@#is':
        (m.Scope scope, target) => () => target is SliverFadeTransition,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@opacity':
        (m.Scope scope, SliverFadeTransition target) => target.opacity,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@alwaysIncludeSemantics':
        (m.Scope scope, SliverFadeTransition target) =>
            target.alwaysIncludeSemantics,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@':
        (m.Scope scope) => ({alwaysIncludeSemantics, key, opacity, sliver}) {
              return SliverFadeTransition(
                  alwaysIncludeSemantics: alwaysIncludeSemantics ?? false,
                  key: key,
                  opacity: opacity,
                  sliver: sliver);
            },
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@createRenderObject':
        (m.Scope scope, SliverFadeTransition target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@updateRenderObject':
        (m.Scope scope, SliverFadeTransition target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/transitions.dart@SliverFadeTransition@debugFillProperties':
        (m.Scope scope, SliverFadeTransition target) =>
            target.debugFillProperties,
    'package:flutter/src/widgets/transitions.dart@RelativeRectTween@#as':
        (m.Scope scope, target) => () => target as RelativeRectTween,
    'package:flutter/src/widgets/transitions.dart@RelativeRectTween@#is':
        (m.Scope scope, target) => () => target is RelativeRectTween,
    'package:flutter/src/widgets/transitions.dart@RelativeRectTween@':
        (m.Scope scope) => ({begin, end}) {
              return RelativeRectTween(begin: begin, end: end);
            },
    'package:flutter/src/widgets/transitions.dart@RelativeRectTween@lerp':
        (m.Scope scope, RelativeRectTween target) => target.lerp,
    'package:flutter/src/widgets/transitions.dart@PositionedTransition@#as':
        (m.Scope scope, target) => () => target as PositionedTransition,
    'package:flutter/src/widgets/transitions.dart@PositionedTransition@#is':
        (m.Scope scope, target) => () => target is PositionedTransition,
    'package:flutter/src/widgets/transitions.dart@PositionedTransition@child':
        (m.Scope scope, PositionedTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@PositionedTransition@rect':
        (m.Scope scope, PositionedTransition target) => target.rect,
    'package:flutter/src/widgets/transitions.dart@PositionedTransition@':
        (m.Scope scope) => ({child, key, rect}) {
              return PositionedTransition(child: child, key: key, rect: rect);
            },
    'package:flutter/src/widgets/transitions.dart@PositionedTransition@build':
        (m.Scope scope, PositionedTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@#as':
        (m.Scope scope, target) => () => target as RelativePositionedTransition,
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@#is':
        (m.Scope scope, target) => () => target is RelativePositionedTransition,
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@size':
        (m.Scope scope, RelativePositionedTransition target) => target.size,
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@child':
        (m.Scope scope, RelativePositionedTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@rect':
        (m.Scope scope, RelativePositionedTransition target) => target.rect,
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@':
        (m.Scope scope) => ({child, key, rect, size}) {
              return RelativePositionedTransition(
                  child: child, key: key, rect: rect, size: size);
            },
    'package:flutter/src/widgets/transitions.dart@RelativePositionedTransition@build':
        (m.Scope scope, RelativePositionedTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@#as':
        (m.Scope scope, target) => () => target as DecoratedBoxTransition,
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@#is':
        (m.Scope scope, target) => () => target is DecoratedBoxTransition,
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@decoration':
        (m.Scope scope, DecoratedBoxTransition target) => target.decoration,
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@position':
        (m.Scope scope, DecoratedBoxTransition target) => target.position,
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@child':
        (m.Scope scope, DecoratedBoxTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@':
        (m.Scope scope) => ({child, decoration, key, position}) {
              return DecoratedBoxTransition(
                  child: child,
                  decoration: decoration,
                  key: key,
                  position: position ?? DecorationPosition.background);
            },
    'package:flutter/src/widgets/transitions.dart@DecoratedBoxTransition@build':
        (m.Scope scope, DecoratedBoxTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@#as':
        (m.Scope scope, target) => () => target as AlignTransition,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@#is':
        (m.Scope scope, target) => () => target is AlignTransition,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@widthFactor':
        (m.Scope scope, AlignTransition target) => target.widthFactor,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@heightFactor':
        (m.Scope scope, AlignTransition target) => target.heightFactor,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@child':
        (m.Scope scope, AlignTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@alignment':
        (m.Scope scope, AlignTransition target) => target.alignment,
    'package:flutter/src/widgets/transitions.dart@AlignTransition@':
        (m.Scope scope) =>
            ({alignment, child, heightFactor, key, widthFactor}) {
              return AlignTransition(
                  alignment: alignment,
                  child: child,
                  heightFactor: heightFactor,
                  key: key,
                  widthFactor: widthFactor);
            },
    'package:flutter/src/widgets/transitions.dart@AlignTransition@build':
        (m.Scope scope, AlignTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@#as':
        (m.Scope scope, target) => () => target as DefaultTextStyleTransition,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@#is':
        (m.Scope scope, target) => () => target is DefaultTextStyleTransition,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@textAlign':
        (m.Scope scope, DefaultTextStyleTransition target) => target.textAlign,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@softWrap':
        (m.Scope scope, DefaultTextStyleTransition target) => target.softWrap,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@overflow':
        (m.Scope scope, DefaultTextStyleTransition target) => target.overflow,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@maxLines':
        (m.Scope scope, DefaultTextStyleTransition target) => target.maxLines,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@child':
        (m.Scope scope, DefaultTextStyleTransition target) => target.child,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@style':
        (m.Scope scope, DefaultTextStyleTransition target) => target.style,
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@':
        (m.Scope scope) =>
            ({child, key, maxLines, overflow, softWrap, style, textAlign}) {
              return DefaultTextStyleTransition(
                  child: child,
                  key: key,
                  maxLines: maxLines,
                  overflow: overflow ?? TextOverflow.clip,
                  softWrap: softWrap ?? true,
                  style: style,
                  textAlign: textAlign);
            },
    'package:flutter/src/widgets/transitions.dart@DefaultTextStyleTransition@build':
        (m.Scope scope, DefaultTextStyleTransition target) => target.build,
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@#as':
        (m.Scope scope, target) => () => target as ListenableBuilder,
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@#is':
        (m.Scope scope, target) => () => target is ListenableBuilder,
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@builder':
        (m.Scope scope, ListenableBuilder target) => target.builder,
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@child':
        (m.Scope scope, ListenableBuilder target) => target.child,
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@listenable':
        (m.Scope scope, ListenableBuilder target) => target.listenable,
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@':
        (m.Scope scope) => ({builder, child, key, listenable}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              return ListenableBuilder(
                  builder: builderProxy,
                  child: child,
                  key: key,
                  listenable: listenable);
            },
    'package:flutter/src/widgets/transitions.dart@ListenableBuilder@build':
        (m.Scope scope, ListenableBuilder target) => target.build,
    'package:flutter/src/widgets/transitions.dart@AnimatedBuilder@#as':
        (m.Scope scope, target) => () => target as AnimatedBuilder,
    'package:flutter/src/widgets/transitions.dart@AnimatedBuilder@#is':
        (m.Scope scope, target) => () => target is AnimatedBuilder,
    'package:flutter/src/widgets/transitions.dart@AnimatedBuilder@animation':
        (m.Scope scope, AnimatedBuilder target) => target.animation,
    'package:flutter/src/widgets/transitions.dart@AnimatedBuilder@listenable':
        (m.Scope scope, AnimatedBuilder target) => target.listenable,
    'package:flutter/src/widgets/transitions.dart@AnimatedBuilder@builder':
        (m.Scope scope, AnimatedBuilder target) => target.builder,
    'package:flutter/src/widgets/transitions.dart@AnimatedBuilder@':
        (m.Scope scope) => ({animation, builder, child, key}) {
              Widget builderProxy(context, child) {
                return engine
                    .callFunctionPointer(scope, builder!, [context, child], {});
              }

              return AnimatedBuilder(
                  animation: animation,
                  builder: builderProxy,
                  child: child,
                  key: key);
            },
    'package:flutter/src/widgets/transitions.dart@AnimatedWidget@':
        (m.Scope scope) => ({key, listenable}) {
              return $AnimatedWidget(key: key, listenable: listenable);
            },
  };
}

class $AnimatedWidget extends AnimatedWidget with InstanceBridge {
  $AnimatedWidget({Key? key, required Listenable listenable})
      : super(key: key, listenable: listenable);
  @override
  final m.TypeRef bridgeType = const m.TypeRef(
      "package:flutter/src/widgets/transitions.dart", "AnimatedWidget", true);

  @override
  late Map<String, Function> superGetters = {};

  @override
  Widget build(BuildContext context) {
    return $child!.engine
        .callFunction(this, type.getNameKey("build"), [context], {}, null);
  }
}
