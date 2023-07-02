import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/pages.dart@PageRoute@#as': (m.Scope scope, target)=>()=>target as PageRoute,
'package:flutter/src/widgets/pages.dart@PageRoute@#is': (m.Scope scope, target)=>()=>target is PageRoute,
'package:flutter/src/widgets/pages.dart@PageRoute@fullscreenDialog': (m.Scope scope, PageRoute target)=>target.fullscreenDialog,
'package:flutter/src/widgets/pages.dart@PageRoute@allowSnapshotting': (m.Scope scope, PageRoute target)=>target.allowSnapshotting,
'package:flutter/src/widgets/pages.dart@PageRoute@opaque': (m.Scope scope, PageRoute target)=>target.opaque,
'package:flutter/src/widgets/pages.dart@PageRoute@barrierDismissible': (m.Scope scope, PageRoute target)=>target.barrierDismissible,
'package:flutter/src/widgets/pages.dart@PageRoute@canTransitionTo': (m.Scope scope, PageRoute target)=>target.canTransitionTo,
'package:flutter/src/widgets/pages.dart@PageRoute@canTransitionFrom': (m.Scope scope, PageRoute target)=>target.canTransitionFrom,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@#as': (m.Scope scope, target)=>()=>target as PageRouteBuilder,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@#is': (m.Scope scope, target)=>()=>target is PageRouteBuilder,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@pageBuilder': (m.Scope scope, PageRouteBuilder target)=>target.pageBuilder,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@transitionsBuilder': (m.Scope scope, PageRouteBuilder target)=>target.transitionsBuilder,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@transitionDuration': (m.Scope scope, PageRouteBuilder target)=>target.transitionDuration,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@reverseTransitionDuration': (m.Scope scope, PageRouteBuilder target)=>target.reverseTransitionDuration,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@opaque': (m.Scope scope, PageRouteBuilder target)=>target.opaque,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@barrierDismissible': (m.Scope scope, PageRouteBuilder target)=>target.barrierDismissible,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@barrierColor': (m.Scope scope, PageRouteBuilder target)=>target.barrierColor,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@barrierLabel': (m.Scope scope, PageRouteBuilder target)=>target.barrierLabel,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@maintainState': (m.Scope scope, PageRouteBuilder target)=>target.maintainState,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@': (m.Scope scope)=>({ allowSnapshotting,  barrierColor,  barrierDismissible,  barrierLabel,  fullscreenDialog,  maintainState,  opaque,  pageBuilder,  reverseTransitionDuration,  settings,  transitionDuration,  transitionsBuilder}){
Widget pageBuilderProxy( context,  animation,  secondaryAnimation) {
return  engine.callFunctionPointer(scope, pageBuilder!,[context, animation, secondaryAnimation], {});
}

Widget transitionsBuilderProxy( context,  animation,  secondaryAnimation,  child) {
return  engine.callFunctionPointer(scope, transitionsBuilder!,[context, animation, secondaryAnimation, child], {});
}

return PageRouteBuilder(allowSnapshotting:allowSnapshotting ?? true, barrierColor:barrierColor, barrierDismissible:barrierDismissible ?? false, barrierLabel:barrierLabel, fullscreenDialog:fullscreenDialog ?? false, maintainState:maintainState ?? true, opaque:opaque ?? true, pageBuilder:pageBuilderProxy, reverseTransitionDuration:reverseTransitionDuration ?? const Duration(milliseconds: 300), settings:settings, transitionDuration:transitionDuration ?? const Duration(milliseconds: 300), transitionsBuilder:transitionsBuilder == null ? (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {return child;} :transitionsBuilderProxy);
},
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@buildPage': (m.Scope scope, PageRouteBuilder target)=>target.buildPage,
'package:flutter/src/widgets/pages.dart@PageRouteBuilder@buildTransitions': (m.Scope scope, PageRouteBuilder target)=>target.buildTransitions,

};
}