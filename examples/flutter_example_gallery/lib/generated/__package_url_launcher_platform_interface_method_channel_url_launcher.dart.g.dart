import 'package:url_launcher_platform_interface/method_channel_url_launcher.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:url_launcher_platform_interface/link.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@#as': (m.Scope scope, target)=>()=>target as MethodChannelUrlLauncher,
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@#is': (m.Scope scope, target)=>()=>target is MethodChannelUrlLauncher,
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@linkDelegate': (m.Scope scope, MethodChannelUrlLauncher target)=>target.linkDelegate,
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@': (m.Scope scope)=>(){
return MethodChannelUrlLauncher();
},
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@canLaunch': (m.Scope scope, MethodChannelUrlLauncher target)=>target.canLaunch,
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@closeWebView': (m.Scope scope, MethodChannelUrlLauncher target)=>target.closeWebView,
'package:url_launcher_platform_interface/method_channel_url_launcher.dart@MethodChannelUrlLauncher@launch': (m.Scope scope, MethodChannelUrlLauncher target)=>target.launch,

};
}