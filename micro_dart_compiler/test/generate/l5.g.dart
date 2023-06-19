import 'dart:convert';
import 'dart:async';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'dart:convert@@ascii': (m.Scope scope)=>ascii,
'dart:convert@AsciiCodec@#as': (m.Scope scope, target)=>()=>target as AsciiCodec,
'dart:convert@AsciiCodec@#is': (m.Scope scope, target)=>()=>target is AsciiCodec,
'dart:convert@AsciiCodec@name': (m.Scope scope, AsciiCodec target)=>target.name,
'dart:convert@AsciiCodec@encoder': (m.Scope scope, AsciiCodec target)=>target.encoder,
'dart:convert@AsciiCodec@decoder': (m.Scope scope, AsciiCodec target)=>target.decoder,
'dart:convert@AsciiCodec@': (m.Scope scope)=>({ allowInvalid}){
return AsciiCodec(allowInvalid:allowInvalid ?? false);
},
'dart:convert@AsciiCodec@encode': (m.Scope scope, AsciiCodec target)=>target.encode,
'dart:convert@AsciiCodec@decode': (m.Scope scope, AsciiCodec target)=>target.decode,
'dart:convert@AsciiEncoder@#as': (m.Scope scope, target)=>()=>target as AsciiEncoder,
'dart:convert@AsciiEncoder@#is': (m.Scope scope, target)=>()=>target is AsciiEncoder,
'dart:convert@AsciiEncoder@': (m.Scope scope)=>(){
return AsciiEncoder();
},
'dart:convert@AsciiDecoder@#as': (m.Scope scope, target)=>()=>target as AsciiDecoder,
'dart:convert@AsciiDecoder@#is': (m.Scope scope, target)=>()=>target is AsciiDecoder,
'dart:convert@AsciiDecoder@': (m.Scope scope)=>({ allowInvalid}){
return AsciiDecoder(allowInvalid:allowInvalid ?? false);
},
'dart:convert@AsciiDecoder@startChunkedConversion': (m.Scope scope, AsciiDecoder target)=>target.startChunkedConversion,
'dart:convert@@base64': (m.Scope scope)=>base64,
'dart:convert@@base64Url': (m.Scope scope)=>base64Url,
'dart:convert@Base64Codec@#as': (m.Scope scope, target)=>()=>target as Base64Codec,
'dart:convert@Base64Codec@#is': (m.Scope scope, target)=>()=>target is Base64Codec,
'dart:convert@Base64Codec@encoder': (m.Scope scope, Base64Codec target)=>target.encoder,
'dart:convert@Base64Codec@decoder': (m.Scope scope, Base64Codec target)=>target.decoder,
'dart:convert@Base64Codec@': (m.Scope scope)=>(){
return Base64Codec();
},
'dart:convert@Base64Codec@urlSafe': (m.Scope scope)=>Base64Codec.urlSafe,
'dart:convert@Base64Codec@decode': (m.Scope scope, Base64Codec target)=>target.decode,
'dart:convert@Base64Codec@normalize': (m.Scope scope, Base64Codec target)=>target.normalize,
'dart:convert@Base64Encoder@#as': (m.Scope scope, target)=>()=>target as Base64Encoder,
'dart:convert@Base64Encoder@#is': (m.Scope scope, target)=>()=>target is Base64Encoder,
'dart:convert@Base64Encoder@': (m.Scope scope)=>(){
return Base64Encoder();
},
'dart:convert@Base64Encoder@urlSafe': (m.Scope scope)=>Base64Encoder.urlSafe,
'dart:convert@Base64Encoder@convert': (m.Scope scope, Base64Encoder target)=>target.convert,
'dart:convert@Base64Encoder@startChunkedConversion': (m.Scope scope, Base64Encoder target)=>target.startChunkedConversion,
'dart:convert@Base64Decoder@#as': (m.Scope scope, target)=>()=>target as Base64Decoder,
'dart:convert@Base64Decoder@#is': (m.Scope scope, target)=>()=>target is Base64Decoder,
'dart:convert@Base64Decoder@': (m.Scope scope)=>(){
return Base64Decoder();
},
'dart:convert@Base64Decoder@convert': (m.Scope scope, Base64Decoder target)=>target.convert,
'dart:convert@Base64Decoder@startChunkedConversion': (m.Scope scope, Base64Decoder target)=>target.startChunkedConversion,
'dart:convert@@base64Encode': (m.Scope scope)=>base64Encode,
'dart:convert@@base64UrlEncode': (m.Scope scope)=>base64UrlEncode,
'dart:convert@@base64Decode': (m.Scope scope)=>base64Decode,
'dart:convert@ByteConversionSink@#as': (m.Scope scope, target)=>()=>target as ByteConversionSink,
'dart:convert@ByteConversionSink@#is': (m.Scope scope, target)=>()=>target is ByteConversionSink,
'dart:convert@ByteConversionSink@withCallback': (m.Scope scope)=>( callback){
void callbackProxy( accumulated) {
 engine.callFunctionPointer(scope, callback!,[accumulated], {});
}

return ByteConversionSink.withCallback(callbackProxy);
},
'dart:convert@ByteConversionSink@from': (m.Scope scope)=>ByteConversionSink.from,
'dart:convert@ByteConversionSink@addSlice': (m.Scope scope, ByteConversionSink target)=>target.addSlice,
'dart:convert@ChunkedConversionSink@#as': (m.Scope scope, target)=>()=>target as ChunkedConversionSink,
'dart:convert@ChunkedConversionSink@#is': (m.Scope scope, target)=>()=>target is ChunkedConversionSink,
'dart:convert@ChunkedConversionSink@withCallback': (m.Scope scope)=>( callback){
void callbackProxy( accumulated) {
 engine.callFunctionPointer(scope, callback!,[accumulated], {});
}

return ChunkedConversionSink.withCallback(callbackProxy);
},
'dart:convert@ChunkedConversionSink@add': (m.Scope scope, ChunkedConversionSink target)=>target.add,
'dart:convert@ChunkedConversionSink@close': (m.Scope scope, ChunkedConversionSink target)=>target.close,
'dart:convert@Codec@#as': (m.Scope scope, target)=>()=>target as Codec,
'dart:convert@Codec@#is': (m.Scope scope, target)=>()=>target is Codec,
'dart:convert@Codec@encoder': (m.Scope scope, Codec target)=>target.encoder,
'dart:convert@Codec@decoder': (m.Scope scope, Codec target)=>target.decoder,
'dart:convert@Codec@inverted': (m.Scope scope, Codec target)=>target.inverted,
'dart:convert@Codec@encode': (m.Scope scope, Codec target)=>target.encode,
'dart:convert@Codec@decode': (m.Scope scope, Codec target)=>target.decode,
'dart:convert@Codec@fuse': (m.Scope scope, Codec target)=>target.fuse,
'dart:convert@Converter@#as': (m.Scope scope, target)=>()=>target as Converter,
'dart:convert@Converter@#is': (m.Scope scope, target)=>()=>target is Converter,
'dart:convert@Converter@castFrom': (m.Scope scope)=>Converter.castFrom,
'dart:convert@Converter@convert': (m.Scope scope, Converter target)=>target.convert,
'dart:convert@Converter@fuse': (m.Scope scope, Converter target)=>target.fuse,
'dart:convert@Converter@startChunkedConversion': (m.Scope scope, Converter target)=>target.startChunkedConversion,
'dart:convert@Converter@bind': (m.Scope scope, Converter target)=>target.bind,
'dart:convert@Converter@cast': (m.Scope scope, Converter target)=>target.cast,
'dart:convert@Encoding@#as': (m.Scope scope, target)=>()=>target as Encoding,
'dart:convert@Encoding@#is': (m.Scope scope, target)=>()=>target is Encoding,
'dart:convert@Encoding@encoder': (m.Scope scope, Encoding target)=>target.encoder,
'dart:convert@Encoding@decoder': (m.Scope scope, Encoding target)=>target.decoder,
'dart:convert@Encoding@name': (m.Scope scope, Encoding target)=>target.name,
'dart:convert@Encoding@decodeStream': (m.Scope scope, Encoding target)=>target.decodeStream,
'dart:convert@Encoding@getByName': (m.Scope scope)=>Encoding.getByName,
'dart:convert@@htmlEscape': (m.Scope scope)=>htmlEscape,
'dart:convert@HtmlEscapeMode@#as': (m.Scope scope, target)=>()=>target as HtmlEscapeMode,
'dart:convert@HtmlEscapeMode@#is': (m.Scope scope, target)=>()=>target is HtmlEscapeMode,
'dart:convert@HtmlEscapeMode@escapeLtGt': (m.Scope scope, HtmlEscapeMode target)=>target.escapeLtGt,
'dart:convert@HtmlEscapeMode@escapeQuot': (m.Scope scope, HtmlEscapeMode target)=>target.escapeQuot,
'dart:convert@HtmlEscapeMode@escapeApos': (m.Scope scope, HtmlEscapeMode target)=>target.escapeApos,
'dart:convert@HtmlEscapeMode@escapeSlash': (m.Scope scope, HtmlEscapeMode target)=>target.escapeSlash,
'dart:convert@HtmlEscapeMode@unknown': (m.Scope scope)=>HtmlEscapeMode.unknown,
'dart:convert@HtmlEscapeMode@attribute': (m.Scope scope)=>HtmlEscapeMode.attribute,
'dart:convert@HtmlEscapeMode@sqAttribute': (m.Scope scope)=>HtmlEscapeMode.sqAttribute,
'dart:convert@HtmlEscapeMode@element': (m.Scope scope)=>HtmlEscapeMode.element,
'dart:convert@HtmlEscapeMode@': (m.Scope scope)=>({ escapeApos,  escapeLtGt,  escapeQuot,  escapeSlash,  name}){
return HtmlEscapeMode(escapeApos:escapeApos ?? false, escapeLtGt:escapeLtGt ?? false, escapeQuot:escapeQuot ?? false, escapeSlash:escapeSlash ?? false, name:name ?? "custom");
},
'dart:convert@HtmlEscapeMode@toString': (m.Scope scope, HtmlEscapeMode target)=>target.toString,
'dart:convert@HtmlEscape@#as': (m.Scope scope, target)=>()=>target as HtmlEscape,
'dart:convert@HtmlEscape@#is': (m.Scope scope, target)=>()=>target is HtmlEscape,
'dart:convert@HtmlEscape@mode': (m.Scope scope, HtmlEscape target)=>target.mode,
'dart:convert@HtmlEscape@': (m.Scope scope)=>([HtmlEscapeMode? mode]){
if(mode == null){
return HtmlEscape();
}
return HtmlEscape(mode!);
},
'dart:convert@HtmlEscape@convert': (m.Scope scope, HtmlEscape target)=>target.convert,
'dart:convert@HtmlEscape@startChunkedConversion': (m.Scope scope, HtmlEscape target)=>target.startChunkedConversion,
'dart:convert@@json': (m.Scope scope)=>json,
'dart:convert@JsonUnsupportedObjectError@#as': (m.Scope scope, target)=>()=>target as JsonUnsupportedObjectError,
'dart:convert@JsonUnsupportedObjectError@#is': (m.Scope scope, target)=>()=>target is JsonUnsupportedObjectError,
'dart:convert@JsonUnsupportedObjectError@unsupportedObject': (m.Scope scope, JsonUnsupportedObjectError target)=>target.unsupportedObject,
'dart:convert@JsonUnsupportedObjectError@cause': (m.Scope scope, JsonUnsupportedObjectError target)=>target.cause,
'dart:convert@JsonUnsupportedObjectError@partialResult': (m.Scope scope, JsonUnsupportedObjectError target)=>target.partialResult,
'dart:convert@JsonUnsupportedObjectError@': (m.Scope scope)=>JsonUnsupportedObjectError,
'dart:convert@JsonUnsupportedObjectError@toString': (m.Scope scope, JsonUnsupportedObjectError target)=>target.toString,
'dart:convert@JsonCyclicError@#as': (m.Scope scope, target)=>()=>target as JsonCyclicError,
'dart:convert@JsonCyclicError@#is': (m.Scope scope, target)=>()=>target is JsonCyclicError,
'dart:convert@JsonCyclicError@': (m.Scope scope)=>JsonCyclicError,
'dart:convert@JsonCyclicError@toString': (m.Scope scope, JsonCyclicError target)=>target.toString,
'dart:convert@JsonCodec@#as': (m.Scope scope, target)=>()=>target as JsonCodec,
'dart:convert@JsonCodec@#is': (m.Scope scope, target)=>()=>target is JsonCodec,
'dart:convert@JsonCodec@encoder': (m.Scope scope, JsonCodec target)=>target.encoder,
'dart:convert@JsonCodec@decoder': (m.Scope scope, JsonCodec target)=>target.decoder,
'dart:convert@JsonCodec@': (m.Scope scope)=>({ reviver,  toEncodable}){
Object reviverProxy( key,  value) {
return  engine.callFunctionPointer(scope, reviver!,[key, value], {});
}

Object toEncodableProxy( object) {
return  engine.callFunctionPointer(scope, toEncodable!,[object], {});
}

return JsonCodec(reviver:reviver == null ? null :reviverProxy, toEncodable:toEncodable == null ? null :toEncodableProxy);
},
'dart:convert@JsonCodec@withReviver': (m.Scope scope)=>( reviver){
dynamic reviverProxy( key,  value) {
return  engine.callFunctionPointer(scope, reviver!,[key, value], {});
}

return JsonCodec.withReviver(reviverProxy);
},
'dart:convert@JsonCodec@decode': (m.Scope scope, JsonCodec target)=>( source, { reviver}){
Object reviverProxy( key,  value) {
return  engine.callFunctionPointer(scope, reviver!,[key, value], {});
}

return target.decode(source, reviver:reviver == null ? null :reviverProxy);
},
'dart:convert@JsonCodec@encode': (m.Scope scope, JsonCodec target)=>( value, { toEncodable}){
Object toEncodableProxy( object) {
return  engine.callFunctionPointer(scope, toEncodable!,[object], {});
}

return target.encode(value, toEncodable:toEncodable == null ? null :toEncodableProxy);
},
'dart:convert@JsonEncoder@#as': (m.Scope scope, target)=>()=>target as JsonEncoder,
'dart:convert@JsonEncoder@#is': (m.Scope scope, target)=>()=>target is JsonEncoder,
'dart:convert@JsonEncoder@indent': (m.Scope scope, JsonEncoder target)=>target.indent,
'dart:convert@JsonEncoder@': (m.Scope scope)=>([m.FunctionPointer? toEncodable]){
if(toEncodable == null){
return JsonEncoder();
}
Object toEncodableProxy( object) {
return  engine.callFunctionPointer(scope, toEncodable!,[object], {});
}

return JsonEncoder(toEncodableProxy);
},
'dart:convert@JsonEncoder@withIndent': (m.Scope scope)=>( indent, [m.FunctionPointer? toEncodable]){
if(toEncodable == null){
return JsonEncoder.withIndent(indent);
}
Object toEncodableProxy( object) {
return  engine.callFunctionPointer(scope, toEncodable!,[object], {});
}

return JsonEncoder.withIndent(indent, toEncodableProxy);
},
'dart:convert@JsonEncoder@convert': (m.Scope scope, JsonEncoder target)=>target.convert,
'dart:convert@JsonEncoder@startChunkedConversion': (m.Scope scope, JsonEncoder target)=>target.startChunkedConversion,
'dart:convert@JsonEncoder@bind': (m.Scope scope, JsonEncoder target)=>target.bind,
'dart:convert@JsonEncoder@fuse': (m.Scope scope, JsonEncoder target)=>target.fuse,
'dart:convert@JsonUtf8Encoder@#as': (m.Scope scope, target)=>()=>target as JsonUtf8Encoder,
'dart:convert@JsonUtf8Encoder@#is': (m.Scope scope, target)=>()=>target is JsonUtf8Encoder,
'dart:convert@JsonUtf8Encoder@': (m.Scope scope)=>([String? indent, m.FunctionPointer? toEncodable, int? bufferSize]){
if(indent == null && toEncodable == null && bufferSize == null){
return JsonUtf8Encoder();
}
if(toEncodable == null && bufferSize == null){
return JsonUtf8Encoder(indent!);
}
dynamic toEncodableProxy( object) {
return  engine.callFunctionPointer(scope, toEncodable!,[object], {});
}

if(bufferSize == null){
return JsonUtf8Encoder(indent!, toEncodableProxy);
}
return JsonUtf8Encoder(indent!, toEncodableProxy, bufferSize!);
},
'dart:convert@JsonUtf8Encoder@convert': (m.Scope scope, JsonUtf8Encoder target)=>target.convert,
'dart:convert@JsonUtf8Encoder@startChunkedConversion': (m.Scope scope, JsonUtf8Encoder target)=>target.startChunkedConversion,
'dart:convert@JsonUtf8Encoder@bind': (m.Scope scope, JsonUtf8Encoder target)=>target.bind,
'dart:convert@JsonDecoder@#as': (m.Scope scope, target)=>()=>target as JsonDecoder,
'dart:convert@JsonDecoder@#is': (m.Scope scope, target)=>()=>target is JsonDecoder,
'dart:convert@JsonDecoder@': (m.Scope scope)=>([m.FunctionPointer? reviver]){
if(reviver == null){
return JsonDecoder();
}
Object reviverProxy( key,  value) {
return  engine.callFunctionPointer(scope, reviver!,[key, value], {});
}

return JsonDecoder(reviverProxy);
},
'dart:convert@JsonDecoder@convert': (m.Scope scope, JsonDecoder target)=>target.convert,
'dart:convert@JsonDecoder@startChunkedConversion': (m.Scope scope, JsonDecoder target)=>target.startChunkedConversion,
'dart:convert@JsonDecoder@bind': (m.Scope scope, JsonDecoder target)=>target.bind,
'dart:convert@@jsonEncode': (m.Scope scope)=>( object, { toEncodable}){
Object toEncodableProxy( nonEncodable) {
return  engine.callFunctionPointer(scope, toEncodable!,[nonEncodable], {});
}

return jsonEncode(object, toEncodable:toEncodable == null ? null :toEncodableProxy);
},
'dart:convert@@jsonDecode': (m.Scope scope)=>( source, { reviver}){
Object reviverProxy( key,  value) {
return  engine.callFunctionPointer(scope, reviver!,[key, value], {});
}

return jsonDecode(source, reviver:reviver == null ? null :reviverProxy);
},
'dart:convert@@latin1': (m.Scope scope)=>latin1,
'dart:convert@Latin1Codec@#as': (m.Scope scope, target)=>()=>target as Latin1Codec,
'dart:convert@Latin1Codec@#is': (m.Scope scope, target)=>()=>target is Latin1Codec,
'dart:convert@Latin1Codec@name': (m.Scope scope, Latin1Codec target)=>target.name,
'dart:convert@Latin1Codec@encoder': (m.Scope scope, Latin1Codec target)=>target.encoder,
'dart:convert@Latin1Codec@decoder': (m.Scope scope, Latin1Codec target)=>target.decoder,
'dart:convert@Latin1Codec@': (m.Scope scope)=>({ allowInvalid}){
return Latin1Codec(allowInvalid:allowInvalid ?? false);
},
'dart:convert@Latin1Codec@encode': (m.Scope scope, Latin1Codec target)=>target.encode,
'dart:convert@Latin1Codec@decode': (m.Scope scope, Latin1Codec target)=>target.decode,
'dart:convert@Latin1Encoder@#as': (m.Scope scope, target)=>()=>target as Latin1Encoder,
'dart:convert@Latin1Encoder@#is': (m.Scope scope, target)=>()=>target is Latin1Encoder,
'dart:convert@Latin1Encoder@': (m.Scope scope)=>(){
return Latin1Encoder();
},
'dart:convert@Latin1Decoder@#as': (m.Scope scope, target)=>()=>target as Latin1Decoder,
'dart:convert@Latin1Decoder@#is': (m.Scope scope, target)=>()=>target is Latin1Decoder,
'dart:convert@Latin1Decoder@': (m.Scope scope)=>({ allowInvalid}){
return Latin1Decoder(allowInvalid:allowInvalid ?? false);
},
'dart:convert@Latin1Decoder@startChunkedConversion': (m.Scope scope, Latin1Decoder target)=>target.startChunkedConversion,
'dart:convert@LineSplitter@#as': (m.Scope scope, target)=>()=>target as LineSplitter,
'dart:convert@LineSplitter@#is': (m.Scope scope, target)=>()=>target is LineSplitter,
'dart:convert@LineSplitter@': (m.Scope scope)=>(){
return LineSplitter();
},
'dart:convert@LineSplitter@split': (m.Scope scope)=>LineSplitter.split,
'dart:convert@LineSplitter@convert': (m.Scope scope, LineSplitter target)=>target.convert,
'dart:convert@LineSplitter@startChunkedConversion': (m.Scope scope, LineSplitter target)=>target.startChunkedConversion,
'dart:convert@LineSplitter@bind': (m.Scope scope, LineSplitter target)=>target.bind,
'dart:convert@StringConversionSink@#as': (m.Scope scope, target)=>()=>target as StringConversionSink,
'dart:convert@StringConversionSink@#is': (m.Scope scope, target)=>()=>target is StringConversionSink,
'dart:convert@StringConversionSink@withCallback': (m.Scope scope)=>( callback){
void callbackProxy( accumulated) {
 engine.callFunctionPointer(scope, callback!,[accumulated], {});
}

return StringConversionSink.withCallback(callbackProxy);
},
'dart:convert@StringConversionSink@from': (m.Scope scope)=>StringConversionSink.from,
'dart:convert@StringConversionSink@fromStringSink': (m.Scope scope)=>StringConversionSink.fromStringSink,
'dart:convert@StringConversionSink@addSlice': (m.Scope scope, StringConversionSink target)=>target.addSlice,
'dart:convert@StringConversionSink@add': (m.Scope scope, StringConversionSink target)=>target.add,
'dart:convert@StringConversionSink@asUtf8Sink': (m.Scope scope, StringConversionSink target)=>target.asUtf8Sink,
'dart:convert@StringConversionSink@asStringSink': (m.Scope scope, StringConversionSink target)=>target.asStringSink,
'dart:convert@ClosableStringSink@#as': (m.Scope scope, target)=>()=>target as ClosableStringSink,
'dart:convert@ClosableStringSink@#is': (m.Scope scope, target)=>()=>target is ClosableStringSink,
'dart:convert@ClosableStringSink@fromStringSink': (m.Scope scope)=>( sink,  onClose){
void onCloseProxy() {
 engine.callFunctionPointer(scope, onClose!,[], {});
}

return ClosableStringSink.fromStringSink(sink, onCloseProxy);
},
'dart:convert@ClosableStringSink@close': (m.Scope scope, ClosableStringSink target)=>target.close,
'dart:convert@@unicodeReplacementCharacterRune': (m.Scope scope)=>unicodeReplacementCharacterRune,
'dart:convert@@unicodeBomCharacterRune': (m.Scope scope)=>unicodeBomCharacterRune,
'dart:convert@@utf8': (m.Scope scope)=>utf8,
'dart:convert@Utf8Codec@#as': (m.Scope scope, target)=>()=>target as Utf8Codec,
'dart:convert@Utf8Codec@#is': (m.Scope scope, target)=>()=>target is Utf8Codec,
'dart:convert@Utf8Codec@name': (m.Scope scope, Utf8Codec target)=>target.name,
'dart:convert@Utf8Codec@encoder': (m.Scope scope, Utf8Codec target)=>target.encoder,
'dart:convert@Utf8Codec@decoder': (m.Scope scope, Utf8Codec target)=>target.decoder,
'dart:convert@Utf8Codec@': (m.Scope scope)=>({ allowMalformed}){
return Utf8Codec(allowMalformed:allowMalformed ?? false);
},
'dart:convert@Utf8Codec@decode': (m.Scope scope, Utf8Codec target)=>target.decode,
'dart:convert@Utf8Encoder@#as': (m.Scope scope, target)=>()=>target as Utf8Encoder,
'dart:convert@Utf8Encoder@#is': (m.Scope scope, target)=>()=>target is Utf8Encoder,
'dart:convert@Utf8Encoder@': (m.Scope scope)=>(){
return Utf8Encoder();
},
'dart:convert@Utf8Encoder@convert': (m.Scope scope, Utf8Encoder target)=>target.convert,
'dart:convert@Utf8Encoder@startChunkedConversion': (m.Scope scope, Utf8Encoder target)=>target.startChunkedConversion,
'dart:convert@Utf8Encoder@bind': (m.Scope scope, Utf8Encoder target)=>target.bind,
'dart:convert@Utf8Decoder@#as': (m.Scope scope, target)=>()=>target as Utf8Decoder,
'dart:convert@Utf8Decoder@#is': (m.Scope scope, target)=>()=>target is Utf8Decoder,
'dart:convert@Utf8Decoder@': (m.Scope scope)=>({ allowMalformed}){
return Utf8Decoder(allowMalformed:allowMalformed ?? false);
},
'dart:convert@Utf8Decoder@convert': (m.Scope scope, Utf8Decoder target)=>target.convert,
'dart:convert@Utf8Decoder@startChunkedConversion': (m.Scope scope, Utf8Decoder target)=>target.startChunkedConversion,
'dart:convert@Utf8Decoder@bind': (m.Scope scope, Utf8Decoder target)=>target.bind,
'dart:convert@Utf8Decoder@fuse': (m.Scope scope, Utf8Decoder target)=>target.fuse,

};
}