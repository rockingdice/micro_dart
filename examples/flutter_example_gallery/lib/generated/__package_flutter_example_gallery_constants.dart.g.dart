import 'package:flutter_example_gallery/constants.dart';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example_gallery/constants.dart@@galleryHeaderHeight': (m.Scope scope)=>galleryHeaderHeight,
'package:flutter_example_gallery/constants.dart@@desktopDisplay1FontDelta': (m.Scope scope)=>desktopDisplay1FontDelta,
'package:flutter_example_gallery/constants.dart@@desktopSettingsWidth': (m.Scope scope)=>desktopSettingsWidth,
'package:flutter_example_gallery/constants.dart@@systemTextScaleFactorOption': (m.Scope scope)=>systemTextScaleFactorOption,
'package:flutter_example_gallery/constants.dart@@splashPageAnimationDuration': (m.Scope scope)=>splashPageAnimationDuration,
'package:flutter_example_gallery/constants.dart@@halfSplashPageAnimationDuration': (m.Scope scope)=>halfSplashPageAnimationDuration,
'package:flutter_example_gallery/constants.dart@@settingsPanelMobileAnimationDuration': (m.Scope scope)=>settingsPanelMobileAnimationDuration,
'package:flutter_example_gallery/constants.dart@@settingsPanelDesktopAnimationDuration': (m.Scope scope)=>settingsPanelDesktopAnimationDuration,
'package:flutter_example_gallery/constants.dart@@entranceAnimationDuration': (m.Scope scope)=>entranceAnimationDuration,
'package:flutter_example_gallery/constants.dart@@firstHeaderDesktopTopPadding': (m.Scope scope)=>firstHeaderDesktopTopPadding,
'package:flutter_example_gallery/constants.dart@@kTransparentImage': (m.Scope scope)=>kTransparentImage,

};
}