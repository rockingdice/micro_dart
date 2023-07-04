import 'package:url_launcher_platform_interface/link.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher_platform_interface/link.dart@LinkTarget@#as': (m.Scope scope, target)=>()=>target as LinkTarget,
'package:url_launcher_platform_interface/link.dart@LinkTarget@#is': (m.Scope scope, target)=>()=>target is LinkTarget,
'package:url_launcher_platform_interface/link.dart@LinkTarget@debugLabel': (m.Scope scope, LinkTarget target)=>target.debugLabel,
'package:url_launcher_platform_interface/link.dart@LinkTarget@defaultTarget': (m.Scope scope)=>LinkTarget.defaultTarget,
'package:url_launcher_platform_interface/link.dart@LinkTarget@self': (m.Scope scope)=>LinkTarget.self,
'package:url_launcher_platform_interface/link.dart@LinkTarget@blank': (m.Scope scope)=>LinkTarget.blank,
'package:url_launcher_platform_interface/link.dart@LinkInfo@#as': (m.Scope scope, target)=>()=>target as LinkInfo,
'package:url_launcher_platform_interface/link.dart@LinkInfo@#is': (m.Scope scope, target)=>()=>target is LinkInfo,
'package:url_launcher_platform_interface/link.dart@LinkInfo@builder': (m.Scope scope, LinkInfo target)=>target.builder,
'package:url_launcher_platform_interface/link.dart@LinkInfo@uri': (m.Scope scope, LinkInfo target)=>target.uri,
'package:url_launcher_platform_interface/link.dart@LinkInfo@target': (m.Scope scope, LinkInfo target)=>target.target,
'package:url_launcher_platform_interface/link.dart@LinkInfo@isDisabled': (m.Scope scope, LinkInfo target)=>target.isDisabled,
'package:url_launcher_platform_interface/link.dart@@pushRouteNameToFramework': (m.Scope scope)=>pushRouteNameToFramework,

};
}