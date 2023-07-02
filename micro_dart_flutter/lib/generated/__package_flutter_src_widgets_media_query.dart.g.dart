import 'package:flutter/src/widgets/media_query.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_model.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/media_query.dart@MediaQueryData@#as': (m.Scope scope, target)=>()=>target as MediaQueryData,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@#is': (m.Scope scope, target)=>()=>target is MediaQueryData,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@size': (m.Scope scope, MediaQueryData target)=>target.size,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@devicePixelRatio': (m.Scope scope, MediaQueryData target)=>target.devicePixelRatio,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@textScaleFactor': (m.Scope scope, MediaQueryData target)=>target.textScaleFactor,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@platformBrightness': (m.Scope scope, MediaQueryData target)=>target.platformBrightness,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@viewInsets': (m.Scope scope, MediaQueryData target)=>target.viewInsets,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@padding': (m.Scope scope, MediaQueryData target)=>target.padding,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@viewPadding': (m.Scope scope, MediaQueryData target)=>target.viewPadding,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@systemGestureInsets': (m.Scope scope, MediaQueryData target)=>target.systemGestureInsets,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@alwaysUse24HourFormat': (m.Scope scope, MediaQueryData target)=>target.alwaysUse24HourFormat,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@accessibleNavigation': (m.Scope scope, MediaQueryData target)=>target.accessibleNavigation,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@invertColors': (m.Scope scope, MediaQueryData target)=>target.invertColors,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@highContrast': (m.Scope scope, MediaQueryData target)=>target.highContrast,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@disableAnimations': (m.Scope scope, MediaQueryData target)=>target.disableAnimations,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@boldText': (m.Scope scope, MediaQueryData target)=>target.boldText,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@navigationMode': (m.Scope scope, MediaQueryData target)=>target.navigationMode,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@gestureSettings': (m.Scope scope, MediaQueryData target)=>target.gestureSettings,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@displayFeatures': (m.Scope scope, MediaQueryData target)=>target.displayFeatures,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@orientation': (m.Scope scope, MediaQueryData target)=>target.orientation,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@hashCode': (m.Scope scope, MediaQueryData target)=>target.hashCode,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@': (m.Scope scope)=>({ accessibleNavigation,  alwaysUse24HourFormat,  boldText,  devicePixelRatio,  disableAnimations,  displayFeatures,  gestureSettings,  highContrast,  invertColors,  navigationMode,  padding,  platformBrightness,  size,  systemGestureInsets,  textScaleFactor,  viewInsets,  viewPadding}){
return MediaQueryData(accessibleNavigation:accessibleNavigation ?? false, alwaysUse24HourFormat:alwaysUse24HourFormat ?? false, boldText:boldText ?? false, devicePixelRatio:devicePixelRatio ?? 1.0, disableAnimations:disableAnimations ?? false, displayFeatures:displayFeatures ?? const <DisplayFeature>[], gestureSettings:gestureSettings ?? const DeviceGestureSettings(touchSlop: kTouchSlop), highContrast:highContrast ?? false, invertColors:invertColors ?? false, navigationMode:navigationMode ?? NavigationMode.traditional, padding:padding ?? EdgeInsets.zero, platformBrightness:platformBrightness ?? Brightness.light, size:size ?? Size.zero, systemGestureInsets:systemGestureInsets ?? EdgeInsets.zero, textScaleFactor:textScaleFactor ?? 1.0, viewInsets:viewInsets ?? EdgeInsets.zero, viewPadding:viewPadding ?? EdgeInsets.zero);
},
'package:flutter/src/widgets/media_query.dart@MediaQueryData@fromView': (m.Scope scope)=>MediaQueryData.fromView,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@copyWith': (m.Scope scope, MediaQueryData target)=>target.copyWith,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@removePadding': (m.Scope scope, MediaQueryData target)=>target.removePadding,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@removeViewInsets': (m.Scope scope, MediaQueryData target)=>target.removeViewInsets,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@removeViewPadding': (m.Scope scope, MediaQueryData target)=>target.removeViewPadding,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@removeDisplayFeatures': (m.Scope scope, MediaQueryData target)=>target.removeDisplayFeatures,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@==': (m.Scope scope, MediaQueryData target)=>(other)=> target == other,
'package:flutter/src/widgets/media_query.dart@MediaQueryData@toString': (m.Scope scope, MediaQueryData target)=>target.toString,
'package:flutter/src/widgets/media_query.dart@MediaQuery@#as': (m.Scope scope, target)=>()=>target as MediaQuery,
'package:flutter/src/widgets/media_query.dart@MediaQuery@#is': (m.Scope scope, target)=>()=>target is MediaQuery,
'package:flutter/src/widgets/media_query.dart@MediaQuery@data': (m.Scope scope, MediaQuery target)=>target.data,
'package:flutter/src/widgets/media_query.dart@MediaQuery@': (m.Scope scope)=>({ child,  data,  key}){
return MediaQuery(child:child, data:data, key:key);
},
'package:flutter/src/widgets/media_query.dart@MediaQuery@removePadding': (m.Scope scope)=>MediaQuery.removePadding,
'package:flutter/src/widgets/media_query.dart@MediaQuery@removeViewInsets': (m.Scope scope)=>MediaQuery.removeViewInsets,
'package:flutter/src/widgets/media_query.dart@MediaQuery@removeViewPadding': (m.Scope scope)=>MediaQuery.removeViewPadding,
'package:flutter/src/widgets/media_query.dart@MediaQuery@fromView': (m.Scope scope)=>MediaQuery.fromView,
'package:flutter/src/widgets/media_query.dart@MediaQuery@of': (m.Scope scope)=>MediaQuery.of,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeOf': (m.Scope scope)=>MediaQuery.maybeOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@sizeOf': (m.Scope scope)=>MediaQuery.sizeOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeSizeOf': (m.Scope scope)=>MediaQuery.maybeSizeOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@orientationOf': (m.Scope scope)=>MediaQuery.orientationOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeOrientationOf': (m.Scope scope)=>MediaQuery.maybeOrientationOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@devicePixelRatioOf': (m.Scope scope)=>MediaQuery.devicePixelRatioOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeDevicePixelRatioOf': (m.Scope scope)=>MediaQuery.maybeDevicePixelRatioOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@textScaleFactorOf': (m.Scope scope)=>MediaQuery.textScaleFactorOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeTextScaleFactorOf': (m.Scope scope)=>MediaQuery.maybeTextScaleFactorOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@platformBrightnessOf': (m.Scope scope)=>MediaQuery.platformBrightnessOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybePlatformBrightnessOf': (m.Scope scope)=>MediaQuery.maybePlatformBrightnessOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@paddingOf': (m.Scope scope)=>MediaQuery.paddingOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybePaddingOf': (m.Scope scope)=>MediaQuery.maybePaddingOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@viewInsetsOf': (m.Scope scope)=>MediaQuery.viewInsetsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeViewInsetsOf': (m.Scope scope)=>MediaQuery.maybeViewInsetsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@systemGestureInsetsOf': (m.Scope scope)=>MediaQuery.systemGestureInsetsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeSystemGestureInsetsOf': (m.Scope scope)=>MediaQuery.maybeSystemGestureInsetsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@viewPaddingOf': (m.Scope scope)=>MediaQuery.viewPaddingOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeViewPaddingOf': (m.Scope scope)=>MediaQuery.maybeViewPaddingOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@alwaysUse24HourFormatOf': (m.Scope scope)=>MediaQuery.alwaysUse24HourFormatOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeAlwaysUse24HourFormatOf': (m.Scope scope)=>MediaQuery.maybeAlwaysUse24HourFormatOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@accessibleNavigationOf': (m.Scope scope)=>MediaQuery.accessibleNavigationOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeAccessibleNavigationOf': (m.Scope scope)=>MediaQuery.maybeAccessibleNavigationOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@invertColorsOf': (m.Scope scope)=>MediaQuery.invertColorsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeInvertColorsOf': (m.Scope scope)=>MediaQuery.maybeInvertColorsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@highContrastOf': (m.Scope scope)=>MediaQuery.highContrastOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeHighContrastOf': (m.Scope scope)=>MediaQuery.maybeHighContrastOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@disableAnimationsOf': (m.Scope scope)=>MediaQuery.disableAnimationsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeDisableAnimationsOf': (m.Scope scope)=>MediaQuery.maybeDisableAnimationsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@boldTextOf': (m.Scope scope)=>MediaQuery.boldTextOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeBoldTextOf': (m.Scope scope)=>MediaQuery.maybeBoldTextOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@navigationModeOf': (m.Scope scope)=>MediaQuery.navigationModeOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeNavigationModeOf': (m.Scope scope)=>MediaQuery.maybeNavigationModeOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@gestureSettingsOf': (m.Scope scope)=>MediaQuery.gestureSettingsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeGestureSettingsOf': (m.Scope scope)=>MediaQuery.maybeGestureSettingsOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@displayFeaturesOf': (m.Scope scope)=>MediaQuery.displayFeaturesOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@maybeDisplayFeaturesOf': (m.Scope scope)=>MediaQuery.maybeDisplayFeaturesOf,
'package:flutter/src/widgets/media_query.dart@MediaQuery@updateShouldNotify': (m.Scope scope, MediaQuery target)=>target.updateShouldNotify,
'package:flutter/src/widgets/media_query.dart@MediaQuery@debugFillProperties': (m.Scope scope, MediaQuery target)=>target.debugFillProperties,
'package:flutter/src/widgets/media_query.dart@MediaQuery@updateShouldNotifyDependent': (m.Scope scope, MediaQuery target)=>target.updateShouldNotifyDependent,

};
}