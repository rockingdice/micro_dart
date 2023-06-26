import 'package:flutter/src/material/slider_theme.dart';
import 'dart:math';
import 'dart:ui' show Path,lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/slider_theme.dart@SliderTheme@#as': (m.Scope scope, target)=>()=>target as SliderTheme,
'package:flutter/src/material/slider_theme.dart@SliderTheme@#is': (m.Scope scope, target)=>()=>target is SliderTheme,
'package:flutter/src/material/slider_theme.dart@SliderTheme@data': (m.Scope scope, SliderTheme target)=>target.data,
'package:flutter/src/material/slider_theme.dart@SliderTheme@': (m.Scope scope)=>SliderTheme,
'package:flutter/src/material/slider_theme.dart@SliderTheme@of': (m.Scope scope)=>SliderTheme.of,
'package:flutter/src/material/slider_theme.dart@SliderTheme@wrap': (m.Scope scope, SliderTheme target)=>target.wrap,
'package:flutter/src/material/slider_theme.dart@SliderTheme@updateShouldNotify': (m.Scope scope, SliderTheme target)=>target.updateShouldNotify,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@#as': (m.Scope scope, target)=>()=>target as SliderThemeData,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@#is': (m.Scope scope, target)=>()=>target is SliderThemeData,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@trackHeight': (m.Scope scope, SliderThemeData target)=>target.trackHeight,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@activeTrackColor': (m.Scope scope, SliderThemeData target)=>target.activeTrackColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@inactiveTrackColor': (m.Scope scope, SliderThemeData target)=>target.inactiveTrackColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@secondaryActiveTrackColor': (m.Scope scope, SliderThemeData target)=>target.secondaryActiveTrackColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@disabledActiveTrackColor': (m.Scope scope, SliderThemeData target)=>target.disabledActiveTrackColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@disabledSecondaryActiveTrackColor': (m.Scope scope, SliderThemeData target)=>target.disabledSecondaryActiveTrackColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@disabledInactiveTrackColor': (m.Scope scope, SliderThemeData target)=>target.disabledInactiveTrackColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@activeTickMarkColor': (m.Scope scope, SliderThemeData target)=>target.activeTickMarkColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@inactiveTickMarkColor': (m.Scope scope, SliderThemeData target)=>target.inactiveTickMarkColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@disabledActiveTickMarkColor': (m.Scope scope, SliderThemeData target)=>target.disabledActiveTickMarkColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@disabledInactiveTickMarkColor': (m.Scope scope, SliderThemeData target)=>target.disabledInactiveTickMarkColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@thumbColor': (m.Scope scope, SliderThemeData target)=>target.thumbColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@overlappingShapeStrokeColor': (m.Scope scope, SliderThemeData target)=>target.overlappingShapeStrokeColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@disabledThumbColor': (m.Scope scope, SliderThemeData target)=>target.disabledThumbColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@overlayColor': (m.Scope scope, SliderThemeData target)=>target.overlayColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@valueIndicatorColor': (m.Scope scope, SliderThemeData target)=>target.valueIndicatorColor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@overlayShape': (m.Scope scope, SliderThemeData target)=>target.overlayShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@tickMarkShape': (m.Scope scope, SliderThemeData target)=>target.tickMarkShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@thumbShape': (m.Scope scope, SliderThemeData target)=>target.thumbShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@trackShape': (m.Scope scope, SliderThemeData target)=>target.trackShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@valueIndicatorShape': (m.Scope scope, SliderThemeData target)=>target.valueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@rangeTickMarkShape': (m.Scope scope, SliderThemeData target)=>target.rangeTickMarkShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@rangeThumbShape': (m.Scope scope, SliderThemeData target)=>target.rangeThumbShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@rangeTrackShape': (m.Scope scope, SliderThemeData target)=>target.rangeTrackShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@rangeValueIndicatorShape': (m.Scope scope, SliderThemeData target)=>target.rangeValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@showValueIndicator': (m.Scope scope, SliderThemeData target)=>target.showValueIndicator,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@valueIndicatorTextStyle': (m.Scope scope, SliderThemeData target)=>target.valueIndicatorTextStyle,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@minThumbSeparation': (m.Scope scope, SliderThemeData target)=>target.minThumbSeparation,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@thumbSelector': (m.Scope scope, SliderThemeData target)=>target.thumbSelector,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@mouseCursor': (m.Scope scope, SliderThemeData target)=>target.mouseCursor,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@hashCode': (m.Scope scope, SliderThemeData target)=>target.hashCode,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@': (m.Scope scope)=>({ activeTickMarkColor,  activeTrackColor,  disabledActiveTickMarkColor,  disabledActiveTrackColor,  disabledInactiveTickMarkColor,  disabledInactiveTrackColor,  disabledSecondaryActiveTrackColor,  disabledThumbColor,  inactiveTickMarkColor,  inactiveTrackColor,  minThumbSeparation,  mouseCursor,  overlappingShapeStrokeColor,  overlayColor,  overlayShape,  rangeThumbShape,  rangeTickMarkShape,  rangeTrackShape,  rangeValueIndicatorShape,  secondaryActiveTrackColor,  showValueIndicator,  thumbColor,  thumbSelector,  thumbShape,  tickMarkShape,  trackHeight,  trackShape,  valueIndicatorColor,  valueIndicatorShape,  valueIndicatorTextStyle}){
Thumb thumbSelectorProxy( textDirection,  values,  tapValue,  thumbSize,  trackSize,  dx) {
return  engine.callFunctionPointer(scope, thumbSelector!,[textDirection, values, tapValue, thumbSize, trackSize, dx], {});
}

