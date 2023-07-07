import 'package:flutter_example_gallery/sdudies/shirine/page_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_gallery/layout/adaptive.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@#as': (m.Scope scope, target)=>()=>target as PageStatus,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@#is': (m.Scope scope, target)=>()=>target is PageStatus,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@cartController': (m.Scope scope, PageStatus target)=>target.cartController,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@menuController': (m.Scope scope, PageStatus target)=>target.menuController,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@': (m.Scope scope)=>({ cartController,  child,  key,  menuController}){
return PageStatus(cartController:cartController, child:child, key:key, menuController:menuController);
},
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@of': (m.Scope scope)=>PageStatus.of,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@PageStatus@updateShouldNotify': (m.Scope scope, PageStatus target)=>target.updateShouldNotify,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@@productPageIsVisible': (m.Scope scope)=>productPageIsVisible,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@@menuPageIsVisible': (m.Scope scope)=>menuPageIsVisible,
'package:flutter_example_gallery/sdudies/shirine/page_status.dart@@cartPageIsVisible': (m.Scope scope)=>cartPageIsVisible,

};
}