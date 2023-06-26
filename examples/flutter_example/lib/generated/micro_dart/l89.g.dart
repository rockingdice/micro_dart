import 'package:flutter/src/material/elevation_overlay.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/elevation_overlay.dart@ElevationOverlay@#as': (m.Scope scope, target)=>()=>target as ElevationOverlay,
'package:flutter/src/material/elevation_overlay.dart@ElevationOverlay@#is': (m.Scope scope, target)=>()=>target is ElevationOverlay,
'package:flutter/src/material/elevation_overlay.dart@ElevationOverlay@applySurfaceTint': (m.Scope scope)=>ElevationOverlay.applySurfaceTint,
'package:flutter/src/material/elevation_overlay.dart@ElevationOverlay@applyOverlay': (m.Scope scope)=>ElevationOverlay.applyOverlay,
'package:flutter/src/material/elevation_overlay.dart@ElevationOverlay@overlayColor': (m.Scope scope)=>ElevationOverlay.overlayColor,
'package:flutter/src/material/elevation_overlay.dart@ElevationOverlay@colorWithOverlay': (m.Scope scope)=>ElevationOverlay.colorWithOverlay,

};
}