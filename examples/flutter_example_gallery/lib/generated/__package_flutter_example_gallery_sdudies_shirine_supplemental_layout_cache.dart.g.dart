import 'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart@LayoutCache@#as': (m.Scope scope, target)=>()=>target as LayoutCache,
'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart@LayoutCache@#is': (m.Scope scope, target)=>()=>target is LayoutCache,
'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart@LayoutCache@layouts': (m.Scope scope, LayoutCache target)=>target.layouts,
'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart@LayoutCache@': (m.Scope scope)=>({ child,  key,  layouts}){
return LayoutCache(child:child, key:key, layouts:layouts);
},
'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart@LayoutCache@of': (m.Scope scope)=>LayoutCache.of,
'package:flutter_example_gallery/sdudies/shirine/supplemental/layout_cache.dart@LayoutCache@updateShouldNotify': (m.Scope scope, LayoutCache target)=>target.updateShouldNotify,

};
}