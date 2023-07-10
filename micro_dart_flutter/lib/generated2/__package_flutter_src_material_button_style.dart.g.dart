import 'package:flutter/src/material/button_style.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/button_style.dart@ButtonStyle@#as': (m.Scope scope, target)=>()=>target as ButtonStyle,
'package:flutter/src/material/button_style.dart@ButtonStyle@#is': (m.Scope scope, target)=>()=>target is ButtonStyle,
'package:flutter/src/material/button_style.dart@ButtonStyle@textStyle': (m.Scope scope, ButtonStyle target)=>target.textStyle,
'package:flutter/src/material/button_style.dart@ButtonStyle@backgroundColor': (m.Scope scope, ButtonStyle target)=>target.backgroundColor,
'package:flutter/src/material/button_style.dart@ButtonStyle@foregroundColor': (m.Scope scope, ButtonStyle target)=>target.foregroundColor,
'package:flutter/src/material/button_style.dart@ButtonStyle@overlayColor': (m.Scope scope, ButtonStyle target)=>target.overlayColor,
'package:flutter/src/material/button_style.dart@ButtonStyle@shadowColor': (m.Scope scope, ButtonStyle target)=>target.shadowColor,
'package:flutter/src/material/button_style.dart@ButtonStyle@surfaceTintColor': (m.Scope scope, ButtonStyle target)=>target.surfaceTintColor,
'package:flutter/src/material/button_style.dart@ButtonStyle@elevation': (m.Scope scope, ButtonStyle target)=>target.elevation,
'package:flutter/src/material/button_style.dart@ButtonStyle@padding': (m.Scope scope, ButtonStyle target)=>target.padding,
'package:flutter/src/material/button_style.dart@ButtonStyle@minimumSize': (m.Scope scope, ButtonStyle target)=>target.minimumSize,
'package:flutter/src/material/button_style.dart@ButtonStyle@fixedSize': (m.Scope scope, ButtonStyle target)=>target.fixedSize,
'package:flutter/src/material/button_style.dart@ButtonStyle@maximumSize': (m.Scope scope, ButtonStyle target)=>target.maximumSize,
'package:flutter/src/material/button_style.dart@ButtonStyle@iconColor': (m.Scope scope, ButtonStyle target)=>target.iconColor,
'package:flutter/src/material/button_style.dart@ButtonStyle@iconSize': (m.Scope scope, ButtonStyle target)=>target.iconSize,
'package:flutter/src/material/button_style.dart@ButtonStyle@side': (m.Scope scope, ButtonStyle target)=>target.side,
'package:flutter/src/material/button_style.dart@ButtonStyle@shape': (m.Scope scope, ButtonStyle target)=>target.shape,
'package:flutter/src/material/button_style.dart@ButtonStyle@mouseCursor': (m.Scope scope, ButtonStyle target)=>target.mouseCursor,
'package:flutter/src/material/button_style.dart@ButtonStyle@visualDensity': (m.Scope scope, ButtonStyle target)=>target.visualDensity,
'package:flutter/src/material/button_style.dart@ButtonStyle@tapTargetSize': (m.Scope scope, ButtonStyle target)=>target.tapTargetSize,
'package:flutter/src/material/button_style.dart@ButtonStyle@animationDuration': (m.Scope scope, ButtonStyle target)=>target.animationDuration,
'package:flutter/src/material/button_style.dart@ButtonStyle@enableFeedback': (m.Scope scope, ButtonStyle target)=>target.enableFeedback,
'package:flutter/src/material/button_style.dart@ButtonStyle@alignment': (m.Scope scope, ButtonStyle target)=>target.alignment,
'package:flutter/src/material/button_style.dart@ButtonStyle@splashFactory': (m.Scope scope, ButtonStyle target)=>target.splashFactory,
'package:flutter/src/material/button_style.dart@ButtonStyle@hashCode': (m.Scope scope, ButtonStyle target)=>target.hashCode,
'package:flutter/src/material/button_style.dart@ButtonStyle@': (m.Scope scope)=>({ alignment,  animationDuration,  backgroundColor,  elevation,  enableFeedback,  fixedSize,  foregroundColor,  iconColor,  iconSize,  maximumSize,  minimumSize,  mouseCursor,  overlayColor,  padding,  shadowColor,  shape,  side,  splashFactory,  surfaceTintColor,  tapTargetSize,  textStyle,  visualDensity}){
return ButtonStyle(alignment:alignment, animationDuration:animationDuration, backgroundColor:backgroundColor, elevation:elevation, enableFeedback:enableFeedback, fixedSize:fixedSize, foregroundColor:foregroundColor, iconColor:iconColor, iconSize:iconSize, maximumSize:maximumSize, minimumSize:minimumSize, mouseCursor:mouseCursor, overlayColor:overlayColor, padding:padding, shadowColor:shadowColor, shape:shape, side:side, splashFactory:splashFactory, surfaceTintColor:surfaceTintColor, tapTargetSize:tapTargetSize, textStyle:textStyle, visualDensity:visualDensity);
},
'package:flutter/src/material/button_style.dart@ButtonStyle@copyWith': (m.Scope scope, ButtonStyle target)=>target.copyWith,
'package:flutter/src/material/button_style.dart@ButtonStyle@merge': (m.Scope scope, ButtonStyle target)=>target.merge,
'package:flutter/src/material/button_style.dart@ButtonStyle@==': (m.Scope scope, ButtonStyle target)=>(other)=> target == other,
'package:flutter/src/material/button_style.dart@ButtonStyle@debugFillProperties': (m.Scope scope, ButtonStyle target)=>target.debugFillProperties,
'package:flutter/src/material/button_style.dart@ButtonStyle@lerp': (m.Scope scope)=>ButtonStyle.lerp,

};
}