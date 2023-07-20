// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'dart:convert';
import 'dart:async';
import 'dart:typed_data';

const libraryMirror = m.LibraryMirror(
  'dart:convert',
  {
    'ascii': _ascii$,
    'AsciiCodec.': _AsciiCodec__$,
    'AsciiEncoder.': _AsciiEncoder__$,
    'AsciiDecoder.': _AsciiDecoder__$,
    'base64': _base64$,
    'base64Url': _base64Url$,
    'Base64Codec.': _Base64Codec__$,
    'Base64Codec.urlSafe': _Base64Codec_urlSafe_$,
    'Base64Encoder.': _Base64Encoder__$,
    'Base64Encoder.urlSafe': _Base64Encoder_urlSafe_$,
    'Base64Decoder.': _Base64Decoder__$,
    'base64Encode': _base64Encode$,
    'base64UrlEncode': _base64UrlEncode$,
    'base64Decode': _base64Decode$,
    'ByteConversionSink.withCallback': _ByteConversionSink_withCallback_$,
    'ByteConversionSink.from': _ByteConversionSink_from_$,
    'ChunkedConversionSink.withCallback': _ChunkedConversionSink_withCallback_$,
    'Converter.castFrom': _Converter_castFrom$,
    'Encoding.getByName': _Encoding_getByName$,
    'htmlEscape': _htmlEscape$,
    'HtmlEscapeMode.unknown': _HtmlEscapeMode_unknown$,
    'HtmlEscapeMode.attribute': _HtmlEscapeMode_attribute$,
    'HtmlEscapeMode.sqAttribute': _HtmlEscapeMode_sqAttribute$,
    'HtmlEscapeMode.element': _HtmlEscapeMode_element$,
    'HtmlEscapeMode.': _HtmlEscapeMode__$,
    'HtmlEscape.': _HtmlEscape__$,
    'json': _json$,
    'JsonUnsupportedObjectError.': _JsonUnsupportedObjectError__$,
    'JsonCyclicError.': _JsonCyclicError__$,
    'JsonCodec.': _JsonCodec__$,
    'JsonCodec.withReviver': _JsonCodec_withReviver_$,
    'JsonCodec.decode': _JsonCodec_decode$,
    'JsonCodec.encode': _JsonCodec_encode$,
    'JsonEncoder.': _JsonEncoder__$,
    'JsonEncoder.withIndent': _JsonEncoder_withIndent_$,
    'JsonUtf8Encoder.': _JsonUtf8Encoder__$,
    'JsonDecoder.': _JsonDecoder__$,
    'jsonEncode': _jsonEncode$,
    'jsonDecode': _jsonDecode$,
    'latin1': _latin1$,
    'Latin1Codec.': _Latin1Codec__$,
    'Latin1Encoder.': _Latin1Encoder__$,
    'Latin1Decoder.': _Latin1Decoder__$,
    'LineSplitter.': _LineSplitter__$,
    'LineSplitter.split': _LineSplitter_split$,
    'StringConversionSink.withCallback': _StringConversionSink_withCallback_$,
    'StringConversionSink.from': _StringConversionSink_from_$,
    'StringConversionSink.fromStringSink':
        _StringConversionSink_fromStringSink_$,
    'ClosableStringSink.fromStringSink': _ClosableStringSink_fromStringSink_$,
    'unicodeReplacementCharacterRune': _unicodeReplacementCharacterRune$,
    'unicodeBomCharacterRune': _unicodeBomCharacterRune$,
    'utf8': _utf8$,
    'Utf8Codec.': _Utf8Codec__$,
    'Utf8Encoder.': _Utf8Encoder__$,
    'Utf8Decoder.': _Utf8Decoder__$,
  },
  {},
  {
    'AsciiCodec': m.ClassMirror(
      'AsciiCodec',
      {
        '#as': AsciiCodec_as$,
        '#is': AsciiCodec_is$,
        'name': _AsciiCodec_name$,
        'encoder': _AsciiCodec_encoder$,
        'decoder': _AsciiCodec_decoder$,
        'encode': _AsciiCodec_encode$,
        'decode': _AsciiCodec_decode$,
      },
      {},
    ),
    'AsciiEncoder': m.ClassMirror(
      'AsciiEncoder',
      {
        '#as': AsciiEncoder_as$,
        '#is': AsciiEncoder_is$,
      },
      {},
    ),
    'AsciiDecoder': m.ClassMirror(
      'AsciiDecoder',
      {
        '#as': AsciiDecoder_as$,
        '#is': AsciiDecoder_is$,
        'startChunkedConversion': _AsciiDecoder_startChunkedConversion$,
      },
      {},
    ),
    'Base64Codec': m.ClassMirror(
      'Base64Codec',
      {
        '#as': Base64Codec_as$,
        '#is': Base64Codec_is$,
        'encoder': _Base64Codec_encoder$,
        'decoder': _Base64Codec_decoder$,
        'decode': _Base64Codec_decode$,
        'normalize': _Base64Codec_normalize$,
      },
      {},
    ),
    'Base64Encoder': m.ClassMirror(
      'Base64Encoder',
      {
        '#as': Base64Encoder_as$,
        '#is': Base64Encoder_is$,
        'convert': _Base64Encoder_convert$,
        'startChunkedConversion': _Base64Encoder_startChunkedConversion$,
      },
      {},
    ),
    'Base64Decoder': m.ClassMirror(
      'Base64Decoder',
      {
        '#as': Base64Decoder_as$,
        '#is': Base64Decoder_is$,
        'convert': _Base64Decoder_convert$,
        'startChunkedConversion': _Base64Decoder_startChunkedConversion$,
      },
      {},
    ),
    'ByteConversionSink': m.ClassMirror(
      'ByteConversionSink',
      {
        '#as': ByteConversionSink_as$,
        '#is': ByteConversionSink_is$,
        'addSlice': _ByteConversionSink_addSlice$,
      },
      {},
    ),
    'ChunkedConversionSink': m.ClassMirror(
      'ChunkedConversionSink',
      {
        '#as': ChunkedConversionSink_as$,
        '#is': ChunkedConversionSink_is$,
        'add': _ChunkedConversionSink_add$,
        'close': _ChunkedConversionSink_close$,
      },
      {},
    ),
    'Codec': m.ClassMirror(
      'Codec',
      {
        '#as': Codec_as$,
        '#is': Codec_is$,
        'encoder': _Codec_encoder$,
        'decoder': _Codec_decoder$,
        'inverted': _Codec_inverted$,
        'encode': _Codec_encode$,
        'decode': _Codec_decode$,
        'fuse': _Codec_fuse$,
      },
      {},
    ),
    'Converter': m.ClassMirror(
      'Converter',
      {
        '#as': Converter_as$,
        '#is': Converter_is$,
        'convert': _Converter_convert$,
        'fuse': _Converter_fuse$,
        'startChunkedConversion': _Converter_startChunkedConversion$,
        'bind': _Converter_bind$,
        'cast': _Converter_cast$,
      },
      {},
    ),
    'Encoding': m.ClassMirror(
      'Encoding',
      {
        '#as': Encoding_as$,
        '#is': Encoding_is$,
        'encoder': _Encoding_encoder$,
        'decoder': _Encoding_decoder$,
        'name': _Encoding_name$,
        'decodeStream': _Encoding_decodeStream$,
      },
      {},
    ),
    'HtmlEscapeMode': m.ClassMirror(
      'HtmlEscapeMode',
      {
        '#as': HtmlEscapeMode_as$,
        '#is': HtmlEscapeMode_is$,
        'escapeLtGt': _HtmlEscapeMode_escapeLtGt$,
        'escapeQuot': _HtmlEscapeMode_escapeQuot$,
        'escapeApos': _HtmlEscapeMode_escapeApos$,
        'escapeSlash': _HtmlEscapeMode_escapeSlash$,
        'toString': _HtmlEscapeMode_toString$,
      },
      {},
    ),
    'HtmlEscape': m.ClassMirror(
      'HtmlEscape',
      {
        '#as': HtmlEscape_as$,
        '#is': HtmlEscape_is$,
        'mode': _HtmlEscape_mode$,
        'convert': _HtmlEscape_convert$,
        'startChunkedConversion': _HtmlEscape_startChunkedConversion$,
      },
      {},
    ),
    'JsonUnsupportedObjectError': m.ClassMirror(
      'JsonUnsupportedObjectError',
      {
        '#as': JsonUnsupportedObjectError_as$,
        '#is': JsonUnsupportedObjectError_is$,
        'unsupportedObject': _JsonUnsupportedObjectError_unsupportedObject$,
        'cause': _JsonUnsupportedObjectError_cause$,
        'partialResult': _JsonUnsupportedObjectError_partialResult$,
        'toString': _JsonUnsupportedObjectError_toString$,
      },
      {},
    ),
    'JsonCyclicError': m.ClassMirror(
      'JsonCyclicError',
      {
        '#as': JsonCyclicError_as$,
        '#is': JsonCyclicError_is$,
        'toString': _JsonCyclicError_toString$,
      },
      {},
    ),
    'JsonCodec': m.ClassMirror(
      'JsonCodec',
      {
        '#as': JsonCodec_as$,
        '#is': JsonCodec_is$,
        'encoder': _JsonCodec_encoder$,
        'decoder': _JsonCodec_decoder$,
      },
      {},
    ),
    'JsonEncoder': m.ClassMirror(
      'JsonEncoder',
      {
        '#as': JsonEncoder_as$,
        '#is': JsonEncoder_is$,
        'indent': _JsonEncoder_indent$,
        'convert': _JsonEncoder_convert$,
        'startChunkedConversion': _JsonEncoder_startChunkedConversion$,
        'bind': _JsonEncoder_bind$,
        'fuse': _JsonEncoder_fuse$,
      },
      {},
    ),
    'JsonUtf8Encoder': m.ClassMirror(
      'JsonUtf8Encoder',
      {
        '#as': JsonUtf8Encoder_as$,
        '#is': JsonUtf8Encoder_is$,
        'convert': _JsonUtf8Encoder_convert$,
        'startChunkedConversion': _JsonUtf8Encoder_startChunkedConversion$,
        'bind': _JsonUtf8Encoder_bind$,
      },
      {},
    ),
    'JsonDecoder': m.ClassMirror(
      'JsonDecoder',
      {
        '#as': JsonDecoder_as$,
        '#is': JsonDecoder_is$,
        'convert': _JsonDecoder_convert$,
        'startChunkedConversion': _JsonDecoder_startChunkedConversion$,
        'bind': _JsonDecoder_bind$,
      },
      {},
    ),
    'Latin1Codec': m.ClassMirror(
      'Latin1Codec',
      {
        '#as': Latin1Codec_as$,
        '#is': Latin1Codec_is$,
        'name': _Latin1Codec_name$,
        'encoder': _Latin1Codec_encoder$,
        'decoder': _Latin1Codec_decoder$,
        'encode': _Latin1Codec_encode$,
        'decode': _Latin1Codec_decode$,
      },
      {},
    ),
    'Latin1Encoder': m.ClassMirror(
      'Latin1Encoder',
      {
        '#as': Latin1Encoder_as$,
        '#is': Latin1Encoder_is$,
      },
      {},
    ),
    'Latin1Decoder': m.ClassMirror(
      'Latin1Decoder',
      {
        '#as': Latin1Decoder_as$,
        '#is': Latin1Decoder_is$,
        'startChunkedConversion': _Latin1Decoder_startChunkedConversion$,
      },
      {},
    ),
    'LineSplitter': m.ClassMirror(
      'LineSplitter',
      {
        '#as': LineSplitter_as$,
        '#is': LineSplitter_is$,
        'convert': _LineSplitter_convert$,
        'startChunkedConversion': _LineSplitter_startChunkedConversion$,
        'bind': _LineSplitter_bind$,
      },
      {},
    ),
    'StringConversionSink': m.ClassMirror(
      'StringConversionSink',
      {
        '#as': StringConversionSink_as$,
        '#is': StringConversionSink_is$,
        'addSlice': _StringConversionSink_addSlice$,
        'add': _StringConversionSink_add$,
        'asUtf8Sink': _StringConversionSink_asUtf8Sink$,
        'asStringSink': _StringConversionSink_asStringSink$,
      },
      {},
    ),
    'ClosableStringSink': m.ClassMirror(
      'ClosableStringSink',
      {
        '#as': ClosableStringSink_as$,
        '#is': ClosableStringSink_is$,
        'close': _ClosableStringSink_close$,
      },
      {},
    ),
    'Utf8Codec': m.ClassMirror(
      'Utf8Codec',
      {
        '#as': Utf8Codec_as$,
        '#is': Utf8Codec_is$,
        'name': _Utf8Codec_name$,
        'encoder': _Utf8Codec_encoder$,
        'decoder': _Utf8Codec_decoder$,
        'decode': _Utf8Codec_decode$,
      },
      {},
    ),
    'Utf8Encoder': m.ClassMirror(
      'Utf8Encoder',
      {
        '#as': Utf8Encoder_as$,
        '#is': Utf8Encoder_is$,
        'convert': _Utf8Encoder_convert$,
        'startChunkedConversion': _Utf8Encoder_startChunkedConversion$,
        'bind': _Utf8Encoder_bind$,
      },
      {},
    ),
    'Utf8Decoder': m.ClassMirror(
      'Utf8Decoder',
      {
        '#as': Utf8Decoder_as$,
        '#is': Utf8Decoder_is$,
        'convert': _Utf8Decoder_convert$,
        'startChunkedConversion': _Utf8Decoder_startChunkedConversion$,
        'bind': _Utf8Decoder_bind$,
        'fuse': _Utf8Decoder_fuse$,
      },
      {},
    ),
  },
);
Function _ascii$(m.Scope scope$) => () => ascii;
Function AsciiCodec_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as AsciiCodec;
Function AsciiCodec_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is AsciiCodec;
Function _AsciiCodec_name$(
  m.Scope scope$,
  AsciiCodec target$,
) =>
    () {
      return target$.name;
    };
