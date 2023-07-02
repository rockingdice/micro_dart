import 'package:material_color_utilities/scheme/scheme.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:material_color_utilities/scheme/scheme.dart@Scheme@#as': (m.Scope scope, target)=>()=>target as Scheme,
'package:material_color_utilities/scheme/scheme.dart@Scheme@#is': (m.Scope scope, target)=>()=>target is Scheme,
'package:material_color_utilities/scheme/scheme.dart@Scheme@primary': (m.Scope scope, Scheme target)=>target.primary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onPrimary': (m.Scope scope, Scheme target)=>target.onPrimary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@primaryContainer': (m.Scope scope, Scheme target)=>target.primaryContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onPrimaryContainer': (m.Scope scope, Scheme target)=>target.onPrimaryContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@secondary': (m.Scope scope, Scheme target)=>target.secondary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onSecondary': (m.Scope scope, Scheme target)=>target.onSecondary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@secondaryContainer': (m.Scope scope, Scheme target)=>target.secondaryContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onSecondaryContainer': (m.Scope scope, Scheme target)=>target.onSecondaryContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@tertiary': (m.Scope scope, Scheme target)=>target.tertiary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onTertiary': (m.Scope scope, Scheme target)=>target.onTertiary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@tertiaryContainer': (m.Scope scope, Scheme target)=>target.tertiaryContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onTertiaryContainer': (m.Scope scope, Scheme target)=>target.onTertiaryContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@error': (m.Scope scope, Scheme target)=>target.error,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onError': (m.Scope scope, Scheme target)=>target.onError,
'package:material_color_utilities/scheme/scheme.dart@Scheme@errorContainer': (m.Scope scope, Scheme target)=>target.errorContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onErrorContainer': (m.Scope scope, Scheme target)=>target.onErrorContainer,
'package:material_color_utilities/scheme/scheme.dart@Scheme@background': (m.Scope scope, Scheme target)=>target.background,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onBackground': (m.Scope scope, Scheme target)=>target.onBackground,
'package:material_color_utilities/scheme/scheme.dart@Scheme@surface': (m.Scope scope, Scheme target)=>target.surface,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onSurface': (m.Scope scope, Scheme target)=>target.onSurface,
'package:material_color_utilities/scheme/scheme.dart@Scheme@surfaceVariant': (m.Scope scope, Scheme target)=>target.surfaceVariant,
'package:material_color_utilities/scheme/scheme.dart@Scheme@onSurfaceVariant': (m.Scope scope, Scheme target)=>target.onSurfaceVariant,
'package:material_color_utilities/scheme/scheme.dart@Scheme@outline': (m.Scope scope, Scheme target)=>target.outline,
'package:material_color_utilities/scheme/scheme.dart@Scheme@outlineVariant': (m.Scope scope, Scheme target)=>target.outlineVariant,
'package:material_color_utilities/scheme/scheme.dart@Scheme@shadow': (m.Scope scope, Scheme target)=>target.shadow,
'package:material_color_utilities/scheme/scheme.dart@Scheme@scrim': (m.Scope scope, Scheme target)=>target.scrim,
'package:material_color_utilities/scheme/scheme.dart@Scheme@inverseSurface': (m.Scope scope, Scheme target)=>target.inverseSurface,
'package:material_color_utilities/scheme/scheme.dart@Scheme@inverseOnSurface': (m.Scope scope, Scheme target)=>target.inverseOnSurface,
'package:material_color_utilities/scheme/scheme.dart@Scheme@inversePrimary': (m.Scope scope, Scheme target)=>target.inversePrimary,
'package:material_color_utilities/scheme/scheme.dart@Scheme@': (m.Scope scope)=>({ background,  error,  errorContainer,  inverseOnSurface,  inversePrimary,  inverseSurface,  onBackground,  onError,  onErrorContainer,  onPrimary,  onPrimaryContainer,  onSecondary,  onSecondaryContainer,  onSurface,  onSurfaceVariant,  onTertiary,  onTertiaryContainer,  outline,  outlineVariant,  primary,  primaryContainer,  scrim,  secondary,  secondaryContainer,  shadow,  surface,  surfaceVariant,  tertiary,  tertiaryContainer}){
return Scheme(background:background, error:error, errorContainer:errorContainer, inverseOnSurface:inverseOnSurface, inversePrimary:inversePrimary, inverseSurface:inverseSurface, onBackground:onBackground, onError:onError, onErrorContainer:onErrorContainer, onPrimary:onPrimary, onPrimaryContainer:onPrimaryContainer, onSecondary:onSecondary, onSecondaryContainer:onSecondaryContainer, onSurface:onSurface, onSurfaceVariant:onSurfaceVariant, onTertiary:onTertiary, onTertiaryContainer:onTertiaryContainer, outline:outline, outlineVariant:outlineVariant, primary:primary, primaryContainer:primaryContainer, scrim:scrim, secondary:secondary, secondaryContainer:secondaryContainer, shadow:shadow, surface:surface, surfaceVariant:surfaceVariant, tertiary:tertiary, tertiaryContainer:tertiaryContainer);
},
'package:material_color_utilities/scheme/scheme.dart@Scheme@light': (m.Scope scope)=>Scheme.light,
'package:material_color_utilities/scheme/scheme.dart@Scheme@dark': (m.Scope scope)=>Scheme.dark,
'package:material_color_utilities/scheme/scheme.dart@Scheme@lightContent': (m.Scope scope)=>Scheme.lightContent,
'package:material_color_utilities/scheme/scheme.dart@Scheme@darkContent': (m.Scope scope)=>Scheme.darkContent,
'package:material_color_utilities/scheme/scheme.dart@Scheme@lightFromCorePalette': (m.Scope scope)=>Scheme.lightFromCorePalette,
'package:material_color_utilities/scheme/scheme.dart@Scheme@darkFromCorePalette': (m.Scope scope)=>Scheme.darkFromCorePalette,

};
}