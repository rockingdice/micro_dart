import 'package:flutter/src/cupertino/page_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@#as': (m.Scope scope, target)=>()=>target as CupertinoPageScaffold,
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@#is': (m.Scope scope, target)=>()=>target is CupertinoPageScaffold,
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@navigationBar': (m.Scope scope, CupertinoPageScaffold target)=>target.navigationBar,
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@child': (m.Scope scope, CupertinoPageScaffold target)=>target.child,
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@backgroundColor': (m.Scope scope, CupertinoPageScaffold target)=>target.backgroundColor,
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@resizeToAvoidBottomInset': (m.Scope scope, CupertinoPageScaffold target)=>target.resizeToAvoidBottomInset,
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@': (m.Scope scope)=>({ backgroundColor,  child,  key,  navigationBar,  resizeToAvoidBottomInset}){
return CupertinoPageScaffold(backgroundColor:backgroundColor, child:child, key:key, navigationBar:navigationBar, resizeToAvoidBottomInset:resizeToAvoidBottomInset ?? true);
},
'package:flutter/src/cupertino/page_scaffold.dart@CupertinoPageScaffold@createState': (m.Scope scope, CupertinoPageScaffold target)=>target.createState,
'package:flutter/src/cupertino/page_scaffold.dart@ObstructingPreferredSizeWidget@#as': (m.Scope scope, target)=>()=>target as ObstructingPreferredSizeWidget,
'package:flutter/src/cupertino/page_scaffold.dart@ObstructingPreferredSizeWidget@#is': (m.Scope scope, target)=>()=>target is ObstructingPreferredSizeWidget,
'package:flutter/src/cupertino/page_scaffold.dart@ObstructingPreferredSizeWidget@shouldFullyObstruct': (m.Scope scope, ObstructingPreferredSizeWidget target)=>target.shouldFullyObstruct,

};
}