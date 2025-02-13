// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:material_color_utilities/quantize/quantizer_celebi.dart';
import 'package:material_color_utilities/quantize/point_provider_lab.dart';
import 'package:material_color_utilities/quantize/quantizer.dart';
import 'package:material_color_utilities/quantize/quantizer_wsmeans.dart';
import 'package:material_color_utilities/quantize/quantizer_wu.dart';

const libraryMirror = m.LibraryMirror(
  'package:material_color_utilities/quantize/quantizer_celebi.dart',
  {'QuantizerCelebi.': _QuantizerCelebi__$},
  {},
  {
    'QuantizerCelebi': m.ClassMirror(
      'QuantizerCelebi',
      {
        '#as': QuantizerCelebi_as$,
        '#is': QuantizerCelebi_is$,
        'quantize': _QuantizerCelebi_quantize$,
      },
      {},
    )
  },
);
Function QuantizerCelebi_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as QuantizerCelebi;
Function QuantizerCelebi_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is QuantizerCelebi;
Function _QuantizerCelebi__$(m.Scope scope$) => () {
      return QuantizerCelebi();
    };
Function _QuantizerCelebi_quantize$(
  m.Scope scope$,
  QuantizerCelebi target$,
) =>
    target$.quantize;