return SliderThemeData(activeTickMarkColor:activeTickMarkColor, activeTrackColor:activeTrackColor, disabledActiveTickMarkColor:disabledActiveTickMarkColor, disabledActiveTrackColor:disabledActiveTrackColor, disabledInactiveTickMarkColor:disabledInactiveTickMarkColor, disabledInactiveTrackColor:disabledInactiveTrackColor, disabledSecondaryActiveTrackColor:disabledSecondaryActiveTrackColor, disabledThumbColor:disabledThumbColor, inactiveTickMarkColor:inactiveTickMarkColor, inactiveTrackColor:inactiveTrackColor, minThumbSeparation:minThumbSeparation, mouseCursor:mouseCursor, overlappingShapeStrokeColor:overlappingShapeStrokeColor, overlayColor:overlayColor, overlayShape:overlayShape, rangeThumbShape:rangeThumbShape, rangeTickMarkShape:rangeTickMarkShape, rangeTrackShape:rangeTrackShape, rangeValueIndicatorShape:rangeValueIndicatorShape, secondaryActiveTrackColor:secondaryActiveTrackColor, showValueIndicator:showValueIndicator, thumbColor:thumbColor, thumbSelector:thumbSelector == null ? null :thumbSelectorProxy, thumbShape:thumbShape, tickMarkShape:tickMarkShape, trackHeight:trackHeight, trackShape:trackShape, valueIndicatorColor:valueIndicatorColor, valueIndicatorShape:valueIndicatorShape, valueIndicatorTextStyle:valueIndicatorTextStyle);
},
'package:flutter/src/material/slider_theme.dart@SliderThemeData@fromPrimaryColors': (m.Scope scope)=>SliderThemeData.fromPrimaryColors,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@copyWith': (m.Scope scope, SliderThemeData target)=>({ activeTickMarkColor,  activeTrackColor,  disabledActiveTickMarkColor,  disabledActiveTrackColor,  disabledInactiveTickMarkColor,  disabledInactiveTrackColor,  disabledSecondaryActiveTrackColor,  disabledThumbColor,  inactiveTickMarkColor,  inactiveTrackColor,  minThumbSeparation,  mouseCursor,  overlappingShapeStrokeColor,  overlayColor,  overlayShape,  rangeThumbShape,  rangeTickMarkShape,  rangeTrackShape,  rangeValueIndicatorShape,  secondaryActiveTrackColor,  showValueIndicator,  thumbColor,  thumbSelector,  thumbShape,  tickMarkShape,  trackHeight,  trackShape,  valueIndicatorColor,  valueIndicatorShape,  valueIndicatorTextStyle}){
Thumb thumbSelectorProxy( textDirection,  values,  tapValue,  thumbSize,  trackSize,  dx) {
return  engine.callFunctionPointer(scope, thumbSelector!,[textDirection, values, tapValue, thumbSize, trackSize, dx], {});
}