Function _AsciiCodec_encoder$(
  m.Scope scope$,
  AsciiCodec target$,
) =>
    () {
      return target$.encoder;
    };
Function _AsciiCodec_decoder$(
  m.Scope scope$,
  AsciiCodec target$,
) =>
    () {
      return target$.decoder;
    };
Function _AsciiCodec__$(m.Scope scope$) => ({bool? allowInvalid}) {
      return AsciiCodec(allowInvalid: allowInvalid ?? false);
    };
Function _AsciiCodec_encode$(
  m.Scope scope$,
  AsciiCodec target$,
) =>
    target$.encode;
Function _AsciiCodec_decode$(
  m.Scope scope$,
  AsciiCodec target$,
) =>
    target$.decode;
Function AsciiEncoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as AsciiEncoder;
Function AsciiEncoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is AsciiEncoder;
Function _AsciiEncoder__$(m.Scope scope$) => () {
      return AsciiEncoder();
    };
Function AsciiDecoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as AsciiDecoder;
Function AsciiDecoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is AsciiDecoder;
Function _AsciiDecoder__$(m.Scope scope$) => ({bool? allowInvalid}) {
      return AsciiDecoder(allowInvalid: allowInvalid ?? false);
    };
Function _AsciiDecoder_startChunkedConversion$(
  m.Scope scope$,
  AsciiDecoder target$,
) =>
    target$.startChunkedConversion;
