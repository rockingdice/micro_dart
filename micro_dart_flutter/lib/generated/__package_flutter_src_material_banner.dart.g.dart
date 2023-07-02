import 'package:flutter/src/material/banner.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/banner.dart@MaterialBanner@#as': (m.Scope scope, target)=>()=>target as MaterialBanner,
'package:flutter/src/material/banner.dart@MaterialBanner@#is': (m.Scope scope, target)=>()=>target is MaterialBanner,
'package:flutter/src/material/banner.dart@MaterialBanner@content': (m.Scope scope, MaterialBanner target)=>target.content,
'package:flutter/src/material/banner.dart@MaterialBanner@contentTextStyle': (m.Scope scope, MaterialBanner target)=>target.contentTextStyle,
'package:flutter/src/material/banner.dart@MaterialBanner@actions': (m.Scope scope, MaterialBanner target)=>target.actions,
'package:flutter/src/material/banner.dart@MaterialBanner@elevation': (m.Scope scope, MaterialBanner target)=>target.elevation,
'package:flutter/src/material/banner.dart@MaterialBanner@leading': (m.Scope scope, MaterialBanner target)=>target.leading,
'package:flutter/src/material/banner.dart@MaterialBanner@backgroundColor': (m.Scope scope, MaterialBanner target)=>target.backgroundColor,
'package:flutter/src/material/banner.dart@MaterialBanner@surfaceTintColor': (m.Scope scope, MaterialBanner target)=>target.surfaceTintColor,
'package:flutter/src/material/banner.dart@MaterialBanner@shadowColor': (m.Scope scope, MaterialBanner target)=>target.shadowColor,
'package:flutter/src/material/banner.dart@MaterialBanner@dividerColor': (m.Scope scope, MaterialBanner target)=>target.dividerColor,
'package:flutter/src/material/banner.dart@MaterialBanner@padding': (m.Scope scope, MaterialBanner target)=>target.padding,
'package:flutter/src/material/banner.dart@MaterialBanner@margin': (m.Scope scope, MaterialBanner target)=>target.margin,
'package:flutter/src/material/banner.dart@MaterialBanner@leadingPadding': (m.Scope scope, MaterialBanner target)=>target.leadingPadding,
'package:flutter/src/material/banner.dart@MaterialBanner@forceActionsBelow': (m.Scope scope, MaterialBanner target)=>target.forceActionsBelow,
'package:flutter/src/material/banner.dart@MaterialBanner@overflowAlignment': (m.Scope scope, MaterialBanner target)=>target.overflowAlignment,
'package:flutter/src/material/banner.dart@MaterialBanner@animation': (m.Scope scope, MaterialBanner target)=>target.animation,
'package:flutter/src/material/banner.dart@MaterialBanner@onVisible': (m.Scope scope, MaterialBanner target)=>target.onVisible,
'package:flutter/src/material/banner.dart@MaterialBanner@': (m.Scope scope)=>({ actions,  animation,  backgroundColor,  content,  contentTextStyle,  dividerColor,  elevation,  forceActionsBelow,  key,  leading,  leadingPadding,  margin,  onVisible,  overflowAlignment,  padding,  shadowColor,  surfaceTintColor}){
void onVisibleProxy() {
 engine.callFunctionPointer(scope, onVisible!,[], {});
}

return MaterialBanner(actions:actions, animation:animation, backgroundColor:backgroundColor, content:content, contentTextStyle:contentTextStyle, dividerColor:dividerColor, elevation:elevation, forceActionsBelow:forceActionsBelow ?? false, key:key, leading:leading, leadingPadding:leadingPadding, margin:margin, onVisible:onVisible == null ? null :onVisibleProxy, overflowAlignment:overflowAlignment ?? OverflowBarAlignment.end, padding:padding, shadowColor:shadowColor, surfaceTintColor:surfaceTintColor);
},
'package:flutter/src/material/banner.dart@MaterialBanner@createAnimationController': (m.Scope scope)=>MaterialBanner.createAnimationController,
'package:flutter/src/material/banner.dart@MaterialBanner@withAnimation': (m.Scope scope, MaterialBanner target)=>target.withAnimation,
'package:flutter/src/material/banner.dart@MaterialBanner@createState': (m.Scope scope, MaterialBanner target)=>target.createState,

};
}