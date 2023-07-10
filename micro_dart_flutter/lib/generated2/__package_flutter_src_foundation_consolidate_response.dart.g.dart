import 'package:flutter/src/foundation/consolidate_response.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/foundation/consolidate_response.dart@@consolidateHttpClientResponseBytes': (m.Scope scope)=>( response, { autoUncompress,  onBytesReceived}){
void onBytesReceivedProxy( cumulative,  total) {
 engine.callFunctionPointer(scope, onBytesReceived!,[cumulative, total], {});
}

return consolidateHttpClientResponseBytes(response, autoUncompress:autoUncompress ?? true, onBytesReceived:onBytesReceived == null ? null :onBytesReceivedProxy);
},

};
}