import 'package:flutter/src/cupertino/tab_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/bottom_tab_bar.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabController@#as': (m.Scope scope, target)=>()=>target as CupertinoTabController,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabController@#is': (m.Scope scope, target)=>()=>target is CupertinoTabController,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabController@index': (m.Scope scope, CupertinoTabController target)=>target.index,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabController@index:set': (m.Scope scope, CupertinoTabController target)=>(other)=>target.index=other,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabController@': (m.Scope scope)=>({ initialIndex}){
return CupertinoTabController(initialIndex:initialIndex ?? 0);
},
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabController@dispose': (m.Scope scope, CupertinoTabController target)=>target.dispose,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@#as': (m.Scope scope, target)=>()=>target as CupertinoTabScaffold,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@#is': (m.Scope scope, target)=>()=>target is CupertinoTabScaffold,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@tabBar': (m.Scope scope, CupertinoTabScaffold target)=>target.tabBar,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@controller': (m.Scope scope, CupertinoTabScaffold target)=>target.controller,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@tabBuilder': (m.Scope scope, CupertinoTabScaffold target)=>target.tabBuilder,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@backgroundColor': (m.Scope scope, CupertinoTabScaffold target)=>target.backgroundColor,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@resizeToAvoidBottomInset': (m.Scope scope, CupertinoTabScaffold target)=>target.resizeToAvoidBottomInset,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@restorationId': (m.Scope scope, CupertinoTabScaffold target)=>target.restorationId,
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@': (m.Scope scope)=>({ backgroundColor,  controller,  key,  resizeToAvoidBottomInset,  restorationId,  tabBar,  tabBuilder}){
Widget tabBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, tabBuilder!,[context, index], {});
}

return CupertinoTabScaffold(backgroundColor:backgroundColor, controller:controller, key:key, resizeToAvoidBottomInset:resizeToAvoidBottomInset ?? true, restorationId:restorationId, tabBar:tabBar, tabBuilder:tabBuilderProxy);
},
'package:flutter/src/cupertino/tab_scaffold.dart@CupertinoTabScaffold@createState': (m.Scope scope, CupertinoTabScaffold target)=>target.createState,
'package:flutter/src/cupertino/tab_scaffold.dart@RestorableCupertinoTabController@#as': (m.Scope scope, target)=>()=>target as RestorableCupertinoTabController,
'package:flutter/src/cupertino/tab_scaffold.dart@RestorableCupertinoTabController@#is': (m.Scope scope, target)=>()=>target is RestorableCupertinoTabController,
'package:flutter/src/cupertino/tab_scaffold.dart@RestorableCupertinoTabController@': (m.Scope scope)=>({ initialIndex}){
return RestorableCupertinoTabController(initialIndex:initialIndex ?? 0);
},
'package:flutter/src/cupertino/tab_scaffold.dart@RestorableCupertinoTabController@createDefaultValue': (m.Scope scope, RestorableCupertinoTabController target)=>target.createDefaultValue,
'package:flutter/src/cupertino/tab_scaffold.dart@RestorableCupertinoTabController@fromPrimitives': (m.Scope scope, RestorableCupertinoTabController target)=>target.fromPrimitives,
'package:flutter/src/cupertino/tab_scaffold.dart@RestorableCupertinoTabController@toPrimitives': (m.Scope scope, RestorableCupertinoTabController target)=>target.toPrimitives,

};
}