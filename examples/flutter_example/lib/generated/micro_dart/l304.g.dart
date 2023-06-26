import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@#as': (m.Scope scope, target)=>()=>target as ScrollController,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@#is': (m.Scope scope, target)=>()=>target is ScrollController,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@keepScrollOffset': (m.Scope scope, ScrollController target)=>target.keepScrollOffset,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@debugLabel': (m.Scope scope, ScrollController target)=>target.debugLabel,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@initialScrollOffset': (m.Scope scope, ScrollController target)=>target.initialScrollOffset,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@positions': (m.Scope scope, ScrollController target)=>target.positions,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@hasClients': (m.Scope scope, ScrollController target)=>target.hasClients,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@position': (m.Scope scope, ScrollController target)=>target.position,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@offset': (m.Scope scope, ScrollController target)=>target.offset,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@': (m.Scope scope)=>({ debugLabel,  initialScrollOffset,  keepScrollOffset}){
return ScrollController(debugLabel:debugLabel, initialScrollOffset:initialScrollOffset ?? 0.0, keepScrollOffset:keepScrollOffset ?? true);
},
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@animateTo': (m.Scope scope, ScrollController target)=>target.animateTo,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@jumpTo': (m.Scope scope, ScrollController target)=>target.jumpTo,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@attach': (m.Scope scope, ScrollController target)=>target.attach,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@detach': (m.Scope scope, ScrollController target)=>target.detach,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@dispose': (m.Scope scope, ScrollController target)=>target.dispose,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@createScrollPosition': (m.Scope scope, ScrollController target)=>target.createScrollPosition,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@toString': (m.Scope scope, ScrollController target)=>target.toString,
'package:flutter/src/widgets/scroll_controller.dart@ScrollController@debugFillDescription': (m.Scope scope, ScrollController target)=>target.debugFillDescription,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@#as': (m.Scope scope, target)=>()=>target as TrackingScrollController,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@#is': (m.Scope scope, target)=>()=>target is TrackingScrollController,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@mostRecentlyUpdatedPosition': (m.Scope scope, TrackingScrollController target)=>target.mostRecentlyUpdatedPosition,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@initialScrollOffset': (m.Scope scope, TrackingScrollController target)=>target.initialScrollOffset,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@': (m.Scope scope)=>({ debugLabel,  initialScrollOffset,  keepScrollOffset}){
return TrackingScrollController(debugLabel:debugLabel, initialScrollOffset:initialScrollOffset ?? 0.0, keepScrollOffset:keepScrollOffset ?? true);
},
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@attach': (m.Scope scope, TrackingScrollController target)=>target.attach,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@detach': (m.Scope scope, TrackingScrollController target)=>target.detach,
'package:flutter/src/widgets/scroll_controller.dart@TrackingScrollController@dispose': (m.Scope scope, TrackingScrollController target)=>target.dispose,

};
}