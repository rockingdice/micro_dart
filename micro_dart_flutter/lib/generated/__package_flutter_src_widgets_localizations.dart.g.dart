import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@#as': (m.Scope scope, target)=>()=>target as LocalizationsDelegate,
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@#is': (m.Scope scope, target)=>()=>target is LocalizationsDelegate,
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@type': (m.Scope scope, LocalizationsDelegate target)=>target.type,
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@isSupported': (m.Scope scope, LocalizationsDelegate target)=>target.isSupported,
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@load': (m.Scope scope, LocalizationsDelegate target)=>target.load,
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@shouldReload': (m.Scope scope, LocalizationsDelegate target)=>target.shouldReload,
'package:flutter/src/widgets/localizations.dart@LocalizationsDelegate@toString': (m.Scope scope, LocalizationsDelegate target)=>target.toString,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@#as': (m.Scope scope, target)=>()=>target as WidgetsLocalizations,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@#is': (m.Scope scope, target)=>()=>target is WidgetsLocalizations,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@textDirection': (m.Scope scope, WidgetsLocalizations target)=>target.textDirection,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@reorderItemToStart': (m.Scope scope, WidgetsLocalizations target)=>target.reorderItemToStart,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@reorderItemToEnd': (m.Scope scope, WidgetsLocalizations target)=>target.reorderItemToEnd,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@reorderItemUp': (m.Scope scope, WidgetsLocalizations target)=>target.reorderItemUp,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@reorderItemDown': (m.Scope scope, WidgetsLocalizations target)=>target.reorderItemDown,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@reorderItemLeft': (m.Scope scope, WidgetsLocalizations target)=>target.reorderItemLeft,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@reorderItemRight': (m.Scope scope, WidgetsLocalizations target)=>target.reorderItemRight,
'package:flutter/src/widgets/localizations.dart@WidgetsLocalizations@of': (m.Scope scope)=>WidgetsLocalizations.of,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@#as': (m.Scope scope, target)=>()=>target as DefaultWidgetsLocalizations,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@#is': (m.Scope scope, target)=>()=>target is DefaultWidgetsLocalizations,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@delegate': (m.Scope scope)=>DefaultWidgetsLocalizations.delegate,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@reorderItemUp': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.reorderItemUp,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@reorderItemDown': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.reorderItemDown,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@reorderItemLeft': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.reorderItemLeft,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@reorderItemRight': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.reorderItemRight,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@reorderItemToEnd': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.reorderItemToEnd,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@reorderItemToStart': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.reorderItemToStart,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@textDirection': (m.Scope scope, DefaultWidgetsLocalizations target)=>target.textDirection,
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@': (m.Scope scope)=>(){
return DefaultWidgetsLocalizations();
},
'package:flutter/src/widgets/localizations.dart@DefaultWidgetsLocalizations@load': (m.Scope scope)=>DefaultWidgetsLocalizations.load,
'package:flutter/src/widgets/localizations.dart@Localizations@#as': (m.Scope scope, target)=>()=>target as Localizations,
'package:flutter/src/widgets/localizations.dart@Localizations@#is': (m.Scope scope, target)=>()=>target is Localizations,
'package:flutter/src/widgets/localizations.dart@Localizations@locale': (m.Scope scope, Localizations target)=>target.locale,
'package:flutter/src/widgets/localizations.dart@Localizations@delegates': (m.Scope scope, Localizations target)=>target.delegates,
'package:flutter/src/widgets/localizations.dart@Localizations@child': (m.Scope scope, Localizations target)=>target.child,
'package:flutter/src/widgets/localizations.dart@Localizations@': (m.Scope scope)=>Localizations,
'package:flutter/src/widgets/localizations.dart@Localizations@override': (m.Scope scope)=>Localizations.override,
'package:flutter/src/widgets/localizations.dart@Localizations@localeOf': (m.Scope scope)=>Localizations.localeOf,
'package:flutter/src/widgets/localizations.dart@Localizations@maybeLocaleOf': (m.Scope scope)=>Localizations.maybeLocaleOf,
'package:flutter/src/widgets/localizations.dart@Localizations@of': (m.Scope scope)=>Localizations.of,
'package:flutter/src/widgets/localizations.dart@Localizations@createState': (m.Scope scope, Localizations target)=>target.createState,
'package:flutter/src/widgets/localizations.dart@Localizations@debugFillProperties': (m.Scope scope, Localizations target)=>target.debugFillProperties,

};
}