import 'package:flutter/src/cupertino/nav_bar.dart';
import 'dart:math';
import 'dart:ui' show ImageFilter;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/constants.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/page_scaffold.dart';
import 'package:flutter/src/cupertino/route.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@#as':
        (m.Scope scope, target) => () => target as CupertinoNavigationBar,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@#is':
        (m.Scope scope, target) => () => target is CupertinoNavigationBar,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@leading':
        (m.Scope scope, CupertinoNavigationBar target) => target.leading,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@automaticallyImplyLeading':
        (m.Scope scope, CupertinoNavigationBar target) =>
            target.automaticallyImplyLeading,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@automaticallyImplyMiddle':
        (m.Scope scope, CupertinoNavigationBar target) =>
            target.automaticallyImplyMiddle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@previousPageTitle':
        (m.Scope scope, CupertinoNavigationBar target) =>
            target.previousPageTitle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@middle':
        (m.Scope scope, CupertinoNavigationBar target) => target.middle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@trailing':
        (m.Scope scope, CupertinoNavigationBar target) => target.trailing,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@backgroundColor':
        (m.Scope scope, CupertinoNavigationBar target) =>
            target.backgroundColor,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@brightness':
        (m.Scope scope, CupertinoNavigationBar target) => target.brightness,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@padding':
        (m.Scope scope, CupertinoNavigationBar target) => target.padding,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@border':
        (m.Scope scope, CupertinoNavigationBar target) => target.border,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@transitionBetweenRoutes':
        (m.Scope scope, CupertinoNavigationBar target) =>
            target.transitionBetweenRoutes,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@heroTag':
        (m.Scope scope, CupertinoNavigationBar target) => target.heroTag,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@preferredSize':
        (m.Scope scope, CupertinoNavigationBar target) => target.preferredSize,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@':
        (m.Scope scope) => (
                {automaticallyImplyLeading,
                automaticallyImplyMiddle,
                backgroundColor,
                border,
                brightness,
                heroTag,
                key,
                leading,
                middle,
                padding,
                previousPageTitle,
                trailing,
                transitionBetweenRoutes}) {
              return CupertinoNavigationBar(
                  automaticallyImplyLeading: automaticallyImplyLeading ?? true,
                  automaticallyImplyMiddle: automaticallyImplyMiddle ?? true,
                  backgroundColor: backgroundColor,
                  border: border ??
                      Border(
                        bottom: BorderSide(
                          color: Color(0x4D000000),
                          width: 0.0, // 0.0 means one physical pixel
                        ),
                      ),
                  brightness: brightness,
                  //heroTag: heroTag ?? _defaultHeroTag,
                  key: key,
                  leading: leading,
                  middle: middle,
                  padding: padding,
                  previousPageTitle: previousPageTitle,
                  trailing: trailing,
                  transitionBetweenRoutes: transitionBetweenRoutes ?? true);
            },
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@shouldFullyObstruct':
        (m.Scope scope, CupertinoNavigationBar target) =>
            target.shouldFullyObstruct,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBar@createState':
        (m.Scope scope, CupertinoNavigationBar target) => target.createState,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@#as':
        (m.Scope scope, target) => () => target as CupertinoSliverNavigationBar,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@#is':
        (m.Scope scope, target) => () => target is CupertinoSliverNavigationBar,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@largeTitle':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.largeTitle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@leading':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.leading,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@automaticallyImplyLeading':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.automaticallyImplyLeading,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@automaticallyImplyTitle':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.automaticallyImplyTitle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@alwaysShowMiddle':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.alwaysShowMiddle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@previousPageTitle':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.previousPageTitle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@middle':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.middle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@trailing':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.trailing,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@backgroundColor':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.backgroundColor,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@brightness':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.brightness,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@padding':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.padding,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@border':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.border,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@transitionBetweenRoutes':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.transitionBetweenRoutes,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@heroTag':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.heroTag,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@stretch':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.stretch,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@opaque':
        (m.Scope scope, CupertinoSliverNavigationBar target) => target.opaque,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@':
        (m.Scope scope) => (
                {alwaysShowMiddle,
                automaticallyImplyLeading,
                automaticallyImplyTitle,
                backgroundColor,
                border,
                brightness,
                heroTag,
                key,
                largeTitle,
                leading,
                middle,
                padding,
                previousPageTitle,
                stretch,
                trailing,
                transitionBetweenRoutes}) {
              return CupertinoSliverNavigationBar(
                  alwaysShowMiddle: alwaysShowMiddle ?? true,
                  automaticallyImplyLeading: automaticallyImplyLeading ?? true,
                  automaticallyImplyTitle: automaticallyImplyTitle ?? true,
                  backgroundColor: backgroundColor,
                  border: border ??
                      Border(
                        bottom: BorderSide(
                          color: Color(0x4D000000),
                          width: 0.0, // 0.0 means one physical pixel
                        ),
                      ),
                  brightness: brightness,
                  //heroTag: heroTag ?? _defaultHeroTag,
                  key: key,
                  largeTitle: largeTitle,
                  leading: leading,
                  middle: middle,
                  padding: padding,
                  previousPageTitle: previousPageTitle,
                  stretch: stretch ?? false,
                  trailing: trailing,
                  transitionBetweenRoutes: transitionBetweenRoutes ?? true);
            },
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoSliverNavigationBar@createState':
        (m.Scope scope, CupertinoSliverNavigationBar target) =>
            target.createState,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@#as':
        (m.Scope scope, target) =>
            () => target as CupertinoNavigationBarBackButton,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@#is':
        (m.Scope scope, target) =>
            () => target is CupertinoNavigationBarBackButton,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@color':
        (m.Scope scope, CupertinoNavigationBarBackButton target) =>
            target.color,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@previousPageTitle':
        (m.Scope scope, CupertinoNavigationBarBackButton target) =>
            target.previousPageTitle,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@onPressed':
        (m.Scope scope, CupertinoNavigationBarBackButton target) =>
            target.onPressed,
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@':
        (m.Scope scope) => ({color, key, onPressed, previousPageTitle}) {
              void onPressedProxy() {
                engine.callFunctionPointer(scope, onPressed!, [], {});
              }

              return CupertinoNavigationBarBackButton(
                  color: color,
                  key: key,
                  onPressed: onPressed == null ? null : onPressedProxy,
                  previousPageTitle: previousPageTitle);
            },
    'package:flutter/src/cupertino/nav_bar.dart@CupertinoNavigationBarBackButton@build':
        (m.Scope scope, CupertinoNavigationBarBackButton target) =>
            target.build,
  };
}
