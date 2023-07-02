import 'package:flutter/src/widgets/heroes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:flutter/src/widgets/ticker_provider.dart' show TickerMode;
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/heroes.dart@Hero@#as': (m.Scope scope, target)=>()=>target as Hero,
'package:flutter/src/widgets/heroes.dart@Hero@#is': (m.Scope scope, target)=>()=>target is Hero,
'package:flutter/src/widgets/heroes.dart@Hero@tag': (m.Scope scope, Hero target)=>target.tag,
'package:flutter/src/widgets/heroes.dart@Hero@createRectTween': (m.Scope scope, Hero target)=>target.createRectTween,
'package:flutter/src/widgets/heroes.dart@Hero@child': (m.Scope scope, Hero target)=>target.child,
'package:flutter/src/widgets/heroes.dart@Hero@flightShuttleBuilder': (m.Scope scope, Hero target)=>target.flightShuttleBuilder,
'package:flutter/src/widgets/heroes.dart@Hero@placeholderBuilder': (m.Scope scope, Hero target)=>target.placeholderBuilder,
'package:flutter/src/widgets/heroes.dart@Hero@transitionOnUserGestures': (m.Scope scope, Hero target)=>target.transitionOnUserGestures,
'package:flutter/src/widgets/heroes.dart@Hero@': (m.Scope scope)=>({ child,  createRectTween,  flightShuttleBuilder,  key,  placeholderBuilder,  tag,  transitionOnUserGestures}){
Tween<Rect> createRectTweenProxy( begin,  end) {
return  engine.callFunctionPointer(scope, createRectTween!,[begin, end], {});
}

Widget flightShuttleBuilderProxy( flightContext,  animation,  flightDirection,  fromHeroContext,  toHeroContext) {
return  engine.callFunctionPointer(scope, flightShuttleBuilder!,[flightContext, animation, flightDirection, fromHeroContext, toHeroContext], {});
}

Widget placeholderBuilderProxy( context,  heroSize,  child) {
return  engine.callFunctionPointer(scope, placeholderBuilder!,[context, heroSize, child], {});
}

return Hero(child:child, createRectTween:createRectTween == null ? null :createRectTweenProxy, flightShuttleBuilder:flightShuttleBuilder == null ? null :flightShuttleBuilderProxy, key:key, placeholderBuilder:placeholderBuilder == null ? null :placeholderBuilderProxy, tag:tag, transitionOnUserGestures:transitionOnUserGestures ?? false);
},
'package:flutter/src/widgets/heroes.dart@Hero@createState': (m.Scope scope, Hero target)=>target.createState,
'package:flutter/src/widgets/heroes.dart@Hero@debugFillProperties': (m.Scope scope, Hero target)=>target.debugFillProperties,
'package:flutter/src/widgets/heroes.dart@HeroController@#as': (m.Scope scope, target)=>()=>target as HeroController,
'package:flutter/src/widgets/heroes.dart@HeroController@#is': (m.Scope scope, target)=>()=>target is HeroController,
'package:flutter/src/widgets/heroes.dart@HeroController@createRectTween': (m.Scope scope, HeroController target)=>target.createRectTween,
'package:flutter/src/widgets/heroes.dart@HeroController@': (m.Scope scope)=>({ createRectTween}){
Tween<Rect> createRectTweenProxy( begin,  end) {
return  engine.callFunctionPointer(scope, createRectTween!,[begin, end], {});
}

return HeroController(createRectTween:createRectTween == null ? null :createRectTweenProxy);
},
'package:flutter/src/widgets/heroes.dart@HeroController@didPush': (m.Scope scope, HeroController target)=>target.didPush,
'package:flutter/src/widgets/heroes.dart@HeroController@didPop': (m.Scope scope, HeroController target)=>target.didPop,
'package:flutter/src/widgets/heroes.dart@HeroController@didReplace': (m.Scope scope, HeroController target)=>target.didReplace,
'package:flutter/src/widgets/heroes.dart@HeroController@didStartUserGesture': (m.Scope scope, HeroController target)=>target.didStartUserGesture,
'package:flutter/src/widgets/heroes.dart@HeroController@didStopUserGesture': (m.Scope scope, HeroController target)=>target.didStopUserGesture,
'package:flutter/src/widgets/heroes.dart@HeroMode@#as': (m.Scope scope, target)=>()=>target as HeroMode,
'package:flutter/src/widgets/heroes.dart@HeroMode@#is': (m.Scope scope, target)=>()=>target is HeroMode,
'package:flutter/src/widgets/heroes.dart@HeroMode@child': (m.Scope scope, HeroMode target)=>target.child,
'package:flutter/src/widgets/heroes.dart@HeroMode@enabled': (m.Scope scope, HeroMode target)=>target.enabled,
'package:flutter/src/widgets/heroes.dart@HeroMode@': (m.Scope scope)=>({ child,  enabled,  key}){
return HeroMode(child:child, enabled:enabled ?? true, key:key);
},
'package:flutter/src/widgets/heroes.dart@HeroMode@build': (m.Scope scope, HeroMode target)=>target.build,
'package:flutter/src/widgets/heroes.dart@HeroMode@debugFillProperties': (m.Scope scope, HeroMode target)=>target.debugFillProperties,

};
}