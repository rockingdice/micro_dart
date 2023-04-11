import 'dart:convert';

import 'dart:typed_data';
import 'package:kernel/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

/// A Program is a compiled EVC bytecode program that can be executed using
/// a [Runtime].
class Program {
  /// Construct a [Program] with bytecode and metadata.
  Program(
      {required this.topLevelDeclarations,
      required this.instanceDeclarations,
      required this.typeIds,
      //this.typeNames,
      required this.typeTypes,
      required this.ops,
      //required this.bridgeLibraryMappings,
      required this.bridgeFunctionMappings,
      required this.constantPool,
      //  this.runtimeTypes,
      required this.globalInitializers,
      required this.enumMappings,
      this.component
      //  this.overrideMap
      });

  Component? component;

  /// Global bytecode offsets of the program's top-level declarations.
  Map<String, int> topLevelDeclarations;

  /// Global bytecode offsets of the program's instance-level declarations.
  ///
  /// Example instance declaration:
  /// 1: { // file
  ///    "SomeClass": [
  ///       { "someProp": 221 }, // getters
  ///       { "someProp": 254 }, // setters
  ///       { "someMethod": 288 }, // methods
  ///    ]
  /// }
  Map<int, Map<String, List>> instanceDeclarations;

  /// The ordered list of type names used in the program, with the index
  /// corresponding to the type ID.
  //List<String> typeNames;

  /// The ordered list of type supertype sets used in the program, with the index
  /// corresponding to the type ID.
  List<Set<int>> typeTypes;

  /// Mappings from type specs to IDs.
  Map<int, Map<String, int>> typeIds;

  /// Mappings from library URIs to internal library IDs.
  //Map<String, int> bridgeLibraryMappings;

  /// Mappings from bridge function names to internal InvokeExternal IDs.
  Map<int, Map<String, int>> bridgeFunctionMappings;

  /// The program's constant pool.
  List<Object> constantPool;
  //List<RuntimeTypeSet> runtimeTypes;

  /// Bytecode offsets to initializers for global variables.
  List<int> globalInitializers;

  /// Mappings from enums to globals.
  Map<int, Map<String, Map<String, int>>> enumMappings;

  /// Runtime override map
  //Map<String, OverrideSpec> overrideMap;

  /// The program's bytecode.
  List<Op> ops;

  /// Write the program to a [Uint8List], to be loaded by a [Runtime].
  Uint8List write() {
    final b = BytesBuilder(copy: false);

    _writeMetaBlock(b, topLevelDeclarations);
    _writeMetaBlock(
        b,
        instanceDeclarations
            .map((key, value) => MapEntry(key.toString(), value)));
    //_writeMetaBlock(b, typeNames);
    _writeMetaBlock(b, [for (final t in typeTypes) t.toList()]);
    _writeMetaBlock(
        b, typeIds.map((key, value) => MapEntry(key.toString(), value)));
    //_writeMetaBlock(b, bridgeLibraryMappings);
    _writeMetaBlock(
        b,
        bridgeFunctionMappings
            .map((key, value) => MapEntry(key.toString(), value)));
    _writeMetaBlock(b, constantPool);
    //_writeMetaBlock(b, [for (final rt in runtimeTypes) rt.toJson()]);
    _writeMetaBlock(b, globalInitializers);
    _writeMetaBlock(
        b, enumMappings.map((key, value) => MapEntry(key.toString(), value)));
    // _writeMetaBlock(
    //     b,
    //     overrideMap.map((key, value) =>
    //         MapEntry(key, [value.offset, value.versionConstraint])));

    for (final op in ops) {
      b.add(Ops.opcodeFrom(op));
    }
    final res = b.takeBytes();

    return res;
  }

  void _writeMetaBlock(BytesBuilder builder, Object block) {
    final encodedBlock = utf8.encode(json.encode(block));
    builder.add(Ops.i32b(encodedBlock.length));
    builder.add(encodedBlock);
  }
}
