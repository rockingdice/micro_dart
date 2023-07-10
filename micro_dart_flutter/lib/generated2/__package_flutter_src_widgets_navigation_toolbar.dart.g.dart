import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'dart:math';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@#as': (m.Scope scope, target)=>()=>target as NavigationToolbar,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@#is': (m.Scope scope, target)=>()=>target is NavigationToolbar,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@kMiddleSpacing': (m.Scope scope)=>NavigationToolbar.kMiddleSpacing,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@leading': (m.Scope scope, NavigationToolbar target)=>target.leading,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@middle': (m.Scope scope, NavigationToolbar target)=>target.middle,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@trailing': (m.Scope scope, NavigationToolbar target)=>target.trailing,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@centerMiddle': (m.Scope scope, NavigationToolbar target)=>target.centerMiddle,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@middleSpacing': (m.Scope scope, NavigationToolbar target)=>target.middleSpacing,
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@': (m.Scope scope)=>({ centerMiddle,  key,  leading,  middle,  middleSpacing,  trailing}){
return NavigationToolbar(centerMiddle:centerMiddle ?? true, key:key, leading:leading, middle:middle, middleSpacing:middleSpacing ?? NavigationToolbar.kMiddleSpacing, trailing:trailing);
},
'package:flutter/src/widgets/navigation_toolbar.dart@NavigationToolbar@build': (m.Scope scope, NavigationToolbar target)=>target.build,

};
}