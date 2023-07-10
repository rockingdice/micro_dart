import 'package:flutter/src/widgets/widget_inspector.dart';
import 'dart:async';
import 'dart:collection' show HashMap;
import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'dart:ui' show ClipOp,FlutterView,Image,ImageByteFormat,Paragraph,Picture,PictureRecorder,PointMode,SceneBuilder,Vertices;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:meta/meta_meta.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/service_extensions.dart';
import 'package:flutter/src/widgets/view.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/widget_inspector.dart@@widgetFactory': (m.Scope scope)=>widgetFactory,
'package:flutter/src/widgets/widget_inspector.dart@WidgetInspector@#as': (m.Scope scope, target)=>()=>target as WidgetInspector,
'package:flutter/src/widgets/widget_inspector.dart@WidgetInspector@#is': (m.Scope scope, target)=>()=>target is WidgetInspector,
'package:flutter/src/widgets/widget_inspector.dart@WidgetInspector@child': (m.Scope scope, WidgetInspector target)=>target.child,
'package:flutter/src/widgets/widget_inspector.dart@WidgetInspector@selectButtonBuilder': (m.Scope scope, WidgetInspector target)=>target.selectButtonBuilder,
'package:flutter/src/widgets/widget_inspector.dart@WidgetInspector@': (m.Scope scope)=>({ child,  key,  selectButtonBuilder}){
Widget selectButtonBuilderProxy( context,  onPressed) {
return  engine.callFunctionPointer(scope, selectButtonBuilder!,[context, onPressed], {});
}

return WidgetInspector(child:child, key:key, selectButtonBuilder:selectButtonBuilderProxy);
},
'package:flutter/src/widgets/widget_inspector.dart@WidgetInspector@createState': (m.Scope scope, WidgetInspector target)=>target.createState,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@#as': (m.Scope scope, target)=>()=>target as InspectorSelection,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@#is': (m.Scope scope, target)=>()=>target is InspectorSelection,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@candidates': (m.Scope scope, InspectorSelection target)=>target.candidates,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@candidates:set': (m.Scope scope, InspectorSelection target)=>(other)=>target.candidates=other,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@index': (m.Scope scope, InspectorSelection target)=>target.index,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@index:set': (m.Scope scope, InspectorSelection target)=>(other)=>target.index=other,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@current': (m.Scope scope, InspectorSelection target)=>target.current,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@current:set': (m.Scope scope, InspectorSelection target)=>(other)=>target.current=other,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@currentElement': (m.Scope scope, InspectorSelection target)=>target.currentElement,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@currentElement:set': (m.Scope scope, InspectorSelection target)=>(other)=>target.currentElement=other,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@active': (m.Scope scope, InspectorSelection target)=>target.active,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@': (m.Scope scope)=>(){
return InspectorSelection();
},
'package:flutter/src/widgets/widget_inspector.dart@InspectorSelection@clear': (m.Scope scope, InspectorSelection target)=>target.clear,
'package:flutter/src/widgets/widget_inspector.dart@DevToolsDeepLinkProperty@#as': (m.Scope scope, target)=>()=>target as DevToolsDeepLinkProperty,
'package:flutter/src/widgets/widget_inspector.dart@DevToolsDeepLinkProperty@#is': (m.Scope scope, target)=>()=>target is DevToolsDeepLinkProperty,
'package:flutter/src/widgets/widget_inspector.dart@DevToolsDeepLinkProperty@': (m.Scope scope)=>( description,  url){
return DevToolsDeepLinkProperty(description, url);
},
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@#as': (m.Scope scope, target)=>()=>target as InspectorSerializationDelegate,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@#is': (m.Scope scope, target)=>()=>target is InspectorSerializationDelegate,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@service': (m.Scope scope, InspectorSerializationDelegate target)=>target.service,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@groupName': (m.Scope scope, InspectorSerializationDelegate target)=>target.groupName,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@summaryTree': (m.Scope scope, InspectorSerializationDelegate target)=>target.summaryTree,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@maxDescendantsTruncatableNode': (m.Scope scope, InspectorSerializationDelegate target)=>target.maxDescendantsTruncatableNode,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@includeProperties': (m.Scope scope, InspectorSerializationDelegate target)=>target.includeProperties,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@subtreeDepth': (m.Scope scope, InspectorSerializationDelegate target)=>target.subtreeDepth,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@expandPropertyValues': (m.Scope scope, InspectorSerializationDelegate target)=>target.expandPropertyValues,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@addAdditionalPropertiesCallback': (m.Scope scope, InspectorSerializationDelegate target)=>target.addAdditionalPropertiesCallback,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@': (m.Scope scope)=>({ addAdditionalPropertiesCallback,  expandPropertyValues,  groupName,  includeProperties,  maxDescendantsTruncatableNode,  service,  subtreeDepth,  summaryTree}){
Map<String, Object> addAdditionalPropertiesCallbackProxy( $p0,  $p1) {
return  engine.callFunctionPointer(scope, addAdditionalPropertiesCallback!,[$p0, $p1], {});
}

return InspectorSerializationDelegate(addAdditionalPropertiesCallback:addAdditionalPropertiesCallback == null ? null :addAdditionalPropertiesCallbackProxy, expandPropertyValues:expandPropertyValues ?? true, groupName:groupName, includeProperties:includeProperties ?? false, maxDescendantsTruncatableNode:maxDescendantsTruncatableNode ?? -1, service:service, subtreeDepth:subtreeDepth ?? 1, summaryTree:summaryTree ?? false);
},
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@additionalNodeProperties': (m.Scope scope, InspectorSerializationDelegate target)=>target.additionalNodeProperties,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@delegateForNode': (m.Scope scope, InspectorSerializationDelegate target)=>target.delegateForNode,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@filterChildren': (m.Scope scope, InspectorSerializationDelegate target)=>target.filterChildren,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@filterProperties': (m.Scope scope, InspectorSerializationDelegate target)=>target.filterProperties,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@truncateNodesList': (m.Scope scope, InspectorSerializationDelegate target)=>target.truncateNodesList,
'package:flutter/src/widgets/widget_inspector.dart@InspectorSerializationDelegate@copyWith': (m.Scope scope, InspectorSerializationDelegate target)=>target.copyWith,
'package:flutter/src/widgets/widget_inspector.dart@@debugTransformDebugCreator': (m.Scope scope)=>debugTransformDebugCreator,
'package:flutter/src/widgets/widget_inspector.dart@@debugIsLocalCreationLocation': (m.Scope scope)=>debugIsLocalCreationLocation,
'package:flutter/src/widgets/widget_inspector.dart@@debugIsWidgetLocalCreation': (m.Scope scope)=>debugIsWidgetLocalCreation,

};
}