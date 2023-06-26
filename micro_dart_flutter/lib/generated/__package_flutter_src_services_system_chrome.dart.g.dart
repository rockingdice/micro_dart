import 'package:flutter/src/services/system_chrome.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/system_chrome.dart@ApplicationSwitcherDescription@#as': (m.Scope scope, target)=>()=>target as ApplicationSwitcherDescription,
'package:flutter/src/services/system_chrome.dart@ApplicationSwitcherDescription@#is': (m.Scope scope, target)=>()=>target is ApplicationSwitcherDescription,
'package:flutter/src/services/system_chrome.dart@ApplicationSwitcherDescription@label': (m.Scope scope, ApplicationSwitcherDescription target)=>target.label,
'package:flutter/src/services/system_chrome.dart@ApplicationSwitcherDescription@primaryColor': (m.Scope scope, ApplicationSwitcherDescription target)=>target.primaryColor,
'package:flutter/src/services/system_chrome.dart@ApplicationSwitcherDescription@': (m.Scope scope)=>({ label,  primaryColor}){
return ApplicationSwitcherDescription(label:label, primaryColor:primaryColor);
},
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@#as': (m.Scope scope, target)=>()=>target as SystemUiOverlayStyle,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@#is': (m.Scope scope, target)=>()=>target is SystemUiOverlayStyle,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@systemNavigationBarColor': (m.Scope scope, SystemUiOverlayStyle target)=>target.systemNavigationBarColor,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@systemNavigationBarDividerColor': (m.Scope scope, SystemUiOverlayStyle target)=>target.systemNavigationBarDividerColor,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@systemNavigationBarIconBrightness': (m.Scope scope, SystemUiOverlayStyle target)=>target.systemNavigationBarIconBrightness,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@systemNavigationBarContrastEnforced': (m.Scope scope, SystemUiOverlayStyle target)=>target.systemNavigationBarContrastEnforced,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@statusBarColor': (m.Scope scope, SystemUiOverlayStyle target)=>target.statusBarColor,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@statusBarBrightness': (m.Scope scope, SystemUiOverlayStyle target)=>target.statusBarBrightness,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@statusBarIconBrightness': (m.Scope scope, SystemUiOverlayStyle target)=>target.statusBarIconBrightness,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@systemStatusBarContrastEnforced': (m.Scope scope, SystemUiOverlayStyle target)=>target.systemStatusBarContrastEnforced,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@light': (m.Scope scope)=>SystemUiOverlayStyle.light,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@dark': (m.Scope scope)=>SystemUiOverlayStyle.dark,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@hashCode': (m.Scope scope, SystemUiOverlayStyle target)=>target.hashCode,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@': (m.Scope scope)=>({ statusBarBrightness,  statusBarColor,  statusBarIconBrightness,  systemNavigationBarColor,  systemNavigationBarContrastEnforced,  systemNavigationBarDividerColor,  systemNavigationBarIconBrightness,  systemStatusBarContrastEnforced}){
return SystemUiOverlayStyle(statusBarBrightness:statusBarBrightness, statusBarColor:statusBarColor, statusBarIconBrightness:statusBarIconBrightness, systemNavigationBarColor:systemNavigationBarColor, systemNavigationBarContrastEnforced:systemNavigationBarContrastEnforced, systemNavigationBarDividerColor:systemNavigationBarDividerColor, systemNavigationBarIconBrightness:systemNavigationBarIconBrightness, systemStatusBarContrastEnforced:systemStatusBarContrastEnforced);
},
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@toString': (m.Scope scope, SystemUiOverlayStyle target)=>target.toString,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@copyWith': (m.Scope scope, SystemUiOverlayStyle target)=>target.copyWith,
'package:flutter/src/services/system_chrome.dart@SystemUiOverlayStyle@==': (m.Scope scope, SystemUiOverlayStyle target)=>(other)=> target == other,
'package:flutter/src/services/system_chrome.dart@SystemChrome@#as': (m.Scope scope, target)=>()=>target as SystemChrome,
'package:flutter/src/services/system_chrome.dart@SystemChrome@#is': (m.Scope scope, target)=>()=>target is SystemChrome,
'package:flutter/src/services/system_chrome.dart@SystemChrome@latestStyle': (m.Scope scope)=>SystemChrome.latestStyle,
'package:flutter/src/services/system_chrome.dart@SystemChrome@setPreferredOrientations': (m.Scope scope)=>SystemChrome.setPreferredOrientations,
'package:flutter/src/services/system_chrome.dart@SystemChrome@setApplicationSwitcherDescription': (m.Scope scope)=>SystemChrome.setApplicationSwitcherDescription,
'package:flutter/src/services/system_chrome.dart@SystemChrome@setEnabledSystemUIMode': (m.Scope scope)=>SystemChrome.setEnabledSystemUIMode,
'package:flutter/src/services/system_chrome.dart@SystemChrome@setSystemUIChangeCallback': (m.Scope scope)=>( callback){
Future callbackProxy( systemOverlaysAreVisible) async{
return await engine.callFunctionPointerAsync(scope, callback!,[systemOverlaysAreVisible], {});
}

return SystemChrome.setSystemUIChangeCallback(callbackProxy);
},
'package:flutter/src/services/system_chrome.dart@SystemChrome@restoreSystemUIOverlays': (m.Scope scope)=>SystemChrome.restoreSystemUIOverlays,
'package:flutter/src/services/system_chrome.dart@SystemChrome@setSystemUIOverlayStyle': (m.Scope scope)=>SystemChrome.setSystemUIOverlayStyle,

};
}