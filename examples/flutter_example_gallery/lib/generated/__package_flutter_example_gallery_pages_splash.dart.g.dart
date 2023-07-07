import 'package:flutter_example_gallery/pages/splash.dart';
import 'dart:math';
import 'package:dual_screen/dual_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_gallery/gen_l10n/gallery_localizations.dart';
import 'package:flutter_example_gallery/constants.dart';
import 'package:flutter_example_gallery/layout/adaptive.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example_gallery/pages/splash.dart@@homePeekDesktop': (m.Scope scope)=>homePeekDesktop,
'package:flutter_example_gallery/pages/splash.dart@@homePeekMobile': (m.Scope scope)=>homePeekMobile,
'package:flutter_example_gallery/pages/splash.dart@ToggleSplashNotification@#as': (m.Scope scope, target)=>()=>target as ToggleSplashNotification,
'package:flutter_example_gallery/pages/splash.dart@ToggleSplashNotification@#is': (m.Scope scope, target)=>()=>target is ToggleSplashNotification,
'package:flutter_example_gallery/pages/splash.dart@ToggleSplashNotification@': (m.Scope scope)=>(){
return ToggleSplashNotification();
},
'package:flutter_example_gallery/pages/splash.dart@SplashPageAnimation@#as': (m.Scope scope, target)=>()=>target as SplashPageAnimation,
'package:flutter_example_gallery/pages/splash.dart@SplashPageAnimation@#is': (m.Scope scope, target)=>()=>target is SplashPageAnimation,
'package:flutter_example_gallery/pages/splash.dart@SplashPageAnimation@isFinished': (m.Scope scope, SplashPageAnimation target)=>target.isFinished,
'package:flutter_example_gallery/pages/splash.dart@SplashPageAnimation@': (m.Scope scope)=>({ child,  isFinished,  key}){
return SplashPageAnimation(child:child, isFinished:isFinished, key:key);
},
'package:flutter_example_gallery/pages/splash.dart@SplashPageAnimation@of': (m.Scope scope)=>SplashPageAnimation.of,
'package:flutter_example_gallery/pages/splash.dart@SplashPageAnimation@updateShouldNotify': (m.Scope scope, SplashPageAnimation target)=>target.updateShouldNotify,
'package:flutter_example_gallery/pages/splash.dart@SplashPage@#as': (m.Scope scope, target)=>()=>target as SplashPage,
'package:flutter_example_gallery/pages/splash.dart@SplashPage@#is': (m.Scope scope, target)=>()=>target is SplashPage,
'package:flutter_example_gallery/pages/splash.dart@SplashPage@child': (m.Scope scope, SplashPage target)=>target.child,
'package:flutter_example_gallery/pages/splash.dart@SplashPage@': (m.Scope scope)=>({ child,  key}){
return SplashPage(child:child, key:key);
},
'package:flutter_example_gallery/pages/splash.dart@SplashPage@createState': (m.Scope scope, SplashPage target)=>target.createState,

};
}