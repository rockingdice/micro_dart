import 'package:flutter/src/widgets/slotted_render_object_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@#as': (m.Scope scope, target)=>()=>target as SlottedRenderObjectElement,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@#is': (m.Scope scope, target)=>()=>target is SlottedRenderObjectElement,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@renderObject': (m.Scope scope, SlottedRenderObjectElement target)=>target.renderObject,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@': (m.Scope scope)=><S>( widget){
return SlottedRenderObjectElement(widget);
},
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@visitChildren': (m.Scope scope, SlottedRenderObjectElement target)=>( visitor){
void visitorProxy( element) {
 engine.callFunctionPointer(scope, visitor!,[element], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@forgetChild': (m.Scope scope, SlottedRenderObjectElement target)=>target.forgetChild,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@mount': (m.Scope scope, SlottedRenderObjectElement target)=>target.mount,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@update': (m.Scope scope, SlottedRenderObjectElement target)=>target.update,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@insertRenderObjectChild': (m.Scope scope, SlottedRenderObjectElement target)=>target.insertRenderObjectChild,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@removeRenderObjectChild': (m.Scope scope, SlottedRenderObjectElement target)=>target.removeRenderObjectChild,
'package:flutter/src/widgets/slotted_render_object_widget.dart@SlottedRenderObjectElement@moveRenderObjectChild': (m.Scope scope, SlottedRenderObjectElement target)=>target.moveRenderObjectChild,

};
}