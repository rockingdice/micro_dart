import 'package:flutter/src/material/page_transitions_theme.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as PageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is PageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsBuilder@buildTransitions': (m.Scope scope, PageTransitionsBuilder target)=>target.buildTransitions,
'package:flutter/src/material/page_transitions_theme.dart@FadeUpwardsPageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as FadeUpwardsPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@FadeUpwardsPageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is FadeUpwardsPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@FadeUpwardsPageTransitionsBuilder@': (m.Scope scope)=>(){
return FadeUpwardsPageTransitionsBuilder();
},
'package:flutter/src/material/page_transitions_theme.dart@FadeUpwardsPageTransitionsBuilder@buildTransitions': (m.Scope scope, FadeUpwardsPageTransitionsBuilder target)=>target.buildTransitions,
'package:flutter/src/material/page_transitions_theme.dart@OpenUpwardsPageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as OpenUpwardsPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@OpenUpwardsPageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is OpenUpwardsPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@OpenUpwardsPageTransitionsBuilder@': (m.Scope scope)=>(){
return OpenUpwardsPageTransitionsBuilder();
},
'package:flutter/src/material/page_transitions_theme.dart@OpenUpwardsPageTransitionsBuilder@buildTransitions': (m.Scope scope, OpenUpwardsPageTransitionsBuilder target)=>target.buildTransitions,
'package:flutter/src/material/page_transitions_theme.dart@ZoomPageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as ZoomPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@ZoomPageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is ZoomPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@ZoomPageTransitionsBuilder@allowSnapshotting': (m.Scope scope, ZoomPageTransitionsBuilder target)=>target.allowSnapshotting,
'package:flutter/src/material/page_transitions_theme.dart@ZoomPageTransitionsBuilder@allowEnterRouteSnapshotting': (m.Scope scope, ZoomPageTransitionsBuilder target)=>target.allowEnterRouteSnapshotting,
'package:flutter/src/material/page_transitions_theme.dart@ZoomPageTransitionsBuilder@': (m.Scope scope)=>({ allowEnterRouteSnapshotting,  allowSnapshotting}){
return ZoomPageTransitionsBuilder(allowEnterRouteSnapshotting:allowEnterRouteSnapshotting ?? true, allowSnapshotting:allowSnapshotting ?? true);
},
'package:flutter/src/material/page_transitions_theme.dart@ZoomPageTransitionsBuilder@buildTransitions': (m.Scope scope, ZoomPageTransitionsBuilder target)=>target.buildTransitions,
'package:flutter/src/material/page_transitions_theme.dart@CupertinoPageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as CupertinoPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@CupertinoPageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is CupertinoPageTransitionsBuilder,
'package:flutter/src/material/page_transitions_theme.dart@CupertinoPageTransitionsBuilder@': (m.Scope scope)=>(){
return CupertinoPageTransitionsBuilder();
},
'package:flutter/src/material/page_transitions_theme.dart@CupertinoPageTransitionsBuilder@buildTransitions': (m.Scope scope, CupertinoPageTransitionsBuilder target)=>target.buildTransitions,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@#as': (m.Scope scope, target)=>()=>target as PageTransitionsTheme,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@#is': (m.Scope scope, target)=>()=>target is PageTransitionsTheme,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@builders': (m.Scope scope, PageTransitionsTheme target)=>target.builders,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@hashCode': (m.Scope scope, PageTransitionsTheme target)=>target.hashCode,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@': (m.Scope scope)=>({ builders}){
return PageTransitionsTheme(builders:builders ?? <TargetPlatform, PageTransitionsBuilder>{TargetPlatform.android: ZoomPageTransitionsBuilder(),TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),});
},
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@buildTransitions': (m.Scope scope, PageTransitionsTheme target)=>target.buildTransitions,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@==': (m.Scope scope, PageTransitionsTheme target)=>(other)=> target == other,
'package:flutter/src/material/page_transitions_theme.dart@PageTransitionsTheme@debugFillProperties': (m.Scope scope, PageTransitionsTheme target)=>target.debugFillProperties,

};
}