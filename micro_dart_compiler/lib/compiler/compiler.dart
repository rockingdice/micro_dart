import 'package:front_end/src/api_unstable/vm.dart';

import 'package:front_end/src/api_prototype/kernel_generator.dart'
    show kernelForProgramInternal;
import 'package:kernel/ast.dart';
import 'package:kernel/core_types.dart';
import 'package:micro_dart_compiler/compiler/program.dart';

import 'compile_source.dart';
import 'context.dart';
import 'namednode.dart';

class MicroCompiler {
  void compilePlugin(Uri mainSource, List<Uri> additionalSources,
      String pluginUri, CompilerOptions compilerOptions) async {
    var result = await kernelForProgramInternal(mainSource, compilerOptions,
        additionalSources: additionalSources, requireMain: false);

    transformComponent(pluginUri, result!.component!);
  }

  Future<Program> compileSource(String pluginUri, CompilerOptions options,
      Map<String, String> sources) async {
    var component =
        await compileUnit(sources.keys.toList(), sources, options: options);

    return transformComponent(pluginUri, component!);
  }

  Program transformComponent(String pluginUri, Component component) {
    //删除pluginUri以外的library
    component.libraries
        .removeWhere((element) => element.importUri.toString() != pluginUri);

    //初始化编译上下文
    var compilerContext = MicroCompilerContext(CoreTypes(component));

    component.libraries.forEach((library) {
      //顶部方法索引
      library.procedures.forEach((node) {
        compilerContext.lookupDeclarationIndex(node);
      });

      //顶部参数索引
      library.fields.forEach((node) {
        compilerContext.lookupDeclarationIndex(node);
      });

      library.classes.forEach((clazz) {
        compilerContext.lookupDeclarationIndex(clazz);
        clazz.fields.forEach((field) {
          compilerContext.lookupDeclarationIndex(field);
        });

        clazz.procedures.forEach((procedure) {
          compilerContext.lookupDeclarationIndex(procedure);
        });

        clazz.constructors.forEach((constructor) {
          compilerContext.lookupDeclarationIndex(constructor);
        });

        clazz.redirectingFactories.forEach((redirectingFactory) {
          compilerContext.lookupDeclarationIndex(redirectingFactory);
        });
      });
    });

    compilerContext.compileDeclarationIndexes.forEach((name, index) {
      compileTopLecelNamedNode(compilerContext, index, name,
          compilerContext.compileDeclarations[index]);
    });

    return Program(
        topLevelDeclarations: compilerContext.rumtimetopLevelDeclarationOpIndex,
        instanceDeclarations: {},
        typeIds: {},
        typeTypes: [],
        ops: compilerContext.offsetTracker.apply(compilerContext.ops),
        //bridgeLibraryMappings: compilerContext.libraryIndexes,
        bridgeFunctionMappings: {},
        constantPool: compilerContext.constantPool.pool,
        globalInitializers: [],
        enumMappings: {},
        component: component);
  }
}
