import 'package:front_end/src/api_unstable/vm.dart';

import '../proxy/kernel_generator.dart' show kernelForProgramInternal;
import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/program.dart';

import 'compile_source.dart';
import 'context.dart';
import 'ast/ast.dart';

Future<Program> compilePlugin(Uri mainSource, List<Uri> additionalSources,
    RegExp pluginUri, CompilerOptions compilerOptions,
    {bool debug = false}) async {
  var result = await kernelForProgramInternal(mainSource, compilerOptions,
      additionalSources: additionalSources, requireMain: false);

  return compileComponent(pluginUri, result!.component!, debug);
}

///编译文本代码,一般用于测试
Future<Program> compileSource(
    RegExp pluginUri, CompilerOptions options, Map<String, String> sources,
    {bool debug = false}) async {
  var component =
      await compileUnit(sources.keys.toList(), sources, options: options);

  return compileComponent(pluginUri, component!, debug);
}

Program compileComponent(RegExp pluginUri, Component component, bool debug) {
  //删除pluginUri以外的library
  component.libraries.removeWhere(
      (element) => !pluginUri.hasMatch(element.importUri.toString()));

  //初始化编译上下文
  var compilerContext = MicroCompilerContext(component, debug);

  component.libraries.forEach((library) {
    //顶部方法索引
    library.procedures.forEach((node) {
      if (node.isAbstract) {
        return;
      }
      var ref = node.getCallRef();
      if (debug) {
        print("procedure add: ${node.getCallRef()}");
      }
      compilerContext.lookupDeclarationIndex(ref, node);
    });

    //顶部参数索引
    library.fields.forEach((node) {
      var ref = node.getCallRef();
      int p = compilerContext.lookupDeclarationIndex(ref, node);
      compilerContext.compileFieldIndexes.add(p);
    });
    //对类进行索引
    library.classes.forEach((clazz) {
      var ref = clazz.getCallRef();
      int p = compilerContext.lookupDeclarationIndex(ref, clazz);
      compilerContext.compileClassIndexes.add(p);
      //对类中的参数进行索引
      clazz.fields.forEach((field) {
        var ref = field.getCallRef();
        int p = compilerContext.lookupDeclarationIndex(ref, field);
        compilerContext.compileFieldIndexes.add(p);
      });
      //对类的构造函数进行索引
      clazz.constructors.forEach((constructor) {
        var ref = constructor.getCallRef();
        compilerContext.lookupDeclarationIndex(ref, constructor);
      });

      //对类的构造工厂进行索引
      // clazz.redirectingFactories.forEach((redirectingFactory) {
      //   var ref = redirectingFactory.getCallRef();
      //   compilerContext.lookupDeclarationIndex(ref, redirectingFactory);
      // });
      //对类中方法进行索引
      clazz.procedures.forEach((procedure) {
        if (procedure.isAbstract) {
          return;
        }
        var ref = procedure.getCallRef();
        compilerContext.lookupDeclarationIndex(ref, procedure);
      });
    });
  });

  //编译
  compileContext(compilerContext);

  return Program(
    runtimeDeclarationOpIndexes: compilerContext.runtimeDeclarationOpIndexes,
    runtimeTypes: compilerContext.visibleTypes,
    externalTypes: compilerContext.externalCallMethods,
    constantPool: compilerContext.constantPool,
    ops: compilerContext.offsetTracker.apply(),
    component: component,
  );
}
