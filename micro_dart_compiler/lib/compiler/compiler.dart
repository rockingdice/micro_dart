import 'package:front_end/src/api_unstable/vm.dart';

import 'package:front_end/src/api_prototype/kernel_generator.dart'
    show kernelForProgramInternal;
import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/program.dart';

import 'compile_source.dart';
import 'context.dart';
import 'ast/ast.dart';

class MicroCompiler {
  ///从目录中编译项目,目录结构必须是dart项目的目录结构
  static Future<Program> compilePlugin(
      Uri mainSource,
      List<Uri> additionalSources,
      String pluginUri,
      CompilerOptions compilerOptions,
      {bool debug = false}) async {
    var result = await kernelForProgramInternal(mainSource, compilerOptions,
        additionalSources: additionalSources, requireMain: false);

    return compileComponent(pluginUri, result!.component!, debug);
  }

  ///编译文本代码,一般用于测试
  static Future<Program> compileSource(
      String pluginUri, CompilerOptions options, Map<String, String> sources,
      {bool debug = false}) async {
    var component =
        await compileUnit(sources.keys.toList(), sources, options: options);

    return compileComponent(pluginUri, component!, debug);
  }

  static Program compileComponent(
      String pluginUri, Component component, bool debug) {
    //删除pluginUri以外的library
    component.libraries
        .removeWhere((element) => element.importUri.toString() != pluginUri);

    //初始化编译上下文
    var compilerContext = MicroCompilerContext(component, debug);

    component.libraries.forEach((library) {
      //顶部方法索引
      library.procedures.forEach((node) {
        String name = node.getNamedName();
        compilerContext.lookupDeclarationIndex(name, node);
      });

      //顶部参数索引
      library.fields.forEach((node) {
        String name = node.getNamedName();
        int p = compilerContext.lookupDeclarationIndex(name, node);
        compilerContext.compileFieldIndexes.add(p);
      });
      //对类进行索引
      library.classes.forEach((clazz) {
        String className = clazz.getNamedName();
        int p = compilerContext.lookupDeclarationIndex(className, clazz);
        compilerContext.compileClassIndexes.add(p);
        //对类中的参数进行索引
        clazz.fields.forEach((field) {
          String name = field.getNamedName();
          int p = compilerContext.lookupDeclarationIndex(name, field);
          compilerContext.compileFieldIndexes.add(p);
        });
        //对类的构造函数进行索引
        clazz.constructors.forEach((constructor) {
          String name = constructor.getNamedName();
          compilerContext.lookupDeclarationIndex(name, constructor);
        });

        //对类的构造工厂进行索引
        clazz.redirectingFactories.forEach((redirectingFactory) {
          String name = redirectingFactory.getNamedName();
          compilerContext.lookupDeclarationIndex(name, redirectingFactory);
        });
        //对类中方法进行索引
        clazz.procedures.forEach((procedure) {
          String name = procedure.getNamedName();
          compilerContext.lookupDeclarationIndex(name, procedure);
        });
      });
    });

    //编译
    compileContext(compilerContext);

    return Program(
      rumtimeDeclarationOpIndexes: compilerContext.rumtimeDeclarationOpIndexes,
      runtimeTypes: compilerContext.visibleTypes,
      constantPool: compilerContext.constantPool.pool,
      ops: compilerContext.offsetTracker.apply(),
      component: component,
    );
  }
}
