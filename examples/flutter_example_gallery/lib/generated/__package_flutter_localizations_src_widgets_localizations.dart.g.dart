import 'package:flutter_localizations/src/widgets_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/src/l10n/generated_widgets_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_localizations/src/widgets_localizations.dart@GlobalWidgetsLocalizations@#as': (m.Scope scope, target)=>()=>target as GlobalWidgetsLocalizations,
'package:flutter_localizations/src/widgets_localizations.dart@GlobalWidgetsLocalizations@#is': (m.Scope scope, target)=>()=>target is GlobalWidgetsLocalizations,
'package:flutter_localizations/src/widgets_localizations.dart@GlobalWidgetsLocalizations@textDirection': (m.Scope scope, GlobalWidgetsLocalizations target)=>target.textDirection,
'package:flutter_localizations/src/widgets_localizations.dart@GlobalWidgetsLocalizations@delegate': (m.Scope scope)=>GlobalWidgetsLocalizations.delegate,

};
}