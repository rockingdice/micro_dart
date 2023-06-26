import 'package:flutter/src/material/color_scheme.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/color_scheme.dart@ColorScheme@#as': (m.Scope scope, target)=>()=>target as ColorScheme,
'package:flutter/src/material/color_scheme.dart@ColorScheme@#is': (m.Scope scope, target)=>()=>target is ColorScheme,
'package:flutter/src/material/color_scheme.dart@ColorScheme@brightness': (m.Scope scope, ColorScheme target)=>target.brightness,
'package:flutter/src/material/color_scheme.dart@ColorScheme@primary': (m.Scope scope, ColorScheme target)=>target.primary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onPrimary': (m.Scope scope, ColorScheme target)=>target.onPrimary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@secondary': (m.Scope scope, ColorScheme target)=>target.secondary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onSecondary': (m.Scope scope, ColorScheme target)=>target.onSecondary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@error': (m.Scope scope, ColorScheme target)=>target.error,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onError': (m.Scope scope, ColorScheme target)=>target.onError,
'package:flutter/src/material/color_scheme.dart@ColorScheme@background': (m.Scope scope, ColorScheme target)=>target.background,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onBackground': (m.Scope scope, ColorScheme target)=>target.onBackground,
'package:flutter/src/material/color_scheme.dart@ColorScheme@surface': (m.Scope scope, ColorScheme target)=>target.surface,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onSurface': (m.Scope scope, ColorScheme target)=>target.onSurface,
'package:flutter/src/material/color_scheme.dart@ColorScheme@primaryContainer': (m.Scope scope, ColorScheme target)=>target.primaryContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onPrimaryContainer': (m.Scope scope, ColorScheme target)=>target.onPrimaryContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@secondaryContainer': (m.Scope scope, ColorScheme target)=>target.secondaryContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onSecondaryContainer': (m.Scope scope, ColorScheme target)=>target.onSecondaryContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@tertiary': (m.Scope scope, ColorScheme target)=>target.tertiary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onTertiary': (m.Scope scope, ColorScheme target)=>target.onTertiary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@tertiaryContainer': (m.Scope scope, ColorScheme target)=>target.tertiaryContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onTertiaryContainer': (m.Scope scope, ColorScheme target)=>target.onTertiaryContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@errorContainer': (m.Scope scope, ColorScheme target)=>target.errorContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onErrorContainer': (m.Scope scope, ColorScheme target)=>target.onErrorContainer,
'package:flutter/src/material/color_scheme.dart@ColorScheme@surfaceVariant': (m.Scope scope, ColorScheme target)=>target.surfaceVariant,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onSurfaceVariant': (m.Scope scope, ColorScheme target)=>target.onSurfaceVariant,
'package:flutter/src/material/color_scheme.dart@ColorScheme@outline': (m.Scope scope, ColorScheme target)=>target.outline,
'package:flutter/src/material/color_scheme.dart@ColorScheme@outlineVariant': (m.Scope scope, ColorScheme target)=>target.outlineVariant,
'package:flutter/src/material/color_scheme.dart@ColorScheme@shadow': (m.Scope scope, ColorScheme target)=>target.shadow,
'package:flutter/src/material/color_scheme.dart@ColorScheme@scrim': (m.Scope scope, ColorScheme target)=>target.scrim,
'package:flutter/src/material/color_scheme.dart@ColorScheme@inverseSurface': (m.Scope scope, ColorScheme target)=>target.inverseSurface,
'package:flutter/src/material/color_scheme.dart@ColorScheme@onInverseSurface': (m.Scope scope, ColorScheme target)=>target.onInverseSurface,
'package:flutter/src/material/color_scheme.dart@ColorScheme@inversePrimary': (m.Scope scope, ColorScheme target)=>target.inversePrimary,
'package:flutter/src/material/color_scheme.dart@ColorScheme@surfaceTint': (m.Scope scope, ColorScheme target)=>target.surfaceTint,
'package:flutter/src/material/color_scheme.dart@ColorScheme@hashCode': (m.Scope scope, ColorScheme target)=>target.hashCode,
'package:flutter/src/material/color_scheme.dart@ColorScheme@': (m.Scope scope)=>ColorScheme,
'package:flutter/src/material/color_scheme.dart@ColorScheme@fromSeed': (m.Scope scope)=>ColorScheme.fromSeed,
'package:flutter/src/material/color_scheme.dart@ColorScheme@light': (m.Scope scope)=>ColorScheme.light,
'package:flutter/src/material/color_scheme.dart@ColorScheme@dark': (m.Scope scope)=>ColorScheme.dark,
'package:flutter/src/material/color_scheme.dart@ColorScheme@highContrastLight': (m.Scope scope)=>ColorScheme.highContrastLight,
'package:flutter/src/material/color_scheme.dart@ColorScheme@highContrastDark': (m.Scope scope)=>ColorScheme.highContrastDark,
'package:flutter/src/material/color_scheme.dart@ColorScheme@fromSwatch': (m.Scope scope)=>ColorScheme.fromSwatch,
'package:flutter/src/material/color_scheme.dart@ColorScheme@copyWith': (m.Scope scope, ColorScheme target)=>target.copyWith,
'package:flutter/src/material/color_scheme.dart@ColorScheme@lerp': (m.Scope scope)=>ColorScheme.lerp,
'package:flutter/src/material/color_scheme.dart@ColorScheme@==': (m.Scope scope, ColorScheme target)=>(other)=> target == other,
'package:flutter/src/material/color_scheme.dart@ColorScheme@debugFillProperties': (m.Scope scope, ColorScheme target)=>target.debugFillProperties,
'package:flutter/src/material/color_scheme.dart@ColorScheme@fromImageProvider': (m.Scope scope)=>ColorScheme.fromImageProvider,

};
}