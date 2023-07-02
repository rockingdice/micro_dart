import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@#as': (m.Scope scope, target)=>()=>target as CupertinoUserInterfaceLevel,
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@#is': (m.Scope scope, target)=>()=>target is CupertinoUserInterfaceLevel,
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@': (m.Scope scope)=>({ child,  data,  key}){
return CupertinoUserInterfaceLevel(child:child, data:data, key:key);
},
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@updateShouldNotify': (m.Scope scope, CupertinoUserInterfaceLevel target)=>target.updateShouldNotify,
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@of': (m.Scope scope)=>CupertinoUserInterfaceLevel.of,
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@maybeOf': (m.Scope scope)=>CupertinoUserInterfaceLevel.maybeOf,
'package:flutter/src/cupertino/interface_level.dart@CupertinoUserInterfaceLevel@debugFillProperties': (m.Scope scope, CupertinoUserInterfaceLevel target)=>target.debugFillProperties,

};
}