Function _base64$(m.Scope scope$) => () => base64;
Function _base64Url$(m.Scope scope$) => () => base64Url;
Function Base64Codec_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Base64Codec;
Function Base64Codec_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Base64Codec;
Function _Base64Codec_encoder$(
  m.Scope scope$,
  Base64Codec target$,
) =>
    () {
      return target$.encoder;
    };
Function _Base64Codec_decoder$(
  m.Scope scope$,
  Base64Codec target$,
) =>
    () {
      return target$.decoder;
    };
Function _Base64Codec__$(m.Scope scope$) => () {
      return Base64Codec();
    };
Function _Base64Codec_urlSafe_$(m.Scope scope$) => Base64Codec.urlSafe;
Function _Base64Codec_decode$(
  m.Scope scope$,
  Base64Codec target$,
) =>
    target$.decode;
Function _Base64Codec_normalize$(
  m.Scope scope$,
  Base64Codec target$,
) =>
    target$.normalize;
Function Base64Encoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Base64Encoder;
Function Base64Encoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Base64Encoder;
Function _Base64Encoder__$(m.Scope scope$) => () {
      return Base64Encoder();
    };
Function _Base64Encoder_urlSafe_$(m.Scope scope$) => Base64Encoder.urlSafe;
Function _Base64Encoder_convert$(
  m.Scope scope$,
  Base64Encoder target$,
) =>
    target$.convert;
