import 'package:flutter/src/material/tab_controller.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/tab_controller.dart@TabController@#as': (m.Scope scope, target)=>()=>target as TabController,
'package:flutter/src/material/tab_controller.dart@TabController@#is': (m.Scope scope, target)=>()=>target is TabController,
'package:flutter/src/material/tab_controller.dart@TabController@length': (m.Scope scope, TabController target)=>target.length,
'package:flutter/src/material/tab_controller.dart@TabController@animation': (m.Scope scope, TabController target)=>target.animation,
'package:flutter/src/material/tab_controller.dart@TabController@animationDuration': (m.Scope scope, TabController target)=>target.animationDuration,
'package:flutter/src/material/tab_controller.dart@TabController@index': (m.Scope scope, TabController target)=>target.index,
'package:flutter/src/material/tab_controller.dart@TabController@index:set': (m.Scope scope, TabController target)=>(other)=>target.index=other,
'package:flutter/src/material/tab_controller.dart@TabController@previousIndex': (m.Scope scope, TabController target)=>target.previousIndex,
'package:flutter/src/material/tab_controller.dart@TabController@indexIsChanging': (m.Scope scope, TabController target)=>target.indexIsChanging,
'package:flutter/src/material/tab_controller.dart@TabController@offset': (m.Scope scope, TabController target)=>target.offset,
'package:flutter/src/material/tab_controller.dart@TabController@offset:set': (m.Scope scope, TabController target)=>(other)=>target.offset=other,
'package:flutter/src/material/tab_controller.dart@TabController@': (m.Scope scope)=>TabController,
'package:flutter/src/material/tab_controller.dart@TabController@animateTo': (m.Scope scope, TabController target)=>target.animateTo,
'package:flutter/src/material/tab_controller.dart@TabController@dispose': (m.Scope scope, TabController target)=>target.dispose,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@#as': (m.Scope scope, target)=>()=>target as DefaultTabController,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@#is': (m.Scope scope, target)=>()=>target is DefaultTabController,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@length': (m.Scope scope, DefaultTabController target)=>target.length,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@initialIndex': (m.Scope scope, DefaultTabController target)=>target.initialIndex,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@animationDuration': (m.Scope scope, DefaultTabController target)=>target.animationDuration,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@child': (m.Scope scope, DefaultTabController target)=>target.child,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@': (m.Scope scope)=>DefaultTabController,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@maybeOf': (m.Scope scope)=>DefaultTabController.maybeOf,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@of': (m.Scope scope)=>DefaultTabController.of,
'package:flutter/src/material/tab_controller.dart@DefaultTabController@createState': (m.Scope scope, DefaultTabController target)=>target.createState,

};
}