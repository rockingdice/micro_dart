import 'package:url_launcher_platform_interface/src/url_launcher_platform.dart';
import 'dart:async';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:url_launcher_platform_interface/link.dart';
import 'package:url_launcher_platform_interface/method_channel_url_launcher.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@#as': (m.Scope scope, target)=>()=>target as UrlLauncherPlatform,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@#is': (m.Scope scope, target)=>()=>target is UrlLauncherPlatform,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@instance': (m.Scope scope)=>UrlLauncherPlatform.instance,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@instance:set': (m.Scope scope)=>(other)=>UrlLauncherPlatform.instance=other,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@linkDelegate': (m.Scope scope, UrlLauncherPlatform target)=>target.linkDelegate,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@canLaunch': (m.Scope scope, UrlLauncherPlatform target)=>target.canLaunch,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@launch': (m.Scope scope, UrlLauncherPlatform target)=>target.launch,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@launchUrl': (m.Scope scope, UrlLauncherPlatform target)=>target.launchUrl,
'package:url_launcher_platform_interface/src/url_launcher_platform.dart@UrlLauncherPlatform@closeWebView': (m.Scope scope, UrlLauncherPlatform target)=>target.closeWebView,

};
}