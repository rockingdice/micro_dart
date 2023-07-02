import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@#as': (m.Scope scope, target)=>()=>target as RenderSliverBoxChildManager,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@#is': (m.Scope scope, target)=>()=>target is RenderSliverBoxChildManager,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@childCount': (m.Scope scope, RenderSliverBoxChildManager target)=>target.childCount,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@createChild': (m.Scope scope, RenderSliverBoxChildManager target)=>target.createChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@removeChild': (m.Scope scope, RenderSliverBoxChildManager target)=>target.removeChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@estimateMaxScrollOffset': (m.Scope scope, RenderSliverBoxChildManager target)=>target.estimateMaxScrollOffset,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@didAdoptChild': (m.Scope scope, RenderSliverBoxChildManager target)=>target.didAdoptChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@setDidUnderflow': (m.Scope scope, RenderSliverBoxChildManager target)=>target.setDidUnderflow,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@didStartLayout': (m.Scope scope, RenderSliverBoxChildManager target)=>target.didStartLayout,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@didFinishLayout': (m.Scope scope, RenderSliverBoxChildManager target)=>target.didFinishLayout,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverBoxChildManager@debugAssertChildListLocked': (m.Scope scope, RenderSliverBoxChildManager target)=>target.debugAssertChildListLocked,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@#as': (m.Scope scope, target)=>()=>target as SliverMultiBoxAdaptorParentData,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@#is': (m.Scope scope, target)=>()=>target is SliverMultiBoxAdaptorParentData,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@index': (m.Scope scope, SliverMultiBoxAdaptorParentData target)=>target.index,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@index:set': (m.Scope scope, SliverMultiBoxAdaptorParentData target)=>(other)=>target.index=other,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@keptAlive': (m.Scope scope, SliverMultiBoxAdaptorParentData target)=>target.keptAlive,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@': (m.Scope scope)=>(){
return SliverMultiBoxAdaptorParentData();
},
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@SliverMultiBoxAdaptorParentData@toString': (m.Scope scope, SliverMultiBoxAdaptorParentData target)=>target.toString,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@#as': (m.Scope scope, target)=>()=>target as RenderSliverMultiBoxAdaptor,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@#is': (m.Scope scope, target)=>()=>target is RenderSliverMultiBoxAdaptor,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@childManager': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.childManager,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@debugChildIntegrityEnabled': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.debugChildIntegrityEnabled,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@debugChildIntegrityEnabled:set': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>(other)=>target.debugChildIntegrityEnabled=other,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@setupParentData': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.setupParentData,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@adoptChild': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.adoptChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@insert': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.insert,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@move': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.move,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@remove': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.remove,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@removeAll': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.removeAll,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@attach': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.attach,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@detach': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.detach,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@redepthChildren': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.redepthChildren,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@visitChildren': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@visitChildrenForSemantics': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@addInitialChild': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.addInitialChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@insertAndLayoutLeadingChild': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.insertAndLayoutLeadingChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@insertAndLayoutChild': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.insertAndLayoutChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@collectGarbage': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.collectGarbage,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@indexOf': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.indexOf,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@paintExtentOf': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.paintExtentOf,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@hitTestChildren': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.hitTestChildren,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@childMainAxisPosition': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@childScrollOffset': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.childScrollOffset,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@paintsChild': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.paintsChild,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@applyPaintTransform': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.applyPaintTransform,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@paint': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.paint,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@debugFillProperties': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.debugFillProperties,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@debugAssertChildListIsNonEmptyAndContiguous': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.debugAssertChildListIsNonEmptyAndContiguous,
'package:flutter/src/rendering/sliver_multi_box_adaptor.dart@RenderSliverMultiBoxAdaptor@debugDescribeChildren': (m.Scope scope, RenderSliverMultiBoxAdaptor target)=>target.debugDescribeChildren,

};
}