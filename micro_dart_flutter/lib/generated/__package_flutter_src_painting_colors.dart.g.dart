import 'package:flutter/src/painting/colors.dart';
import 'dart:math';
import 'dart:ui' show Color,lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/colors.dart@HSVColor@#as': (m.Scope scope, target)=>()=>target as HSVColor,
'package:flutter/src/painting/colors.dart@HSVColor@#is': (m.Scope scope, target)=>()=>target is HSVColor,
'package:flutter/src/painting/colors.dart@HSVColor@alpha': (m.Scope scope, HSVColor target)=>target.alpha,
'package:flutter/src/painting/colors.dart@HSVColor@hue': (m.Scope scope, HSVColor target)=>target.hue,
'package:flutter/src/painting/colors.dart@HSVColor@saturation': (m.Scope scope, HSVColor target)=>target.saturation,
'package:flutter/src/painting/colors.dart@HSVColor@value': (m.Scope scope, HSVColor target)=>target.value,
'package:flutter/src/painting/colors.dart@HSVColor@hashCode': (m.Scope scope, HSVColor target)=>target.hashCode,
'package:flutter/src/painting/colors.dart@HSVColor@fromAHSV': (m.Scope scope)=>HSVColor.fromAHSV,
'package:flutter/src/painting/colors.dart@HSVColor@fromColor': (m.Scope scope)=>HSVColor.fromColor,
'package:flutter/src/painting/colors.dart@HSVColor@withAlpha': (m.Scope scope, HSVColor target)=>target.withAlpha,
'package:flutter/src/painting/colors.dart@HSVColor@withHue': (m.Scope scope, HSVColor target)=>target.withHue,
'package:flutter/src/painting/colors.dart@HSVColor@withSaturation': (m.Scope scope, HSVColor target)=>target.withSaturation,
'package:flutter/src/painting/colors.dart@HSVColor@withValue': (m.Scope scope, HSVColor target)=>target.withValue,
'package:flutter/src/painting/colors.dart@HSVColor@toColor': (m.Scope scope, HSVColor target)=>target.toColor,
'package:flutter/src/painting/colors.dart@HSVColor@lerp': (m.Scope scope)=>HSVColor.lerp,
'package:flutter/src/painting/colors.dart@HSVColor@==': (m.Scope scope, HSVColor target)=>(other)=> target == other,
'package:flutter/src/painting/colors.dart@HSVColor@toString': (m.Scope scope, HSVColor target)=>target.toString,
'package:flutter/src/painting/colors.dart@HSLColor@#as': (m.Scope scope, target)=>()=>target as HSLColor,
'package:flutter/src/painting/colors.dart@HSLColor@#is': (m.Scope scope, target)=>()=>target is HSLColor,
'package:flutter/src/painting/colors.dart@HSLColor@alpha': (m.Scope scope, HSLColor target)=>target.alpha,
'package:flutter/src/painting/colors.dart@HSLColor@hue': (m.Scope scope, HSLColor target)=>target.hue,
'package:flutter/src/painting/colors.dart@HSLColor@saturation': (m.Scope scope, HSLColor target)=>target.saturation,
'package:flutter/src/painting/colors.dart@HSLColor@lightness': (m.Scope scope, HSLColor target)=>target.lightness,
'package:flutter/src/painting/colors.dart@HSLColor@hashCode': (m.Scope scope, HSLColor target)=>target.hashCode,
'package:flutter/src/painting/colors.dart@HSLColor@fromAHSL': (m.Scope scope)=>HSLColor.fromAHSL,
'package:flutter/src/painting/colors.dart@HSLColor@fromColor': (m.Scope scope)=>HSLColor.fromColor,
'package:flutter/src/painting/colors.dart@HSLColor@withAlpha': (m.Scope scope, HSLColor target)=>target.withAlpha,
'package:flutter/src/painting/colors.dart@HSLColor@withHue': (m.Scope scope, HSLColor target)=>target.withHue,
'package:flutter/src/painting/colors.dart@HSLColor@withSaturation': (m.Scope scope, HSLColor target)=>target.withSaturation,
'package:flutter/src/painting/colors.dart@HSLColor@withLightness': (m.Scope scope, HSLColor target)=>target.withLightness,
'package:flutter/src/painting/colors.dart@HSLColor@toColor': (m.Scope scope, HSLColor target)=>target.toColor,
'package:flutter/src/painting/colors.dart@HSLColor@lerp': (m.Scope scope)=>HSLColor.lerp,
'package:flutter/src/painting/colors.dart@HSLColor@==': (m.Scope scope, HSLColor target)=>(other)=> target == other,
'package:flutter/src/painting/colors.dart@HSLColor@toString': (m.Scope scope, HSLColor target)=>target.toString,
'package:flutter/src/painting/colors.dart@ColorSwatch@#as': (m.Scope scope, target)=>()=>target as ColorSwatch,
'package:flutter/src/painting/colors.dart@ColorSwatch@#is': (m.Scope scope, target)=>()=>target is ColorSwatch,
'package:flutter/src/painting/colors.dart@ColorSwatch@hashCode': (m.Scope scope, ColorSwatch target)=>target.hashCode,
'package:flutter/src/painting/colors.dart@ColorSwatch@': (m.Scope scope)=><T>( primary,  _swatch){
return ColorSwatch(primary, _swatch);
},
'package:flutter/src/painting/colors.dart@ColorSwatch@[]': (m.Scope scope, ColorSwatch target)=>(index)=> target[index],
'package:flutter/src/painting/colors.dart@ColorSwatch@==': (m.Scope scope, ColorSwatch target)=>(other)=> target == other,
'package:flutter/src/painting/colors.dart@ColorSwatch@toString': (m.Scope scope, ColorSwatch target)=>target.toString,
'package:flutter/src/painting/colors.dart@ColorSwatch@lerp': (m.Scope scope)=>ColorSwatch.lerp,
'package:flutter/src/painting/colors.dart@ColorProperty@#as': (m.Scope scope, target)=>()=>target as ColorProperty,
'package:flutter/src/painting/colors.dart@ColorProperty@#is': (m.Scope scope, target)=>()=>target is ColorProperty,
'package:flutter/src/painting/colors.dart@ColorProperty@': (m.Scope scope)=>( name,  value, { defaultValue,  level,  showName,  style}){
return ColorProperty(name, value, defaultValue:defaultValue ?? kNoDefaultValue, level:level ?? DiagnosticLevel.info, showName:showName ?? true, style:style ?? DiagnosticsTreeStyle.singleLine);
},
'package:flutter/src/painting/colors.dart@ColorProperty@toJsonMap': (m.Scope scope, ColorProperty target)=>target.toJsonMap,

};
}