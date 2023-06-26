import 'package:flutter/src/foundation/unicode.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/unicode.dart@Unicode@#as': (m.Scope scope, target)=>()=>target as Unicode,
'package:flutter/src/foundation/unicode.dart@Unicode@#is': (m.Scope scope, target)=>()=>target is Unicode,
'package:flutter/src/foundation/unicode.dart@Unicode@LRE': (m.Scope scope)=>Unicode.LRE,
'package:flutter/src/foundation/unicode.dart@Unicode@RLE': (m.Scope scope)=>Unicode.RLE,
'package:flutter/src/foundation/unicode.dart@Unicode@PDF': (m.Scope scope)=>Unicode.PDF,
'package:flutter/src/foundation/unicode.dart@Unicode@LRO': (m.Scope scope)=>Unicode.LRO,
'package:flutter/src/foundation/unicode.dart@Unicode@RLO': (m.Scope scope)=>Unicode.RLO,
'package:flutter/src/foundation/unicode.dart@Unicode@LRI': (m.Scope scope)=>Unicode.LRI,
'package:flutter/src/foundation/unicode.dart@Unicode@RLI': (m.Scope scope)=>Unicode.RLI,
'package:flutter/src/foundation/unicode.dart@Unicode@FSI': (m.Scope scope)=>Unicode.FSI,
'package:flutter/src/foundation/unicode.dart@Unicode@PDI': (m.Scope scope)=>Unicode.PDI,
'package:flutter/src/foundation/unicode.dart@Unicode@LRM': (m.Scope scope)=>Unicode.LRM,
'package:flutter/src/foundation/unicode.dart@Unicode@RLM': (m.Scope scope)=>Unicode.RLM,
'package:flutter/src/foundation/unicode.dart@Unicode@ALM': (m.Scope scope)=>Unicode.ALM,

};
}