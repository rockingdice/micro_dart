import 'package:flutter/src/material/flexible_space_bar.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@#as': (m.Scope scope, target)=>()=>target as FlexibleSpaceBar,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@#is': (m.Scope scope, target)=>()=>target is FlexibleSpaceBar,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@title': (m.Scope scope, FlexibleSpaceBar target)=>target.title,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@background': (m.Scope scope, FlexibleSpaceBar target)=>target.background,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@centerTitle': (m.Scope scope, FlexibleSpaceBar target)=>target.centerTitle,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@collapseMode': (m.Scope scope, FlexibleSpaceBar target)=>target.collapseMode,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@stretchModes': (m.Scope scope, FlexibleSpaceBar target)=>target.stretchModes,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@titlePadding': (m.Scope scope, FlexibleSpaceBar target)=>target.titlePadding,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@expandedTitleScale': (m.Scope scope, FlexibleSpaceBar target)=>target.expandedTitleScale,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@': (m.Scope scope)=>({ background,  centerTitle,  collapseMode,  expandedTitleScale,  key,  stretchModes,  title,  titlePadding}){
return FlexibleSpaceBar(background:background, centerTitle:centerTitle, collapseMode:collapseMode ?? CollapseMode.parallax, expandedTitleScale:expandedTitleScale ?? 1.5, key:key, stretchModes:stretchModes ?? const <StretchMode>[StretchMode.zoomBackground], title:title, titlePadding:titlePadding);
},
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@createSettings': (m.Scope scope)=>FlexibleSpaceBar.createSettings,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBar@createState': (m.Scope scope, FlexibleSpaceBar target)=>target.createState,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@#as': (m.Scope scope, target)=>()=>target as FlexibleSpaceBarSettings,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@#is': (m.Scope scope, target)=>()=>target is FlexibleSpaceBarSettings,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@toolbarOpacity': (m.Scope scope, FlexibleSpaceBarSettings target)=>target.toolbarOpacity,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@minExtent': (m.Scope scope, FlexibleSpaceBarSettings target)=>target.minExtent,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@maxExtent': (m.Scope scope, FlexibleSpaceBarSettings target)=>target.maxExtent,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@currentExtent': (m.Scope scope, FlexibleSpaceBarSettings target)=>target.currentExtent,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@isScrolledUnder': (m.Scope scope, FlexibleSpaceBarSettings target)=>target.isScrolledUnder,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@': (m.Scope scope)=>FlexibleSpaceBarSettings,
'package:flutter/src/material/flexible_space_bar.dart@FlexibleSpaceBarSettings@updateShouldNotify': (m.Scope scope, FlexibleSpaceBarSettings target)=>target.updateShouldNotify,

};
}