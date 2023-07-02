import 'package:flutter/src/material/colors.dart';
import 'package:flutter/painting.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/colors.dart@MaterialColor@#as':
        (m.Scope scope, target) => () => target as MaterialColor,
    'package:flutter/src/material/colors.dart@MaterialColor@#is':
        (m.Scope scope, target) => () => target is MaterialColor,
    'package:flutter/src/material/colors.dart@MaterialColor@shade50':
        (m.Scope scope, MaterialColor target) => target.shade50,
    'package:flutter/src/material/colors.dart@MaterialColor@shade100':
        (m.Scope scope, MaterialColor target) => target.shade100,
    'package:flutter/src/material/colors.dart@MaterialColor@shade200':
        (m.Scope scope, MaterialColor target) => target.shade200,
    'package:flutter/src/material/colors.dart@MaterialColor@shade300':
        (m.Scope scope, MaterialColor target) => target.shade300,
    'package:flutter/src/material/colors.dart@MaterialColor@shade400':
        (m.Scope scope, MaterialColor target) => target.shade400,
    'package:flutter/src/material/colors.dart@MaterialColor@shade500':
        (m.Scope scope, MaterialColor target) => target.shade500,
    'package:flutter/src/material/colors.dart@MaterialColor@shade600':
        (m.Scope scope, MaterialColor target) => target.shade600,
    'package:flutter/src/material/colors.dart@MaterialColor@shade700':
        (m.Scope scope, MaterialColor target) => target.shade700,
    'package:flutter/src/material/colors.dart@MaterialColor@shade800':
        (m.Scope scope, MaterialColor target) => target.shade800,
    'package:flutter/src/material/colors.dart@MaterialColor@shade900':
        (m.Scope scope, MaterialColor target) => target.shade900,
    'package:flutter/src/material/colors.dart@MaterialColor@':
        (m.Scope scope) => (primary, swatch) {
              return MaterialColor(primary, swatch);
            },
    'package:flutter/src/material/colors.dart@MaterialAccentColor@#as':
        (m.Scope scope, target) => () => target as MaterialAccentColor,
    'package:flutter/src/material/colors.dart@MaterialAccentColor@#is':
        (m.Scope scope, target) => () => target is MaterialAccentColor,
    'package:flutter/src/material/colors.dart@MaterialAccentColor@shade100':
        (m.Scope scope, MaterialAccentColor target) => target.shade100,
    'package:flutter/src/material/colors.dart@MaterialAccentColor@shade200':
        (m.Scope scope, MaterialAccentColor target) => target.shade200,
    'package:flutter/src/material/colors.dart@MaterialAccentColor@shade400':
        (m.Scope scope, MaterialAccentColor target) => target.shade400,
    'package:flutter/src/material/colors.dart@MaterialAccentColor@shade700':
        (m.Scope scope, MaterialAccentColor target) => target.shade700,
    'package:flutter/src/material/colors.dart@MaterialAccentColor@':
        (m.Scope scope) => (primary, swatch) {
              return MaterialAccentColor(primary, swatch);
            },
    'package:flutter/src/material/colors.dart@Colors@#as':
        (m.Scope scope, target) => () => target as Colors,
    'package:flutter/src/material/colors.dart@Colors@#is':
        (m.Scope scope, target) => () => target is Colors,
    'package:flutter/src/material/colors.dart@Colors@transparent':
        (m.Scope scope) => Colors.transparent,
    'package:flutter/src/material/colors.dart@Colors@black': (m.Scope scope) =>
        Colors.black,
    'package:flutter/src/material/colors.dart@Colors@black87':
        (m.Scope scope) => Colors.black87,
    'package:flutter/src/material/colors.dart@Colors@black54':
        (m.Scope scope) => Colors.black54,
    'package:flutter/src/material/colors.dart@Colors@black45':
        (m.Scope scope) => Colors.black45,
    'package:flutter/src/material/colors.dart@Colors@black38':
        (m.Scope scope) => Colors.black38,
    'package:flutter/src/material/colors.dart@Colors@black26':
        (m.Scope scope) => Colors.black26,
    'package:flutter/src/material/colors.dart@Colors@black12':
        (m.Scope scope) => Colors.black12,
    'package:flutter/src/material/colors.dart@Colors@white': (m.Scope scope) =>
        Colors.white,
    'package:flutter/src/material/colors.dart@Colors@white70':
        (m.Scope scope) => Colors.white70,
    'package:flutter/src/material/colors.dart@Colors@white60':
        (m.Scope scope) => Colors.white60,
    'package:flutter/src/material/colors.dart@Colors@white54':
        (m.Scope scope) => Colors.white54,
    'package:flutter/src/material/colors.dart@Colors@white38':
        (m.Scope scope) => Colors.white38,
    'package:flutter/src/material/colors.dart@Colors@white30':
        (m.Scope scope) => Colors.white30,
    'package:flutter/src/material/colors.dart@Colors@white24':
        (m.Scope scope) => Colors.white24,
    'package:flutter/src/material/colors.dart@Colors@white12':
        (m.Scope scope) => Colors.white12,
    'package:flutter/src/material/colors.dart@Colors@white10':
        (m.Scope scope) => Colors.white10,
    'package:flutter/src/material/colors.dart@Colors@red': (m.Scope scope) =>
        Colors.red,
    'package:flutter/src/material/colors.dart@Colors@redAccent':
        (m.Scope scope) => Colors.redAccent,
    'package:flutter/src/material/colors.dart@Colors@pink': (m.Scope scope) =>
        Colors.pink,
    'package:flutter/src/material/colors.dart@Colors@pinkAccent':
        (m.Scope scope) => Colors.pinkAccent,
    'package:flutter/src/material/colors.dart@Colors@purple': (m.Scope scope) =>
        Colors.purple,
    'package:flutter/src/material/colors.dart@Colors@purpleAccent':
        (m.Scope scope) => Colors.purpleAccent,
    'package:flutter/src/material/colors.dart@Colors@deepPurple':
        (m.Scope scope) => Colors.deepPurple,
    'package:flutter/src/material/colors.dart@Colors@deepPurpleAccent':
        (m.Scope scope) => Colors.deepPurpleAccent,
    'package:flutter/src/material/colors.dart@Colors@indigo': (m.Scope scope) =>
        Colors.indigo,
    'package:flutter/src/material/colors.dart@Colors@indigoAccent':
        (m.Scope scope) => Colors.indigoAccent,
    'package:flutter/src/material/colors.dart@Colors@blue': (m.Scope scope) =>
        Colors.blue,
    'package:flutter/src/material/colors.dart@Colors@blueAccent':
        (m.Scope scope) => Colors.blueAccent,
    'package:flutter/src/material/colors.dart@Colors@lightBlue':
        (m.Scope scope) => Colors.lightBlue,
    'package:flutter/src/material/colors.dart@Colors@lightBlueAccent':
        (m.Scope scope) => Colors.lightBlueAccent,
    'package:flutter/src/material/colors.dart@Colors@cyan': (m.Scope scope) =>
        Colors.cyan,
    'package:flutter/src/material/colors.dart@Colors@cyanAccent':
        (m.Scope scope) => Colors.cyanAccent,
    'package:flutter/src/material/colors.dart@Colors@teal': (m.Scope scope) =>
        Colors.teal,
    'package:flutter/src/material/colors.dart@Colors@tealAccent':
        (m.Scope scope) => Colors.tealAccent,
    'package:flutter/src/material/colors.dart@Colors@green': (m.Scope scope) =>
        Colors.green,
    'package:flutter/src/material/colors.dart@Colors@greenAccent':
        (m.Scope scope) => Colors.greenAccent,
    'package:flutter/src/material/colors.dart@Colors@lightGreen':
        (m.Scope scope) => Colors.lightGreen,
    'package:flutter/src/material/colors.dart@Colors@lightGreenAccent':
        (m.Scope scope) => Colors.lightGreenAccent,
    'package:flutter/src/material/colors.dart@Colors@lime': (m.Scope scope) =>
        Colors.lime,
    'package:flutter/src/material/colors.dart@Colors@limeAccent':
        (m.Scope scope) => Colors.limeAccent,
    'package:flutter/src/material/colors.dart@Colors@yellow': (m.Scope scope) =>
        Colors.yellow,
    'package:flutter/src/material/colors.dart@Colors@yellowAccent':
        (m.Scope scope) => Colors.yellowAccent,
    'package:flutter/src/material/colors.dart@Colors@amber': (m.Scope scope) =>
        Colors.amber,
    'package:flutter/src/material/colors.dart@Colors@amberAccent':
        (m.Scope scope) => Colors.amberAccent,
    'package:flutter/src/material/colors.dart@Colors@orange': (m.Scope scope) =>
        Colors.orange,
    'package:flutter/src/material/colors.dart@Colors@orangeAccent':
        (m.Scope scope) => Colors.orangeAccent,
    'package:flutter/src/material/colors.dart@Colors@deepOrange':
        (m.Scope scope) => Colors.deepOrange,
    'package:flutter/src/material/colors.dart@Colors@deepOrangeAccent':
        (m.Scope scope) => Colors.deepOrangeAccent,
    'package:flutter/src/material/colors.dart@Colors@brown': (m.Scope scope) =>
        Colors.brown,
    'package:flutter/src/material/colors.dart@Colors@grey': (m.Scope scope) =>
        Colors.grey,
    'package:flutter/src/material/colors.dart@Colors@blueGrey':
        (m.Scope scope) => Colors.blueGrey,
    'package:flutter/src/material/colors.dart@Colors@primaries':
        (m.Scope scope) => Colors.primaries,
    'package:flutter/src/material/colors.dart@Colors@accents':
        (m.Scope scope) => Colors.accents,
  };
}
