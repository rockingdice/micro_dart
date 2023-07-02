import 'package:flutter/src/widgets/visibility.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/visibility.dart@Visibility@#as': (m.Scope scope, target)=>()=>target as Visibility,
'package:flutter/src/widgets/visibility.dart@Visibility@#is': (m.Scope scope, target)=>()=>target is Visibility,
'package:flutter/src/widgets/visibility.dart@Visibility@child': (m.Scope scope, Visibility target)=>target.child,
'package:flutter/src/widgets/visibility.dart@Visibility@replacement': (m.Scope scope, Visibility target)=>target.replacement,
'package:flutter/src/widgets/visibility.dart@Visibility@visible': (m.Scope scope, Visibility target)=>target.visible,
'package:flutter/src/widgets/visibility.dart@Visibility@maintainState': (m.Scope scope, Visibility target)=>target.maintainState,
'package:flutter/src/widgets/visibility.dart@Visibility@maintainAnimation': (m.Scope scope, Visibility target)=>target.maintainAnimation,
'package:flutter/src/widgets/visibility.dart@Visibility@maintainSize': (m.Scope scope, Visibility target)=>target.maintainSize,
'package:flutter/src/widgets/visibility.dart@Visibility@maintainSemantics': (m.Scope scope, Visibility target)=>target.maintainSemantics,
'package:flutter/src/widgets/visibility.dart@Visibility@maintainInteractivity': (m.Scope scope, Visibility target)=>target.maintainInteractivity,
'package:flutter/src/widgets/visibility.dart@Visibility@': (m.Scope scope)=>({ child,  key,  maintainAnimation,  maintainInteractivity,  maintainSemantics,  maintainSize,  maintainState,  replacement,  visible}){
return Visibility(child:child, key:key, maintainAnimation:maintainAnimation ?? false, maintainInteractivity:maintainInteractivity ?? false, maintainSemantics:maintainSemantics ?? false, maintainSize:maintainSize ?? false, maintainState:maintainState ?? false, replacement:replacement ?? const SizedBox.shrink(), visible:visible ?? true);
},
'package:flutter/src/widgets/visibility.dart@Visibility@maintain': (m.Scope scope)=>Visibility.maintain,
'package:flutter/src/widgets/visibility.dart@Visibility@of': (m.Scope scope)=>Visibility.of,
'package:flutter/src/widgets/visibility.dart@Visibility@build': (m.Scope scope, Visibility target)=>target.build,
'package:flutter/src/widgets/visibility.dart@Visibility@debugFillProperties': (m.Scope scope, Visibility target)=>target.debugFillProperties,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@#as': (m.Scope scope, target)=>()=>target as SliverVisibility,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@#is': (m.Scope scope, target)=>()=>target is SliverVisibility,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@sliver': (m.Scope scope, SliverVisibility target)=>target.sliver,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@replacementSliver': (m.Scope scope, SliverVisibility target)=>target.replacementSliver,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@visible': (m.Scope scope, SliverVisibility target)=>target.visible,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@maintainState': (m.Scope scope, SliverVisibility target)=>target.maintainState,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@maintainAnimation': (m.Scope scope, SliverVisibility target)=>target.maintainAnimation,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@maintainSize': (m.Scope scope, SliverVisibility target)=>target.maintainSize,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@maintainSemantics': (m.Scope scope, SliverVisibility target)=>target.maintainSemantics,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@maintainInteractivity': (m.Scope scope, SliverVisibility target)=>target.maintainInteractivity,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@': (m.Scope scope)=>({ key,  maintainAnimation,  maintainInteractivity,  maintainSemantics,  maintainSize,  maintainState,  replacementSliver,  sliver,  visible}){
return SliverVisibility(key:key, maintainAnimation:maintainAnimation ?? false, maintainInteractivity:maintainInteractivity ?? false, maintainSemantics:maintainSemantics ?? false, maintainSize:maintainSize ?? false, maintainState:maintainState ?? false, replacementSliver:replacementSliver ?? const SliverToBoxAdapter(), sliver:sliver, visible:visible ?? true);
},
'package:flutter/src/widgets/visibility.dart@SliverVisibility@maintain': (m.Scope scope)=>SliverVisibility.maintain,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@build': (m.Scope scope, SliverVisibility target)=>target.build,
'package:flutter/src/widgets/visibility.dart@SliverVisibility@debugFillProperties': (m.Scope scope, SliverVisibility target)=>target.debugFillProperties,

};
}