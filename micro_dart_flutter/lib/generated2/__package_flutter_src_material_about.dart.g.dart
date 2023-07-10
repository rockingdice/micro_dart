import 'package:flutter/src/material/about.dart';
import 'dart:developer' show Flow,Timeline;
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart' hide Flow;
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/src/material/card.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/scrollbar.dart';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/about.dart@AboutListTile@#as': (m.Scope scope, target)=>()=>target as AboutListTile,
'package:flutter/src/material/about.dart@AboutListTile@#is': (m.Scope scope, target)=>()=>target is AboutListTile,
'package:flutter/src/material/about.dart@AboutListTile@icon': (m.Scope scope, AboutListTile target)=>target.icon,
'package:flutter/src/material/about.dart@AboutListTile@child': (m.Scope scope, AboutListTile target)=>target.child,
'package:flutter/src/material/about.dart@AboutListTile@applicationName': (m.Scope scope, AboutListTile target)=>target.applicationName,
'package:flutter/src/material/about.dart@AboutListTile@applicationVersion': (m.Scope scope, AboutListTile target)=>target.applicationVersion,
'package:flutter/src/material/about.dart@AboutListTile@applicationIcon': (m.Scope scope, AboutListTile target)=>target.applicationIcon,
'package:flutter/src/material/about.dart@AboutListTile@applicationLegalese': (m.Scope scope, AboutListTile target)=>target.applicationLegalese,
'package:flutter/src/material/about.dart@AboutListTile@aboutBoxChildren': (m.Scope scope, AboutListTile target)=>target.aboutBoxChildren,
'package:flutter/src/material/about.dart@AboutListTile@dense': (m.Scope scope, AboutListTile target)=>target.dense,
'package:flutter/src/material/about.dart@AboutListTile@': (m.Scope scope)=>({ aboutBoxChildren,  applicationIcon,  applicationLegalese,  applicationName,  applicationVersion,  child,  dense,  icon,  key}){
return AboutListTile(aboutBoxChildren:aboutBoxChildren, applicationIcon:applicationIcon, applicationLegalese:applicationLegalese, applicationName:applicationName, applicationVersion:applicationVersion, child:child, dense:dense, icon:icon, key:key);
},
'package:flutter/src/material/about.dart@AboutListTile@build': (m.Scope scope, AboutListTile target)=>target.build,
'package:flutter/src/material/about.dart@AboutDialog@#as': (m.Scope scope, target)=>()=>target as AboutDialog,
'package:flutter/src/material/about.dart@AboutDialog@#is': (m.Scope scope, target)=>()=>target is AboutDialog,
'package:flutter/src/material/about.dart@AboutDialog@applicationName': (m.Scope scope, AboutDialog target)=>target.applicationName,
'package:flutter/src/material/about.dart@AboutDialog@applicationVersion': (m.Scope scope, AboutDialog target)=>target.applicationVersion,
'package:flutter/src/material/about.dart@AboutDialog@applicationIcon': (m.Scope scope, AboutDialog target)=>target.applicationIcon,
'package:flutter/src/material/about.dart@AboutDialog@applicationLegalese': (m.Scope scope, AboutDialog target)=>target.applicationLegalese,
'package:flutter/src/material/about.dart@AboutDialog@children': (m.Scope scope, AboutDialog target)=>target.children,
'package:flutter/src/material/about.dart@AboutDialog@': (m.Scope scope)=>({ applicationIcon,  applicationLegalese,  applicationName,  applicationVersion,  children,  key}){
return AboutDialog(applicationIcon:applicationIcon, applicationLegalese:applicationLegalese, applicationName:applicationName, applicationVersion:applicationVersion, children:children, key:key);
},
'package:flutter/src/material/about.dart@AboutDialog@build': (m.Scope scope, AboutDialog target)=>target.build,
'package:flutter/src/material/about.dart@LicensePage@#as': (m.Scope scope, target)=>()=>target as LicensePage,
'package:flutter/src/material/about.dart@LicensePage@#is': (m.Scope scope, target)=>()=>target is LicensePage,
'package:flutter/src/material/about.dart@LicensePage@applicationName': (m.Scope scope, LicensePage target)=>target.applicationName,
'package:flutter/src/material/about.dart@LicensePage@applicationVersion': (m.Scope scope, LicensePage target)=>target.applicationVersion,
'package:flutter/src/material/about.dart@LicensePage@applicationIcon': (m.Scope scope, LicensePage target)=>target.applicationIcon,
'package:flutter/src/material/about.dart@LicensePage@applicationLegalese': (m.Scope scope, LicensePage target)=>target.applicationLegalese,
'package:flutter/src/material/about.dart@LicensePage@': (m.Scope scope)=>({ applicationIcon,  applicationLegalese,  applicationName,  applicationVersion,  key}){
return LicensePage(applicationIcon:applicationIcon, applicationLegalese:applicationLegalese, applicationName:applicationName, applicationVersion:applicationVersion, key:key);
},
'package:flutter/src/material/about.dart@LicensePage@createState': (m.Scope scope, LicensePage target)=>target.createState,
'package:flutter/src/material/about.dart@@showAboutDialog': (m.Scope scope)=>showAboutDialog,
'package:flutter/src/material/about.dart@@showLicensePage': (m.Scope scope)=>showLicensePage,

};
}