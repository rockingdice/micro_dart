import 'package:flutter/src/widgets/sliver_fill.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@#as': (m.Scope scope, target)=>()=>target as SliverFillViewport,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@#is': (m.Scope scope, target)=>()=>target is SliverFillViewport,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@viewportFraction': (m.Scope scope, SliverFillViewport target)=>target.viewportFraction,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@padEnds': (m.Scope scope, SliverFillViewport target)=>target.padEnds,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@delegate': (m.Scope scope, SliverFillViewport target)=>target.delegate,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@': (m.Scope scope)=>({ delegate,  key,  padEnds,  viewportFraction}){
return SliverFillViewport(delegate:delegate, key:key, padEnds:padEnds ?? true, viewportFraction:viewportFraction ?? 1.0);
},
'package:flutter/src/widgets/sliver_fill.dart@SliverFillViewport@build': (m.Scope scope, SliverFillViewport target)=>target.build,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@#as': (m.Scope scope, target)=>()=>target as SliverFillRemaining,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@#is': (m.Scope scope, target)=>()=>target is SliverFillRemaining,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@child': (m.Scope scope, SliverFillRemaining target)=>target.child,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@hasScrollBody': (m.Scope scope, SliverFillRemaining target)=>target.hasScrollBody,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@fillOverscroll': (m.Scope scope, SliverFillRemaining target)=>target.fillOverscroll,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@': (m.Scope scope)=>({ child,  fillOverscroll,  hasScrollBody,  key}){
return SliverFillRemaining(child:child, fillOverscroll:fillOverscroll ?? false, hasScrollBody:hasScrollBody ?? true, key:key);
},
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@build': (m.Scope scope, SliverFillRemaining target)=>target.build,
'package:flutter/src/widgets/sliver_fill.dart@SliverFillRemaining@debugFillProperties': (m.Scope scope, SliverFillRemaining target)=>target.debugFillProperties,

};
}