Function _Base64Encoder_startChunkedConversion$(
  m.Scope scope$,
  Base64Encoder target$,
) =>
    target$.startChunkedConversion;
Function Base64Decoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Base64Decoder;
Function Base64Decoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Base64Decoder;
Function _Base64Decoder__$(m.Scope scope$) => () {
      return Base64Decoder();
    };
Function _Base64Decoder_convert$(
  m.Scope scope$,
  Base64Decoder target$,
) =>
    target$.convert;
Function _Base64Decoder_startChunkedConversion$(
  m.Scope scope$,
  Base64Decoder target$,
) =>
    target$.startChunkedConversion;
Function _base64Encode$(m.Scope scope$) => base64Encode;
Function _base64UrlEncode$(m.Scope scope$) => base64UrlEncode;
Function _base64Decode$(m.Scope scope$) => base64Decode;
Function ByteConversionSink_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ByteConversionSink;
Function ByteConversionSink_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ByteConversionSink;
Function _ByteConversionSink_withCallback_$(m.Scope scope$) =>
    (m.FunctionPointer callback) {
      void callbackProxy(List callback_accumulated$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            callback,
            [callback_accumulated$],
            {},
          );
      return ByteConversionSink.withCallback(callbackProxy);
    };
Function _ByteConversionSink_from_$(m.Scope scope$) => ByteConversionSink.from;
Function _ByteConversionSink_addSlice$(
  m.Scope scope$,
  ByteConversionSink target$,
) =>
    target$.addSlice;
Function ChunkedConversionSink_as$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ChunkedConversionSink<T>;
Function ChunkedConversionSink_is$<T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ChunkedConversionSink<T>;
Function _ChunkedConversionSink_withCallback_$(m.Scope scope$) =>
    (m.FunctionPointer callback) {
      void callbackProxy(List callback_accumulated$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            callback,
            [callback_accumulated$],
            {},
          );
      return ChunkedConversionSink.withCallback(callbackProxy);
    };
Function _ChunkedConversionSink_add$<T>(
  m.Scope scope$,
  ChunkedConversionSink<T> target$,
) =>
    target$.add;
Function _ChunkedConversionSink_close$<T>(
  m.Scope scope$,
  ChunkedConversionSink<T> target$,
) =>
    target$.close;
Function Codec_as$<S, T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Codec<S, T>;
Function Codec_is$<S, T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Codec<S, T>;
Function _Codec_encoder$<S, T>(
  m.Scope scope$,
  Codec<S, T> target$,
) =>
    () {
      return target$.encoder;
    };
Function _Codec_decoder$<S, T>(
  m.Scope scope$,
  Codec<S, T> target$,
) =>
    () {
      return target$.decoder;
    };
Function _Codec_inverted$<S, T>(
  m.Scope scope$,
  Codec<S, T> target$,
) =>
    () {
      return target$.inverted;
    };
Function _Codec_encode$<S, T>(
  m.Scope scope$,
  Codec<S, T> target$,
) =>
    target$.encode;
Function _Codec_decode$<S, T>(
  m.Scope scope$,
  Codec<S, T> target$,
) =>
    target$.decode;
Function _Codec_fuse$<S, T, R>(
  m.Scope scope$,
  Codec<S, T> target$,
) =>
    target$.fuse<R>;
