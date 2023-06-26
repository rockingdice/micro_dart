import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/text_theme.dart@TextTheme@#as': (m.Scope scope, target)=>()=>target as TextTheme,
'package:flutter/src/material/text_theme.dart@TextTheme@#is': (m.Scope scope, target)=>()=>target is TextTheme,
'package:flutter/src/material/text_theme.dart@TextTheme@displayLarge': (m.Scope scope, TextTheme target)=>target.displayLarge,
'package:flutter/src/material/text_theme.dart@TextTheme@displayMedium': (m.Scope scope, TextTheme target)=>target.displayMedium,
'package:flutter/src/material/text_theme.dart@TextTheme@displaySmall': (m.Scope scope, TextTheme target)=>target.displaySmall,
'package:flutter/src/material/text_theme.dart@TextTheme@headlineLarge': (m.Scope scope, TextTheme target)=>target.headlineLarge,
'package:flutter/src/material/text_theme.dart@TextTheme@headlineMedium': (m.Scope scope, TextTheme target)=>target.headlineMedium,
'package:flutter/src/material/text_theme.dart@TextTheme@headlineSmall': (m.Scope scope, TextTheme target)=>target.headlineSmall,
'package:flutter/src/material/text_theme.dart@TextTheme@titleLarge': (m.Scope scope, TextTheme target)=>target.titleLarge,
'package:flutter/src/material/text_theme.dart@TextTheme@titleMedium': (m.Scope scope, TextTheme target)=>target.titleMedium,
'package:flutter/src/material/text_theme.dart@TextTheme@titleSmall': (m.Scope scope, TextTheme target)=>target.titleSmall,
'package:flutter/src/material/text_theme.dart@TextTheme@bodyLarge': (m.Scope scope, TextTheme target)=>target.bodyLarge,
'package:flutter/src/material/text_theme.dart@TextTheme@bodyMedium': (m.Scope scope, TextTheme target)=>target.bodyMedium,
'package:flutter/src/material/text_theme.dart@TextTheme@bodySmall': (m.Scope scope, TextTheme target)=>target.bodySmall,
'package:flutter/src/material/text_theme.dart@TextTheme@labelLarge': (m.Scope scope, TextTheme target)=>target.labelLarge,
'package:flutter/src/material/text_theme.dart@TextTheme@labelMedium': (m.Scope scope, TextTheme target)=>target.labelMedium,
'package:flutter/src/material/text_theme.dart@TextTheme@labelSmall': (m.Scope scope, TextTheme target)=>target.labelSmall,
'package:flutter/src/material/text_theme.dart@TextTheme@hashCode': (m.Scope scope, TextTheme target)=>target.hashCode,
'package:flutter/src/material/text_theme.dart@TextTheme@': (m.Scope scope)=>({ bodyLarge,  bodyMedium,  bodySmall,  bodyText1,  bodyText2,  button,  caption,  displayLarge,  displayMedium,  displaySmall,  headline1,  headline2,  headline3,  headline4,  headline5,  headline6,  headlineLarge,  headlineMedium,  headlineSmall,  labelLarge,  labelMedium,  labelSmall,  overline,  subtitle1,  subtitle2,  titleLarge,  titleMedium,  titleSmall}){
return TextTheme(bodyLarge:bodyLarge, bodyMedium:bodyMedium, bodySmall:bodySmall, bodyText1:bodyText1, bodyText2:bodyText2, button:button, caption:caption, displayLarge:displayLarge, displayMedium:displayMedium, displaySmall:displaySmall, headline1:headline1, headline2:headline2, headline3:headline3, headline4:headline4, headline5:headline5, headline6:headline6, headlineLarge:headlineLarge, headlineMedium:headlineMedium, headlineSmall:headlineSmall, labelLarge:labelLarge, labelMedium:labelMedium, labelSmall:labelSmall, overline:overline, subtitle1:subtitle1, subtitle2:subtitle2, titleLarge:titleLarge, titleMedium:titleMedium, titleSmall:titleSmall);
},
'package:flutter/src/material/text_theme.dart@TextTheme@copyWith': (m.Scope scope, TextTheme target)=>target.copyWith,
'package:flutter/src/material/text_theme.dart@TextTheme@merge': (m.Scope scope, TextTheme target)=>target.merge,
'package:flutter/src/material/text_theme.dart@TextTheme@apply': (m.Scope scope, TextTheme target)=>target.apply,
'package:flutter/src/material/text_theme.dart@TextTheme@lerp': (m.Scope scope)=>TextTheme.lerp,
'package:flutter/src/material/text_theme.dart@TextTheme@==': (m.Scope scope, TextTheme target)=>(other)=> target == other,
'package:flutter/src/material/text_theme.dart@TextTheme@debugFillProperties': (m.Scope scope, TextTheme target)=>target.debugFillProperties,

};
}