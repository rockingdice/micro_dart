import 'package:flutter/src/material/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/page.dart@MaterialPageRoute@#as': (m.Scope scope, target)=>()=>target as MaterialPageRoute,
'package:flutter/src/material/page.dart@MaterialPageRoute@#is': (m.Scope scope, target)=>()=>target is MaterialPageRoute,
'package:flutter/src/material/page.dart@MaterialPageRoute@builder': (m.Scope scope, MaterialPageRoute target)=>target.builder,
'package:flutter/src/material/page.dart@MaterialPageRoute@maintainState': (m.Scope scope, MaterialPageRoute target)=>target.maintainState,
'package:flutter/src/material/page.dart@MaterialPageRoute@debugLabel': (m.Scope scope, MaterialPageRoute target)=>target.debugLabel,
'package:flutter/src/material/page.dart@MaterialPageRoute@': (m.Scope scope)=>({ allowSnapshotting,  builder,  fullscreenDialog,  maintainState,  settings}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return MaterialPageRoute(allowSnapshotting:allowSnapshotting ?? true, builder:builderProxy, fullscreenDialog:fullscreenDialog ?? false, maintainState:maintainState ?? true, settings:settings);
},
'package:flutter/src/material/page.dart@MaterialPageRoute@buildContent': (m.Scope scope, MaterialPageRoute target)=>target.buildContent,
'package:flutter/src/material/page.dart@MaterialPage@#as': (m.Scope scope, target)=>()=>target as MaterialPage,
'package:flutter/src/material/page.dart@MaterialPage@#is': (m.Scope scope, target)=>()=>target is MaterialPage,
'package:flutter/src/material/page.dart@MaterialPage@child': (m.Scope scope, MaterialPage target)=>target.child,
'package:flutter/src/material/page.dart@MaterialPage@maintainState': (m.Scope scope, MaterialPage target)=>target.maintainState,
'package:flutter/src/material/page.dart@MaterialPage@fullscreenDialog': (m.Scope scope, MaterialPage target)=>target.fullscreenDialog,
'package:flutter/src/material/page.dart@MaterialPage@allowSnapshotting': (m.Scope scope, MaterialPage target)=>target.allowSnapshotting,
'package:flutter/src/material/page.dart@MaterialPage@': (m.Scope scope)=>MaterialPage,
'package:flutter/src/material/page.dart@MaterialPage@createRoute': (m.Scope scope, MaterialPage target)=>target.createRoute,

};
}