Function Converter_as$<S, T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Converter<S, T>;
Function Converter_is$<S, T>(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Converter<S, T>;
Function _Converter_castFrom$<SS, ST, TS, TT>(m.Scope scope$) =>
    Converter.castFrom<SS, ST, TS, TT>;
Function _Converter_convert$<S, T>(
  m.Scope scope$,
  Converter<S, T> target$,
) =>
    target$.convert;
Function _Converter_fuse$<S, T, TT>(
  m.Scope scope$,
  Converter<S, T> target$,
) =>
    target$.fuse<TT>;
Function _Converter_startChunkedConversion$<S, T>(
  m.Scope scope$,
  Converter<S, T> target$,
) =>
    target$.startChunkedConversion;
Function _Converter_bind$<S, T>(
  m.Scope scope$,
  Converter<S, T> target$,
) =>
    target$.bind;
Function _Converter_cast$<S, T, RS, RT>(
  m.Scope scope$,
  Converter<S, T> target$,
) =>
    target$.cast<RS, RT>;
Function Encoding_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Encoding;
Function Encoding_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Encoding;
Function _Encoding_encoder$(
  m.Scope scope$,
  Encoding target$,
) =>
    () {
      return target$.encoder;
    };
Function _Encoding_decoder$(
  m.Scope scope$,
  Encoding target$,
) =>
    () {
      return target$.decoder;
    };
Function _Encoding_name$(
  m.Scope scope$,
  Encoding target$,
) =>
    () {
      return target$.name;
    };
Function _Encoding_decodeStream$(
  m.Scope scope$,
  Encoding target$,
) =>
    target$.decodeStream;
Function _Encoding_getByName$(m.Scope scope$) => Encoding.getByName;
Function _htmlEscape$(m.Scope scope$) => () => htmlEscape;
Function HtmlEscapeMode_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as HtmlEscapeMode;
Function HtmlEscapeMode_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is HtmlEscapeMode;
Function _HtmlEscapeMode_escapeLtGt$(
  m.Scope scope$,
  HtmlEscapeMode target$,
) =>
    () {
      return target$.escapeLtGt;
    };
Function _HtmlEscapeMode_escapeQuot$(
  m.Scope scope$,
  HtmlEscapeMode target$,
) =>
    () {
      return target$.escapeQuot;
    };
Function _HtmlEscapeMode_escapeApos$(
  m.Scope scope$,
  HtmlEscapeMode target$,
) =>
    () {
      return target$.escapeApos;
    };
Function _HtmlEscapeMode_escapeSlash$(
  m.Scope scope$,
  HtmlEscapeMode target$,
) =>
    () {
      return target$.escapeSlash;
    };
Function _HtmlEscapeMode_unknown$(m.Scope scope$) =>
    () => HtmlEscapeMode.unknown;
Function _HtmlEscapeMode_attribute$(m.Scope scope$) =>
    () => HtmlEscapeMode.attribute;
Function _HtmlEscapeMode_sqAttribute$(m.Scope scope$) =>
    () => HtmlEscapeMode.sqAttribute;
Function _HtmlEscapeMode_element$(m.Scope scope$) =>
    () => HtmlEscapeMode.element;
Function _HtmlEscapeMode__$(m.Scope scope$) => ({
      String? name,
      bool? escapeLtGt,
      bool? escapeQuot,
      bool? escapeApos,
      bool? escapeSlash,
    }) {
      return HtmlEscapeMode(
        escapeApos: escapeApos ?? false,
        escapeLtGt: escapeLtGt ?? false,
        escapeQuot: escapeQuot ?? false,
        escapeSlash: escapeSlash ?? false,
        name: name ?? "custom",
      );
    };
Function _HtmlEscapeMode_toString$(
  m.Scope scope$,
  HtmlEscapeMode target$,
) =>
    target$.toString;
Function HtmlEscape_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as HtmlEscape;
Function HtmlEscape_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is HtmlEscape;
Function _HtmlEscape_mode$(
  m.Scope scope$,
  HtmlEscape target$,
) =>
    () {
      return target$.mode;
    };
Function _HtmlEscape__$(m.Scope scope$) => ([HtmlEscapeMode? mode]) {
      if (mode == null) {
        return HtmlEscape();
      }
      return HtmlEscape(mode!);
    };
Function _HtmlEscape_convert$(
  m.Scope scope$,
  HtmlEscape target$,
) =>
    target$.convert;
Function _HtmlEscape_startChunkedConversion$(
  m.Scope scope$,
  HtmlEscape target$,
) =>
    target$.startChunkedConversion;
Function _json$(m.Scope scope$) => () => json;
Function JsonUnsupportedObjectError_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as JsonUnsupportedObjectError;
Function JsonUnsupportedObjectError_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is JsonUnsupportedObjectError;
Function _JsonUnsupportedObjectError_unsupportedObject$(
  m.Scope scope$,
  JsonUnsupportedObjectError target$,
) =>
    () {
      return target$.unsupportedObject;
    };
Function _JsonUnsupportedObjectError_cause$(
  m.Scope scope$,
  JsonUnsupportedObjectError target$,
) =>
    () {
      return target$.cause;
    };
Function _JsonUnsupportedObjectError_partialResult$(
  m.Scope scope$,
  JsonUnsupportedObjectError target$,
) =>
    () {
      return target$.partialResult;
    };
Function _JsonUnsupportedObjectError__$(m.Scope scope$) => (
      Object? unsupportedObject, {
      Object? cause,
      String? partialResult,
    }) {
      return JsonUnsupportedObjectError(
        unsupportedObject,
        cause: cause,
        partialResult: partialResult,
      );
    };
Function _JsonUnsupportedObjectError_toString$(
  m.Scope scope$,
  JsonUnsupportedObjectError target$,
) =>
    target$.toString;
Function JsonCyclicError_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as JsonCyclicError;
Function JsonCyclicError_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is JsonCyclicError;
Function _JsonCyclicError__$(m.Scope scope$) => (Object? object) {
      return JsonCyclicError(object);
    };
Function _JsonCyclicError_toString$(
  m.Scope scope$,
  JsonCyclicError target$,
) =>
    target$.toString;
Function JsonCodec_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as JsonCodec;
Function JsonCodec_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is JsonCodec;
Function _JsonCodec_encoder$(
  m.Scope scope$,
  JsonCodec target$,
) =>
    () {
      return target$.encoder;
    };
Function _JsonCodec_decoder$(
  m.Scope scope$,
  JsonCodec target$,
) =>
    () {
      return target$.decoder;
    };
Function _JsonCodec__$(m.Scope scope$) => ({
      m.FunctionPointer? reviver,
      m.FunctionPointer? toEncodable,
    }) {
      Object? reviverProxy(
        Object? reviver_key$,
        Object? reviver_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            reviver!,
            [
              reviver_key$,
              reviver_value$,
            ],
            {},
          );
      Object? toEncodableProxy(dynamic toEncodable_object$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toEncodable!,
            [toEncodable_object$],
            {},
          );
      return JsonCodec(
        reviver: reviver == null ? null : reviverProxy,
        toEncodable: toEncodable == null ? null : toEncodableProxy,
      );
    };
Function _JsonCodec_withReviver_$(m.Scope scope$) =>
    (m.FunctionPointer reviver) {
      dynamic reviverProxy(
        Object? reviver_key$,
        Object? reviver_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            reviver,
            [
              reviver_key$,
              reviver_value$,
            ],
            {},
          );
      return JsonCodec.withReviver(reviverProxy);
    };
Function _JsonCodec_decode$(
  m.Scope scope$,
  JsonCodec target$,
) =>
    (
      String source, {
      m.FunctionPointer? reviver,
    }) {
      Object? reviverProxy(
        Object? reviver_key$,
        Object? reviver_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            reviver!,
            [
              reviver_key$,
              reviver_value$,
            ],
            {},
          );
      return target$.decode(
        source,
        reviver: reviver == null ? null : reviverProxy,
      );
    };
Function _JsonCodec_encode$(
  m.Scope scope$,
  JsonCodec target$,
) =>
    (
      Object? value, {
      m.FunctionPointer? toEncodable,
    }) {
      Object? toEncodableProxy(dynamic toEncodable_object$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toEncodable!,
            [toEncodable_object$],
            {},
          );
      return target$.encode(
        value,
        toEncodable: toEncodable == null ? null : toEncodableProxy,
      );
    };
Function JsonEncoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as JsonEncoder;
Function JsonEncoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is JsonEncoder;
Function _JsonEncoder_indent$(
  m.Scope scope$,
  JsonEncoder target$,
) =>
    () {
      return target$.indent;
    };
Function _JsonEncoder__$(m.Scope scope$) => ([m.FunctionPointer? toEncodable]) {
      if (toEncodable == null) {
        return JsonEncoder();
      }
      Object? toEncodableProxy(dynamic toEncodable_object$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toEncodable!,
            [toEncodable_object$],
            {},
          );
      return JsonEncoder(toEncodable == null ? null : toEncodableProxy);
    };
Function _JsonEncoder_withIndent_$(m.Scope scope$) => (
      String? indent, [
      m.FunctionPointer? toEncodable,
    ]) {
      if (toEncodable == null) {
        return JsonEncoder.withIndent(indent);
      }
      Object? toEncodableProxy(dynamic toEncodable_object$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toEncodable!,
            [toEncodable_object$],
            {},
          );
      return JsonEncoder.withIndent(
        indent,
        toEncodable == null ? null : toEncodableProxy,
      );
    };
Function _JsonEncoder_convert$(
  m.Scope scope$,
  JsonEncoder target$,
) =>
    target$.convert;
Function _JsonEncoder_startChunkedConversion$(
  m.Scope scope$,
  JsonEncoder target$,
) =>
    target$.startChunkedConversion;
Function _JsonEncoder_bind$(
  m.Scope scope$,
  JsonEncoder target$,
) =>
    target$.bind;
Function _JsonEncoder_fuse$<T>(
  m.Scope scope$,
  JsonEncoder target$,
) =>
    target$.fuse<T>;
Function JsonUtf8Encoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as JsonUtf8Encoder;
Function JsonUtf8Encoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is JsonUtf8Encoder;
Function _JsonUtf8Encoder__$(m.Scope scope$) => ([
      String? indent,
      m.FunctionPointer? toEncodable,
      int? bufferSize,
    ]) {
      if (indent == null && toEncodable == null && bufferSize == null) {
        return JsonUtf8Encoder();
      }
      if (toEncodable == null && bufferSize == null) {
        return JsonUtf8Encoder(indent!);
      }
      dynamic toEncodableProxy(dynamic toEncodable_object$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toEncodable!,
            [toEncodable_object$],
            {},
          );
      if (bufferSize == null) {
        return JsonUtf8Encoder(
          indent!,
          toEncodable == null ? null : toEncodableProxy,
        );
      }
      return JsonUtf8Encoder(
        indent!,
        toEncodable == null ? null : toEncodableProxy,
        bufferSize!,
      );
    };
Function _JsonUtf8Encoder_convert$(
  m.Scope scope$,
  JsonUtf8Encoder target$,
) =>
    target$.convert;
Function _JsonUtf8Encoder_startChunkedConversion$(
  m.Scope scope$,
  JsonUtf8Encoder target$,
) =>
    target$.startChunkedConversion;
Function _JsonUtf8Encoder_bind$(
  m.Scope scope$,
  JsonUtf8Encoder target$,
) =>
    target$.bind;
Function JsonDecoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as JsonDecoder;
Function JsonDecoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is JsonDecoder;
Function _JsonDecoder__$(m.Scope scope$) => ([m.FunctionPointer? reviver]) {
      if (reviver == null) {
        return JsonDecoder();
      }
      Object? reviverProxy(
        Object? reviver_key$,
        Object? reviver_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            reviver!,
            [
              reviver_key$,
              reviver_value$,
            ],
            {},
          );
      return JsonDecoder(reviver == null ? null : reviverProxy);
    };
Function _JsonDecoder_convert$(
  m.Scope scope$,
  JsonDecoder target$,
) =>
    target$.convert;
Function _JsonDecoder_startChunkedConversion$(
  m.Scope scope$,
  JsonDecoder target$,
) =>
    target$.startChunkedConversion;
Function _JsonDecoder_bind$(
  m.Scope scope$,
  JsonDecoder target$,
) =>
    target$.bind;
Function _jsonEncode$(m.Scope scope$) => (
      Object? object, {
      m.FunctionPointer? toEncodable,
    }) {
      Object? toEncodableProxy(Object? toEncodable_nonEncodable$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            toEncodable!,
            [toEncodable_nonEncodable$],
            {},
          );
      return jsonEncode(
        object,
        toEncodable: toEncodable == null ? null : toEncodableProxy,
      );
    };
Function _jsonDecode$(m.Scope scope$) => (
      String source, {
      m.FunctionPointer? reviver,
    }) {
      Object? reviverProxy(
        Object? reviver_key$,
        Object? reviver_value$,
      ) =>
          scope$.engine.callFunctionPointer(
            scope$,
            reviver!,
            [
              reviver_key$,
              reviver_value$,
            ],
            {},
          );
      return jsonDecode(
        source,
        reviver: reviver == null ? null : reviverProxy,
      );
    };
Function _latin1$(m.Scope scope$) => () => latin1;
Function Latin1Codec_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Latin1Codec;
Function Latin1Codec_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Latin1Codec;
Function _Latin1Codec_name$(
  m.Scope scope$,
  Latin1Codec target$,
) =>
    () {
      return target$.name;
    };
Function _Latin1Codec_encoder$(
  m.Scope scope$,
  Latin1Codec target$,
) =>
    () {
      return target$.encoder;
    };
Function _Latin1Codec_decoder$(
  m.Scope scope$,
  Latin1Codec target$,
) =>
    () {
      return target$.decoder;
    };
Function _Latin1Codec__$(m.Scope scope$) => ({bool? allowInvalid}) {
      return Latin1Codec(allowInvalid: allowInvalid ?? false);
    };
Function _Latin1Codec_encode$(
  m.Scope scope$,
  Latin1Codec target$,
) =>
    target$.encode;
Function _Latin1Codec_decode$(
  m.Scope scope$,
  Latin1Codec target$,
) =>
    target$.decode;
Function Latin1Encoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Latin1Encoder;
Function Latin1Encoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Latin1Encoder;
Function _Latin1Encoder__$(m.Scope scope$) => () {
      return Latin1Encoder();
    };
Function Latin1Decoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Latin1Decoder;
Function Latin1Decoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Latin1Decoder;
Function _Latin1Decoder__$(m.Scope scope$) => ({bool? allowInvalid}) {
      return Latin1Decoder(allowInvalid: allowInvalid ?? false);
    };
Function _Latin1Decoder_startChunkedConversion$(
  m.Scope scope$,
  Latin1Decoder target$,
) =>
    target$.startChunkedConversion;
Function LineSplitter_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as LineSplitter;
Function LineSplitter_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is LineSplitter;
Function _LineSplitter__$(m.Scope scope$) => () {
      return LineSplitter();
    };
Function _LineSplitter_split$(m.Scope scope$) => LineSplitter.split;
Function _LineSplitter_convert$(
  m.Scope scope$,
  LineSplitter target$,
) =>
    target$.convert;
Function _LineSplitter_startChunkedConversion$(
  m.Scope scope$,
  LineSplitter target$,
) =>
    target$.startChunkedConversion;
Function _LineSplitter_bind$(
  m.Scope scope$,
  LineSplitter target$,
) =>
    target$.bind;
Function StringConversionSink_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as StringConversionSink;
Function StringConversionSink_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is StringConversionSink;
Function _StringConversionSink_withCallback_$(m.Scope scope$) =>
    (m.FunctionPointer callback) {
      void callbackProxy(String callback_accumulated$) =>
          scope$.engine.callFunctionPointer(
            scope$,
            callback,
            [callback_accumulated$],
            {},
          );
      return StringConversionSink.withCallback(callbackProxy);
    };
Function _StringConversionSink_from_$(m.Scope scope$) =>
    StringConversionSink.from;
Function _StringConversionSink_fromStringSink_$(m.Scope scope$) =>
    StringConversionSink.fromStringSink;
Function _StringConversionSink_addSlice$(
  m.Scope scope$,
  StringConversionSink target$,
) =>
    target$.addSlice;
Function _StringConversionSink_add$(
  m.Scope scope$,
  StringConversionSink target$,
) =>
    target$.add;
Function _StringConversionSink_asUtf8Sink$(
  m.Scope scope$,
  StringConversionSink target$,
) =>
    target$.asUtf8Sink;
Function _StringConversionSink_asStringSink$(
  m.Scope scope$,
  StringConversionSink target$,
) =>
    target$.asStringSink;
Function ClosableStringSink_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ClosableStringSink;
Function ClosableStringSink_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ClosableStringSink;
Function _ClosableStringSink_fromStringSink_$(m.Scope scope$) => (
      StringSink sink,
      m.FunctionPointer onClose,
    ) {
      void onCloseProxy() => scope$.engine.callFunctionPointer(
            scope$,
            onClose,
            [],
            {},
          );
      return ClosableStringSink.fromStringSink(
        sink,
        onCloseProxy,
      );
    };
Function _ClosableStringSink_close$(
  m.Scope scope$,
  ClosableStringSink target$,
) =>
    target$.close;
Function _unicodeReplacementCharacterRune$(m.Scope scope$) =>
    () => unicodeReplacementCharacterRune;
Function _unicodeBomCharacterRune$(m.Scope scope$) =>
    () => unicodeBomCharacterRune;
Function _utf8$(m.Scope scope$) => () => utf8;
Function Utf8Codec_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Utf8Codec;
Function Utf8Codec_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Utf8Codec;
Function _Utf8Codec_name$(
  m.Scope scope$,
  Utf8Codec target$,
) =>
    () {
      return target$.name;
    };
Function _Utf8Codec_encoder$(
  m.Scope scope$,
  Utf8Codec target$,
) =>
    () {
      return target$.encoder;
    };
Function _Utf8Codec_decoder$(
  m.Scope scope$,
  Utf8Codec target$,
) =>
    () {
      return target$.decoder;
    };
Function _Utf8Codec__$(m.Scope scope$) => ({bool? allowMalformed}) {
      return Utf8Codec(allowMalformed: allowMalformed ?? false);
    };
Function _Utf8Codec_decode$(
  m.Scope scope$,
  Utf8Codec target$,
) =>
    target$.decode;
Function Utf8Encoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Utf8Encoder;
Function Utf8Encoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Utf8Encoder;
Function _Utf8Encoder__$(m.Scope scope$) => () {
      return Utf8Encoder();
    };
Function _Utf8Encoder_convert$(
  m.Scope scope$,
  Utf8Encoder target$,
) =>
    target$.convert;
Function _Utf8Encoder_startChunkedConversion$(
  m.Scope scope$,
  Utf8Encoder target$,
) =>
    target$.startChunkedConversion;
Function _Utf8Encoder_bind$(
  m.Scope scope$,
  Utf8Encoder target$,
) =>
    target$.bind;
Function Utf8Decoder_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as Utf8Decoder;
Function Utf8Decoder_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is Utf8Decoder;
Function _Utf8Decoder__$(m.Scope scope$) => ({bool? allowMalformed}) {
      return Utf8Decoder(allowMalformed: allowMalformed ?? false);
    };
Function _Utf8Decoder_convert$(
  m.Scope scope$,
  Utf8Decoder target$,
) =>
    target$.convert;
Function _Utf8Decoder_startChunkedConversion$(
  m.Scope scope$,
  Utf8Decoder target$,
) =>
    target$.startChunkedConversion;
Function _Utf8Decoder_bind$(
  m.Scope scope$,
  Utf8Decoder target$,
) =>
    target$.bind;
Function _Utf8Decoder_fuse$<T>(
  m.Scope scope$,
  Utf8Decoder target$,
) =>
    target$.fuse<T>;
