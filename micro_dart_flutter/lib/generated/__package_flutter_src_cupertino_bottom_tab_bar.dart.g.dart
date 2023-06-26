import 'package:flutter/src/cupertino/bottom_tab_bar.dart';
import 'dart:ui' show ImageFilter;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@#as': (m.Scope scope, target)=>()=>target as CupertinoTabBar,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@#is': (m.Scope scope, target)=>()=>target is CupertinoTabBar,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@items': (m.Scope scope, CupertinoTabBar target)=>target.items,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@onTap': (m.Scope scope, CupertinoTabBar target)=>target.onTap,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@currentIndex': (m.Scope scope, CupertinoTabBar target)=>target.currentIndex,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@backgroundColor': (m.Scope scope, CupertinoTabBar target)=>target.backgroundColor,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@activeColor': (m.Scope scope, CupertinoTabBar target)=>target.activeColor,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@inactiveColor': (m.Scope scope, CupertinoTabBar target)=>target.inactiveColor,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@iconSize': (m.Scope scope, CupertinoTabBar target)=>target.iconSize,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@height': (m.Scope scope, CupertinoTabBar target)=>target.height,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@border': (m.Scope scope, CupertinoTabBar target)=>target.border,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@preferredSize': (m.Scope scope, CupertinoTabBar target)=>target.preferredSize,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@': (m.Scope scope)=>({ activeColor,  backgroundColor,  border,  currentIndex,  height,  iconSize,  inactiveColor,  items,  key,  onTap}){
void onTapProxy( value) {
 engine.callFunctionPointer(scope, onTap!,[value], {});
}

return CupertinoTabBar(activeColor:activeColor, backgroundColor:backgroundColor, border:border ?? const Border(top: BorderSide(color: const CupertinoDynamicColor.withBrightness(color: Color(0x4D000000),darkColor: Color(0x29000000),), width: 0.0)), currentIndex:currentIndex ?? 0, height:height ?? 50.0, iconSize:iconSize ?? 30.0, inactiveColor:inactiveColor ?? CupertinoColors.inactiveGray, items:items, key:key, onTap:onTap == null ? null :onTapProxy);
},
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@opaque': (m.Scope scope, CupertinoTabBar target)=>target.opaque,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@build': (m.Scope scope, CupertinoTabBar target)=>target.build,
'package:flutter/src/cupertino/bottom_tab_bar.dart@CupertinoTabBar@copyWith': (m.Scope scope, CupertinoTabBar target)=>({ activeColor,  backgroundColor,  border,  currentIndex,  height,  iconSize,  inactiveColor,  items,  key,  onTap}){
void onTapProxy( value) {
 engine.callFunctionPointer(scope, onTap!,[value], {});
}

return target.copyWith(activeColor:activeColor, backgroundColor:backgroundColor, border:border, currentIndex:currentIndex, height:height, iconSize:iconSize, inactiveColor:inactiveColor, items:items, key:key, onTap:onTap == null ? null :onTapProxy);
},

};
}