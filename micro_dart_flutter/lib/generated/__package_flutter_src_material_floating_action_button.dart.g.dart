import 'package:flutter/src/material/floating_action_button.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@#as': (m.Scope scope, target)=>()=>target as FloatingActionButton,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@#is': (m.Scope scope, target)=>()=>target is FloatingActionButton,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@child': (m.Scope scope, FloatingActionButton target)=>target.child,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@tooltip': (m.Scope scope, FloatingActionButton target)=>target.tooltip,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@foregroundColor': (m.Scope scope, FloatingActionButton target)=>target.foregroundColor,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@backgroundColor': (m.Scope scope, FloatingActionButton target)=>target.backgroundColor,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@focusColor': (m.Scope scope, FloatingActionButton target)=>target.focusColor,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@hoverColor': (m.Scope scope, FloatingActionButton target)=>target.hoverColor,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@splashColor': (m.Scope scope, FloatingActionButton target)=>target.splashColor,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@heroTag': (m.Scope scope, FloatingActionButton target)=>target.heroTag,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@onPressed': (m.Scope scope, FloatingActionButton target)=>target.onPressed,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@mouseCursor': (m.Scope scope, FloatingActionButton target)=>target.mouseCursor,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@elevation': (m.Scope scope, FloatingActionButton target)=>target.elevation,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@focusElevation': (m.Scope scope, FloatingActionButton target)=>target.focusElevation,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@hoverElevation': (m.Scope scope, FloatingActionButton target)=>target.hoverElevation,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@highlightElevation': (m.Scope scope, FloatingActionButton target)=>target.highlightElevation,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@disabledElevation': (m.Scope scope, FloatingActionButton target)=>target.disabledElevation,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@mini': (m.Scope scope, FloatingActionButton target)=>target.mini,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@shape': (m.Scope scope, FloatingActionButton target)=>target.shape,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@clipBehavior': (m.Scope scope, FloatingActionButton target)=>target.clipBehavior,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@isExtended': (m.Scope scope, FloatingActionButton target)=>target.isExtended,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@focusNode': (m.Scope scope, FloatingActionButton target)=>target.focusNode,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@autofocus': (m.Scope scope, FloatingActionButton target)=>target.autofocus,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@materialTapTargetSize': (m.Scope scope, FloatingActionButton target)=>target.materialTapTargetSize,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@enableFeedback': (m.Scope scope, FloatingActionButton target)=>target.enableFeedback,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@extendedIconLabelSpacing': (m.Scope scope, FloatingActionButton target)=>target.extendedIconLabelSpacing,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@extendedPadding': (m.Scope scope, FloatingActionButton target)=>target.extendedPadding,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@extendedTextStyle': (m.Scope scope, FloatingActionButton target)=>target.extendedTextStyle,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@': (m.Scope scope)=>({ autofocus,  backgroundColor,  child,  clipBehavior,  disabledElevation,  elevation,  enableFeedback,  focusColor,  focusElevation,  focusNode,  foregroundColor,  heroTag,  highlightElevation,  hoverColor,  hoverElevation,  isExtended,  key,  materialTapTargetSize,  mini,  mouseCursor,  onPressed,  shape,  splashColor,  tooltip}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return FloatingActionButton(autofocus:autofocus ?? false, backgroundColor:backgroundColor, child:child, clipBehavior:clipBehavior ?? Clip.none, disabledElevation:disabledElevation, elevation:elevation, enableFeedback:enableFeedback, focusColor:focusColor, focusElevation:focusElevation, focusNode:focusNode, foregroundColor:foregroundColor, heroTag:heroTag ?? const _DefaultHeroTag(), highlightElevation:highlightElevation, hoverColor:hoverColor, hoverElevation:hoverElevation, isExtended:isExtended ?? false, key:key, materialTapTargetSize:materialTapTargetSize, mini:mini ?? false, mouseCursor:mouseCursor, onPressed:onPressedProxy, shape:shape, splashColor:splashColor, tooltip:tooltip);
},
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@small': (m.Scope scope)=>({ autofocus,  backgroundColor,  child,  clipBehavior,  disabledElevation,  elevation,  enableFeedback,  focusColor,  focusElevation,  focusNode,  foregroundColor,  heroTag,  highlightElevation,  hoverColor,  hoverElevation,  key,  materialTapTargetSize,  mouseCursor,  onPressed,  shape,  splashColor,  tooltip}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return FloatingActionButton.small(autofocus:autofocus ?? false, backgroundColor:backgroundColor, child:child, clipBehavior:clipBehavior ?? Clip.none, disabledElevation:disabledElevation, elevation:elevation, enableFeedback:enableFeedback, focusColor:focusColor, focusElevation:focusElevation, focusNode:focusNode, foregroundColor:foregroundColor, heroTag:heroTag ?? const _DefaultHeroTag(), highlightElevation:highlightElevation, hoverColor:hoverColor, hoverElevation:hoverElevation, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onPressed:onPressedProxy, shape:shape, splashColor:splashColor, tooltip:tooltip);
},
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@large': (m.Scope scope)=>({ autofocus,  backgroundColor,  child,  clipBehavior,  disabledElevation,  elevation,  enableFeedback,  focusColor,  focusElevation,  focusNode,  foregroundColor,  heroTag,  highlightElevation,  hoverColor,  hoverElevation,  key,  materialTapTargetSize,  mouseCursor,  onPressed,  shape,  splashColor,  tooltip}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return FloatingActionButton.large(autofocus:autofocus ?? false, backgroundColor:backgroundColor, child:child, clipBehavior:clipBehavior ?? Clip.none, disabledElevation:disabledElevation, elevation:elevation, enableFeedback:enableFeedback, focusColor:focusColor, focusElevation:focusElevation, focusNode:focusNode, foregroundColor:foregroundColor, heroTag:heroTag ?? const _DefaultHeroTag(), highlightElevation:highlightElevation, hoverColor:hoverColor, hoverElevation:hoverElevation, key:key, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor, onPressed:onPressedProxy, shape:shape, splashColor:splashColor, tooltip:tooltip);
},
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@extended': (m.Scope scope)=>({ autofocus,  backgroundColor,  clipBehavior,  disabledElevation,  elevation,  enableFeedback,  extendedIconLabelSpacing,  extendedPadding,  extendedTextStyle,  focusColor,  focusElevation,  focusNode,  foregroundColor,  heroTag,  highlightElevation,  hoverColor,  hoverElevation,  icon,  isExtended,  key,  label,  materialTapTargetSize,  mouseCursor,  onPressed,  shape,  splashColor,  tooltip}){
void onPressedProxy() {
 engine.callFunctionPointer(scope, onPressed!,[], {});
}

return FloatingActionButton.extended(autofocus:autofocus ?? false, backgroundColor:backgroundColor, clipBehavior:clipBehavior ?? Clip.none, disabledElevation:disabledElevation, elevation:elevation, enableFeedback:enableFeedback, extendedIconLabelSpacing:extendedIconLabelSpacing, extendedPadding:extendedPadding, extendedTextStyle:extendedTextStyle, focusColor:focusColor, focusElevation:focusElevation, focusNode:focusNode, foregroundColor:foregroundColor, heroTag:heroTag ?? const _DefaultHeroTag(), highlightElevation:highlightElevation, hoverColor:hoverColor, hoverElevation:hoverElevation, icon:icon, isExtended:isExtended ?? true, key:key, label:label, materialTapTargetSize:materialTapTargetSize, mouseCursor:mouseCursor ?? SystemMouseCursors.click, onPressed:onPressedProxy, shape:shape, splashColor:splashColor, tooltip:tooltip);
},
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@build': (m.Scope scope, FloatingActionButton target)=>target.build,
'package:flutter/src/material/floating_action_button.dart@FloatingActionButton@debugFillProperties': (m.Scope scope, FloatingActionButton target)=>target.debugFillProperties,

};
}