return target.copyWith(activeTickMarkColor:activeTickMarkColor, activeTrackColor:activeTrackColor, disabledActiveTickMarkColor:disabledActiveTickMarkColor, disabledActiveTrackColor:disabledActiveTrackColor, disabledInactiveTickMarkColor:disabledInactiveTickMarkColor, disabledInactiveTrackColor:disabledInactiveTrackColor, disabledSecondaryActiveTrackColor:disabledSecondaryActiveTrackColor, disabledThumbColor:disabledThumbColor, inactiveTickMarkColor:inactiveTickMarkColor, inactiveTrackColor:inactiveTrackColor, minThumbSeparation:minThumbSeparation, mouseCursor:mouseCursor, overlappingShapeStrokeColor:overlappingShapeStrokeColor, overlayColor:overlayColor, overlayShape:overlayShape, rangeThumbShape:rangeThumbShape, rangeTickMarkShape:rangeTickMarkShape, rangeTrackShape:rangeTrackShape, rangeValueIndicatorShape:rangeValueIndicatorShape, secondaryActiveTrackColor:secondaryActiveTrackColor, showValueIndicator:showValueIndicator, thumbColor:thumbColor, thumbSelector:thumbSelector == null ? null :thumbSelectorProxy, thumbShape:thumbShape, tickMarkShape:tickMarkShape, trackHeight:trackHeight, trackShape:trackShape, valueIndicatorColor:valueIndicatorColor, valueIndicatorShape:valueIndicatorShape, valueIndicatorTextStyle:valueIndicatorTextStyle);
},
'package:flutter/src/material/slider_theme.dart@SliderThemeData@lerp': (m.Scope scope)=>SliderThemeData.lerp,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@==': (m.Scope scope, SliderThemeData target)=>(other)=> target == other,
'package:flutter/src/material/slider_theme.dart@SliderThemeData@debugFillProperties': (m.Scope scope, SliderThemeData target)=>target.debugFillProperties,
'package:flutter/src/material/slider_theme.dart@SliderComponentShape@#as': (m.Scope scope, target)=>()=>target as SliderComponentShape,
'package:flutter/src/material/slider_theme.dart@SliderComponentShape@#is': (m.Scope scope, target)=>()=>target is SliderComponentShape,
'package:flutter/src/material/slider_theme.dart@SliderComponentShape@noThumb': (m.Scope scope)=>SliderComponentShape.noThumb,
'package:flutter/src/material/slider_theme.dart@SliderComponentShape@noOverlay': (m.Scope scope)=>SliderComponentShape.noOverlay,
'package:flutter/src/material/slider_theme.dart@SliderComponentShape@getPreferredSize': (m.Scope scope, SliderComponentShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@SliderComponentShape@paint': (m.Scope scope, SliderComponentShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@SliderTickMarkShape@#as': (m.Scope scope, target)=>()=>target as SliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@SliderTickMarkShape@#is': (m.Scope scope, target)=>()=>target is SliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@SliderTickMarkShape@noTickMark': (m.Scope scope)=>SliderTickMarkShape.noTickMark,
'package:flutter/src/material/slider_theme.dart@SliderTickMarkShape@getPreferredSize': (m.Scope scope, SliderTickMarkShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@SliderTickMarkShape@paint': (m.Scope scope, SliderTickMarkShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@SliderTrackShape@#as': (m.Scope scope, target)=>()=>target as SliderTrackShape,
'package:flutter/src/material/slider_theme.dart@SliderTrackShape@#is': (m.Scope scope, target)=>()=>target is SliderTrackShape,
'package:flutter/src/material/slider_theme.dart@SliderTrackShape@getPreferredRect': (m.Scope scope, SliderTrackShape target)=>target.getPreferredRect,
'package:flutter/src/material/slider_theme.dart@SliderTrackShape@paint': (m.Scope scope, SliderTrackShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RangeSliderThumbShape@#as': (m.Scope scope, target)=>()=>target as RangeSliderThumbShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderThumbShape@#is': (m.Scope scope, target)=>()=>target is RangeSliderThumbShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderThumbShape@getPreferredSize': (m.Scope scope, RangeSliderThumbShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RangeSliderThumbShape@paint': (m.Scope scope, RangeSliderThumbShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RangeSliderValueIndicatorShape@#as': (m.Scope scope, target)=>()=>target as RangeSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderValueIndicatorShape@#is': (m.Scope scope, target)=>()=>target is RangeSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderValueIndicatorShape@getPreferredSize': (m.Scope scope, RangeSliderValueIndicatorShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RangeSliderValueIndicatorShape@getHorizontalShift': (m.Scope scope, RangeSliderValueIndicatorShape target)=>target.getHorizontalShift,
'package:flutter/src/material/slider_theme.dart@RangeSliderValueIndicatorShape@paint': (m.Scope scope, RangeSliderValueIndicatorShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RangeSliderTickMarkShape@#as': (m.Scope scope, target)=>()=>target as RangeSliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderTickMarkShape@#is': (m.Scope scope, target)=>()=>target is RangeSliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderTickMarkShape@getPreferredSize': (m.Scope scope, RangeSliderTickMarkShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RangeSliderTickMarkShape@paint': (m.Scope scope, RangeSliderTickMarkShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RangeSliderTrackShape@#as': (m.Scope scope, target)=>()=>target as RangeSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderTrackShape@#is': (m.Scope scope, target)=>()=>target is RangeSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RangeSliderTrackShape@getPreferredRect': (m.Scope scope, RangeSliderTrackShape target)=>target.getPreferredRect,
'package:flutter/src/material/slider_theme.dart@RangeSliderTrackShape@paint': (m.Scope scope, RangeSliderTrackShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RectangularSliderTrackShape@#as': (m.Scope scope, target)=>()=>target as RectangularSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RectangularSliderTrackShape@#is': (m.Scope scope, target)=>()=>target is RectangularSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RectangularSliderTrackShape@': (m.Scope scope)=>(){
return RectangularSliderTrackShape();
},
'package:flutter/src/material/slider_theme.dart@RectangularSliderTrackShape@paint': (m.Scope scope, RectangularSliderTrackShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundedRectSliderTrackShape@#as': (m.Scope scope, target)=>()=>target as RoundedRectSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RoundedRectSliderTrackShape@#is': (m.Scope scope, target)=>()=>target is RoundedRectSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RoundedRectSliderTrackShape@': (m.Scope scope)=>(){
return RoundedRectSliderTrackShape();
},
'package:flutter/src/material/slider_theme.dart@RoundedRectSliderTrackShape@paint': (m.Scope scope, RoundedRectSliderTrackShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderTrackShape@#as': (m.Scope scope, target)=>()=>target as RectangularRangeSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderTrackShape@#is': (m.Scope scope, target)=>()=>target is RectangularRangeSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderTrackShape@': (m.Scope scope)=>(){
return RectangularRangeSliderTrackShape();
},
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderTrackShape@getPreferredRect': (m.Scope scope, RectangularRangeSliderTrackShape target)=>target.getPreferredRect,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderTrackShape@paint': (m.Scope scope, RectangularRangeSliderTrackShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundedRectRangeSliderTrackShape@#as': (m.Scope scope, target)=>()=>target as RoundedRectRangeSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RoundedRectRangeSliderTrackShape@#is': (m.Scope scope, target)=>()=>target is RoundedRectRangeSliderTrackShape,
'package:flutter/src/material/slider_theme.dart@RoundedRectRangeSliderTrackShape@': (m.Scope scope)=>(){
return RoundedRectRangeSliderTrackShape();
},
'package:flutter/src/material/slider_theme.dart@RoundedRectRangeSliderTrackShape@getPreferredRect': (m.Scope scope, RoundedRectRangeSliderTrackShape target)=>target.getPreferredRect,
'package:flutter/src/material/slider_theme.dart@RoundedRectRangeSliderTrackShape@paint': (m.Scope scope, RoundedRectRangeSliderTrackShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundSliderTickMarkShape@#as': (m.Scope scope, target)=>()=>target as RoundSliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@RoundSliderTickMarkShape@#is': (m.Scope scope, target)=>()=>target is RoundSliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@RoundSliderTickMarkShape@tickMarkRadius': (m.Scope scope, RoundSliderTickMarkShape target)=>target.tickMarkRadius,
'package:flutter/src/material/slider_theme.dart@RoundSliderTickMarkShape@': (m.Scope scope)=>({ tickMarkRadius}){
return RoundSliderTickMarkShape(tickMarkRadius:tickMarkRadius);
},
'package:flutter/src/material/slider_theme.dart@RoundSliderTickMarkShape@getPreferredSize': (m.Scope scope, RoundSliderTickMarkShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RoundSliderTickMarkShape@paint': (m.Scope scope, RoundSliderTickMarkShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderTickMarkShape@#as': (m.Scope scope, target)=>()=>target as RoundRangeSliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderTickMarkShape@#is': (m.Scope scope, target)=>()=>target is RoundRangeSliderTickMarkShape,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderTickMarkShape@tickMarkRadius': (m.Scope scope, RoundRangeSliderTickMarkShape target)=>target.tickMarkRadius,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderTickMarkShape@': (m.Scope scope)=>({ tickMarkRadius}){
return RoundRangeSliderTickMarkShape(tickMarkRadius:tickMarkRadius);
},
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderTickMarkShape@getPreferredSize': (m.Scope scope, RoundRangeSliderTickMarkShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderTickMarkShape@paint': (m.Scope scope, RoundRangeSliderTickMarkShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@#as': (m.Scope scope, target)=>()=>target as RoundSliderThumbShape,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@#is': (m.Scope scope, target)=>()=>target is RoundSliderThumbShape,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@enabledThumbRadius': (m.Scope scope, RoundSliderThumbShape target)=>target.enabledThumbRadius,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@disabledThumbRadius': (m.Scope scope, RoundSliderThumbShape target)=>target.disabledThumbRadius,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@elevation': (m.Scope scope, RoundSliderThumbShape target)=>target.elevation,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@pressedElevation': (m.Scope scope, RoundSliderThumbShape target)=>target.pressedElevation,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@': (m.Scope scope)=>({ disabledThumbRadius,  elevation,  enabledThumbRadius,  pressedElevation}){
return RoundSliderThumbShape(disabledThumbRadius:disabledThumbRadius, elevation:elevation ?? 1.0, enabledThumbRadius:enabledThumbRadius ?? 10.0, pressedElevation:pressedElevation ?? 6.0);
},
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@getPreferredSize': (m.Scope scope, RoundSliderThumbShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RoundSliderThumbShape@paint': (m.Scope scope, RoundSliderThumbShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@#as': (m.Scope scope, target)=>()=>target as RoundRangeSliderThumbShape,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@#is': (m.Scope scope, target)=>()=>target is RoundRangeSliderThumbShape,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@enabledThumbRadius': (m.Scope scope, RoundRangeSliderThumbShape target)=>target.enabledThumbRadius,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@disabledThumbRadius': (m.Scope scope, RoundRangeSliderThumbShape target)=>target.disabledThumbRadius,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@elevation': (m.Scope scope, RoundRangeSliderThumbShape target)=>target.elevation,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@pressedElevation': (m.Scope scope, RoundRangeSliderThumbShape target)=>target.pressedElevation,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@': (m.Scope scope)=>({ disabledThumbRadius,  elevation,  enabledThumbRadius,  pressedElevation}){
return RoundRangeSliderThumbShape(disabledThumbRadius:disabledThumbRadius, elevation:elevation ?? 1.0, enabledThumbRadius:enabledThumbRadius ?? 10.0, pressedElevation:pressedElevation ?? 6.0);
},
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@getPreferredSize': (m.Scope scope, RoundRangeSliderThumbShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RoundRangeSliderThumbShape@paint': (m.Scope scope, RoundRangeSliderThumbShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RoundSliderOverlayShape@#as': (m.Scope scope, target)=>()=>target as RoundSliderOverlayShape,
'package:flutter/src/material/slider_theme.dart@RoundSliderOverlayShape@#is': (m.Scope scope, target)=>()=>target is RoundSliderOverlayShape,
'package:flutter/src/material/slider_theme.dart@RoundSliderOverlayShape@overlayRadius': (m.Scope scope, RoundSliderOverlayShape target)=>target.overlayRadius,
'package:flutter/src/material/slider_theme.dart@RoundSliderOverlayShape@': (m.Scope scope)=>({ overlayRadius}){
return RoundSliderOverlayShape(overlayRadius:overlayRadius ?? 24.0);
},
'package:flutter/src/material/slider_theme.dart@RoundSliderOverlayShape@getPreferredSize': (m.Scope scope, RoundSliderOverlayShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RoundSliderOverlayShape@paint': (m.Scope scope, RoundSliderOverlayShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RectangularSliderValueIndicatorShape@#as': (m.Scope scope, target)=>()=>target as RectangularSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@RectangularSliderValueIndicatorShape@#is': (m.Scope scope, target)=>()=>target is RectangularSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@RectangularSliderValueIndicatorShape@': (m.Scope scope)=>(){
return RectangularSliderValueIndicatorShape();
},
'package:flutter/src/material/slider_theme.dart@RectangularSliderValueIndicatorShape@getPreferredSize': (m.Scope scope, RectangularSliderValueIndicatorShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RectangularSliderValueIndicatorShape@paint': (m.Scope scope, RectangularSliderValueIndicatorShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderValueIndicatorShape@#as': (m.Scope scope, target)=>()=>target as RectangularRangeSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderValueIndicatorShape@#is': (m.Scope scope, target)=>()=>target is RectangularRangeSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderValueIndicatorShape@': (m.Scope scope)=>(){
return RectangularRangeSliderValueIndicatorShape();
},
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderValueIndicatorShape@getPreferredSize': (m.Scope scope, RectangularRangeSliderValueIndicatorShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderValueIndicatorShape@getHorizontalShift': (m.Scope scope, RectangularRangeSliderValueIndicatorShape target)=>target.getHorizontalShift,
'package:flutter/src/material/slider_theme.dart@RectangularRangeSliderValueIndicatorShape@paint': (m.Scope scope, RectangularRangeSliderValueIndicatorShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@PaddleSliderValueIndicatorShape@#as': (m.Scope scope, target)=>()=>target as PaddleSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@PaddleSliderValueIndicatorShape@#is': (m.Scope scope, target)=>()=>target is PaddleSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@PaddleSliderValueIndicatorShape@': (m.Scope scope)=>(){
return PaddleSliderValueIndicatorShape();
},
'package:flutter/src/material/slider_theme.dart@PaddleSliderValueIndicatorShape@getPreferredSize': (m.Scope scope, PaddleSliderValueIndicatorShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@PaddleSliderValueIndicatorShape@paint': (m.Scope scope, PaddleSliderValueIndicatorShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@PaddleRangeSliderValueIndicatorShape@#as': (m.Scope scope, target)=>()=>target as PaddleRangeSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@PaddleRangeSliderValueIndicatorShape@#is': (m.Scope scope, target)=>()=>target is PaddleRangeSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@PaddleRangeSliderValueIndicatorShape@': (m.Scope scope)=>(){
return PaddleRangeSliderValueIndicatorShape();
},
'package:flutter/src/material/slider_theme.dart@PaddleRangeSliderValueIndicatorShape@getPreferredSize': (m.Scope scope, PaddleRangeSliderValueIndicatorShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@PaddleRangeSliderValueIndicatorShape@getHorizontalShift': (m.Scope scope, PaddleRangeSliderValueIndicatorShape target)=>target.getHorizontalShift,
'package:flutter/src/material/slider_theme.dart@PaddleRangeSliderValueIndicatorShape@paint': (m.Scope scope, PaddleRangeSliderValueIndicatorShape target)=>target.paint,
'package:flutter/src/material/slider_theme.dart@RangeValues@#as': (m.Scope scope, target)=>()=>target as RangeValues,
'package:flutter/src/material/slider_theme.dart@RangeValues@#is': (m.Scope scope, target)=>()=>target is RangeValues,
'package:flutter/src/material/slider_theme.dart@RangeValues@start': (m.Scope scope, RangeValues target)=>target.start,
'package:flutter/src/material/slider_theme.dart@RangeValues@end': (m.Scope scope, RangeValues target)=>target.end,
'package:flutter/src/material/slider_theme.dart@RangeValues@hashCode': (m.Scope scope, RangeValues target)=>target.hashCode,
'package:flutter/src/material/slider_theme.dart@RangeValues@': (m.Scope scope)=>RangeValues,
'package:flutter/src/material/slider_theme.dart@RangeValues@==': (m.Scope scope, RangeValues target)=>(other)=> target == other,
'package:flutter/src/material/slider_theme.dart@RangeValues@toString': (m.Scope scope, RangeValues target)=>target.toString,
'package:flutter/src/material/slider_theme.dart@RangeLabels@#as': (m.Scope scope, target)=>()=>target as RangeLabels,
'package:flutter/src/material/slider_theme.dart@RangeLabels@#is': (m.Scope scope, target)=>()=>target is RangeLabels,
'package:flutter/src/material/slider_theme.dart@RangeLabels@start': (m.Scope scope, RangeLabels target)=>target.start,
'package:flutter/src/material/slider_theme.dart@RangeLabels@end': (m.Scope scope, RangeLabels target)=>target.end,
'package:flutter/src/material/slider_theme.dart@RangeLabels@hashCode': (m.Scope scope, RangeLabels target)=>target.hashCode,
'package:flutter/src/material/slider_theme.dart@RangeLabels@': (m.Scope scope)=>RangeLabels,
'package:flutter/src/material/slider_theme.dart@RangeLabels@==': (m.Scope scope, RangeLabels target)=>(other)=> target == other,
'package:flutter/src/material/slider_theme.dart@RangeLabels@toString': (m.Scope scope, RangeLabels target)=>target.toString,
'package:flutter/src/material/slider_theme.dart@DropSliderValueIndicatorShape@#as': (m.Scope scope, target)=>()=>target as DropSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@DropSliderValueIndicatorShape@#is': (m.Scope scope, target)=>()=>target is DropSliderValueIndicatorShape,
'package:flutter/src/material/slider_theme.dart@DropSliderValueIndicatorShape@': (m.Scope scope)=>(){
return DropSliderValueIndicatorShape();
},
'package:flutter/src/material/slider_theme.dart@DropSliderValueIndicatorShape@getPreferredSize': (m.Scope scope, DropSliderValueIndicatorShape target)=>target.getPreferredSize,
'package:flutter/src/material/slider_theme.dart@DropSliderValueIndicatorShape@paint': (m.Scope scope, DropSliderValueIndicatorShape target)=>target.paint,

};
}