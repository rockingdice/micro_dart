import 'package:flutter/src/painting/box_fit.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/painting/box_fit.dart@FittedSizes@#as':
        (m.Scope scope, target) => () => target as FittedSizes,
    'package:flutter/src/painting/box_fit.dart@FittedSizes@#is':
        (m.Scope scope, target) => () => target is FittedSizes,
    'package:flutter/src/painting/box_fit.dart@FittedSizes@source':
        (m.Scope scope, FittedSizes target) => target.source,
    'package:flutter/src/painting/box_fit.dart@FittedSizes@destination':
        (m.Scope scope, FittedSizes target) => target.destination,
    'package:flutter/src/painting/box_fit.dart@FittedSizes@': (m.Scope scope) =>
        (source, destination) {
          return FittedSizes(source, destination);
        },
    'package:flutter/src/painting/box_fit.dart@@applyBoxFit': (m.Scope scope) =>
        applyBoxFit,
    'package:flutter/src/painting/box_fit.dart@BoxFit@cover': (m.Scope scope) =>
        BoxFit.cover,
    'package:flutter/src/painting/box_fit.dart@BoxFit@values':
        (m.Scope scope) => BoxFit.values,
    'package:flutter/src/painting/box_fit.dart@BoxFit@contain':
        (m.Scope scope) => BoxFit.contain,
    'package:flutter/src/painting/box_fit.dart@BoxFit@fill': (m.Scope scope) =>
        BoxFit.fill,
    'package:flutter/src/painting/box_fit.dart@BoxFit@fitHeight':
        (m.Scope scope) => BoxFit.fitHeight,
    'package:flutter/src/painting/box_fit.dart@BoxFit@fitWidth':
        (m.Scope scope) => BoxFit.fitWidth,
    'package:flutter/src/painting/box_fit.dart@BoxFit@none': (m.Scope scope) =>
        BoxFit.none,
    'package:flutter/src/painting/box_fit.dart@BoxFit@scaleDown':
        (m.Scope scope) => BoxFit.scaleDown,
  };
}
