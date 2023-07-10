import 'package:flutter/src/foundation/node.dart';
import 'package:meta/meta.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/node.dart@AbstractNode@#as': (m.Scope scope, target)=>()=>target as AbstractNode,
'package:flutter/src/foundation/node.dart@AbstractNode@#is': (m.Scope scope, target)=>()=>target is AbstractNode,
'package:flutter/src/foundation/node.dart@AbstractNode@depth': (m.Scope scope, AbstractNode target)=>target.depth,
'package:flutter/src/foundation/node.dart@AbstractNode@owner': (m.Scope scope, AbstractNode target)=>target.owner,
'package:flutter/src/foundation/node.dart@AbstractNode@attached': (m.Scope scope, AbstractNode target)=>target.attached,
'package:flutter/src/foundation/node.dart@AbstractNode@parent': (m.Scope scope, AbstractNode target)=>target.parent,
'package:flutter/src/foundation/node.dart@AbstractNode@': (m.Scope scope)=>(){
return AbstractNode();
},
'package:flutter/src/foundation/node.dart@AbstractNode@redepthChild': (m.Scope scope, AbstractNode target)=>target.redepthChild,
'package:flutter/src/foundation/node.dart@AbstractNode@redepthChildren': (m.Scope scope, AbstractNode target)=>target.redepthChildren,
'package:flutter/src/foundation/node.dart@AbstractNode@attach': (m.Scope scope, AbstractNode target)=>target.attach,
'package:flutter/src/foundation/node.dart@AbstractNode@detach': (m.Scope scope, AbstractNode target)=>target.detach,
'package:flutter/src/foundation/node.dart@AbstractNode@adoptChild': (m.Scope scope, AbstractNode target)=>target.adoptChild,
'package:flutter/src/foundation/node.dart@AbstractNode@dropChild': (m.Scope scope, AbstractNode target)=>target.dropChild,

};
}