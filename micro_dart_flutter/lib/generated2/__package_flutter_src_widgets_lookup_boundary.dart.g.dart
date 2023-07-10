import 'package:flutter/src/widgets/lookup_boundary.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@#as': (m.Scope scope, target)=>()=>target as LookupBoundary,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@#is': (m.Scope scope, target)=>()=>target is LookupBoundary,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@': (m.Scope scope)=>({ child,  key}){
return LookupBoundary(child:child, key:key);
},
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@dependOnInheritedWidgetOfExactType': (m.Scope scope)=>LookupBoundary.dependOnInheritedWidgetOfExactType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@getElementForInheritedWidgetOfExactType': (m.Scope scope)=>LookupBoundary.getElementForInheritedWidgetOfExactType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@findAncestorWidgetOfExactType': (m.Scope scope)=>LookupBoundary.findAncestorWidgetOfExactType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@findAncestorStateOfType': (m.Scope scope)=>LookupBoundary.findAncestorStateOfType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@findRootAncestorStateOfType': (m.Scope scope)=>LookupBoundary.findRootAncestorStateOfType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@findAncestorRenderObjectOfType': (m.Scope scope)=>LookupBoundary.findAncestorRenderObjectOfType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@visitAncestorElements': (m.Scope scope)=>( context,  visitor){
bool visitorProxy( element) {
return  engine.callFunctionPointer(scope, visitor!,[element], {});
}

LookupBoundary.visitAncestorElements(context, visitorProxy);
},
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@visitChildElements': (m.Scope scope)=>( context,  visitor){
void visitorProxy( element) {
 engine.callFunctionPointer(scope, visitor!,[element], {});
}

LookupBoundary.visitChildElements(context, visitorProxy);
},
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@debugIsHidingAncestorWidgetOfExactType': (m.Scope scope)=>LookupBoundary.debugIsHidingAncestorWidgetOfExactType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@debugIsHidingAncestorStateOfType': (m.Scope scope)=>LookupBoundary.debugIsHidingAncestorStateOfType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@debugIsHidingAncestorRenderObjectOfType': (m.Scope scope)=>LookupBoundary.debugIsHidingAncestorRenderObjectOfType,
'package:flutter/src/widgets/lookup_boundary.dart@LookupBoundary@updateShouldNotify': (m.Scope scope, LookupBoundary target)=>target.updateShouldNotify,

};
}