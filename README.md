
# **这个项目仍然在开发阶段,bug还很多，不建议在项目中用，目前只有学习参考意义**

# 介绍
这个项目最初目是希望能够在Flutter上开发一种轻量级的dart代解释器，它能够动态执行dart代码，可以实现在Flutter上实现热更新。



我不希望引入一些其他的语言比如Lua，JavaScript，就只用dart语言一路到黑。

我不希望引入一些第三方语言解释器，比如 LuaVM，JSCore，就简简单单通过dart实现不行吗？

我希望桥接代码可以自动生成，而不是手写。

我希望动态化方案是轻量级的，没那么多私有 api，老代码可以做少量修改就可以实现动态化。新代码可以和接入flutter 插件一样接入。

目前看来只有商用shorebird可以实现，但是它不开源，且需要定制化flutter。


# 项目目录
## micro_dart_compiler 
micro_dart编译器，将dart代码编译成可动态化运行的字节码

其中 micro_dart_compiler/test/test_all.dart 
语法兼容性测试用例

micro_dart_compiler/test/flutter_plugin_1_generate.dart
micro_dart_compiler/test/flutter_plugin_2_generate.dart
micro_dart_compiler/test/flutter_plugin_animations_generate.dart
micro_dart_compiler/test/flutter_plugin_gallery_generate.dart
生成example里可供执行的动态化字节码

## micro_dart_runtime
micro_dart解释器，可以通过运行字节码

## micro_dart_generator
代码生成器，根据当前 dart_sdk 生成解释器桥接代码，让解释器有调用非动态化代码的能力，但目前还不是很完善

## micro_dart_proxy_core
通过代码生成器生成的dart sdk 桥接代码，proxy 目录下是目前不支持生成的手动修改的代码

## micro_dart_flutter
通过代码生澄清生成的 flutter sdk 桥接代码，proxy 目录下是目前不支持生成的手动修改的代码


## examples
examples目录里放了一些我测试用到的动态化执行的例子

# 不兼容或不完善的

1. 目前是基于 flutter 3.10.2开发的，不保证其他flutter 版本能够正常运行
2. dart 语法兼容性是基于 dart sdk 3.0.5，很多新特性还没来得及兼容
3. 明确不支持的语法：
    a.dynamic 关键字
    b.类的继承已经支持，但如果是某个动态化类继承一个非动态化类可能有点问题，需要单独写桥接层去兼容
    c.一些 mixin，implements 可能不兼容
    d.泛型的兼容有一定局限性，比如泛型类是非动态化的，桥接层需要去适配
    e.代码生成器目前不可用，生成的代码需要经过一定的修改才能用

4.examples 里面的  gallery 还没有完全跑通，目前执行下来还有报错。  

## 一些设计思路

1. micro_dart_compiler 并不是用开源的 analyzer进行语法解析，因为这个插件对语法的解析并不完全，例如 mixin，extensions，返回值等都有一定的限制。而是用 dart sdk 里的 front_end 进行语法分析。因此编译器是依赖于 dart sdk 的。

2. 通过front_end进行语法解析，然后将它编译成可供解释器运行的虚拟指令集，可以在 micro_dart_runtime/ops目录下找到


## 测试数据

目前看来接入 micro_dart 有一定的性能损失，如果是接入完整的 flutter sdk的桥接代码，在软件包上会多大概 30M，在运行内存方面会多 2-50M 不等。 根动态化代码的多少有关系，如果想具体测试可以参考 examples 里面的例子。

## 问题汇总

### 如何跑通代码？

 1.下载代码之前你需要下载dart-sdk,具体下载方法可以查看 https://github.com/dart-lang/sdk/wiki/Building 这里建议用depot_tools的方式下载,因为直接下载github上的sdk,third_party目录下面不会有你需要的包
我用dart-sdk 版本是 3.0.5 ，切换后 通过 gclient sync 现在依赖包。

2.修改 micro_dart_compiler/pubspec.yaml 里面的路径指向你下载的 dart sdk

## 如何生成动态化产物？
在micro_dart_compiler 里的 test 目录下面有相关例子你可以看一下，因为仍然在完善阶段，目前还没有命令行，后续会改成命令行程序吧。
其中例子里生成动态化的代码：

micro_dart_compiler/test/dart_example_1_generate.dart

micro_dart_compiler/test/flutter_plugin_1_generate.dart

micro_dart_compiler/test/flutter_plugin_2_generate.dart

micro_dart_compiler/test/flutter_plugin_animations_generate.dart

micro_dart_compiler/test/flutter_plugin_gallery_generate.dart

## 例子中代码都是在 main 函数里调用，是否只能全局动态化？
是可以部分动态化的，可以是一个 Widget 也可以是一个逻辑方法。callStaticFunction 就是调用动态化代码的入口方法。并不一定需要在 main 函数里调用。
比如你只想某个 widget 执行热更新，你可以调用callStaticFunction返回你想要的 widget，这个 widget 可以放在某个 widget 节点下面。比如 ：
```
class BankListInfoPage extends StatelessWidget {
    const BankListInfoPage({super.key});
    @OverRide
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
        title: const Text("我的银行卡"),
        ),
        body: engine.callStaticFunction(packegeUri, "getMyBankWidget", [], {});
    }
}
```

## 如何自动生成桥接代码
micro_dart_generator 就是代码生成器，micro_dart_generator 是一个 build_runner库，在原程序中集成它:
```
dev_dependencies:
  micro_dart_generator: 
    path: ../../micro_dart_generator
```
然后在命令行中 dart run build_runner 会自动生成桥接代码。

如果你只是想测试如果生成桥接代码，micro_dart_generator/bin 下面有一些测试代码，可以生成全的 dart core桌子 flutter core 桥接的代码，可以修改成自己需要的。

如果你不想每次都修改，可以对overwrite_strategy.json 进行修改。这个文件可对一些错误的生成代码进行覆盖。或者你希望忽略一些全局 package 等都可以在这个文件里配置


## 如何生成最小桥接代码?
目前micro_dart_generator可以通过配置进行生成，配置的格式可以参考：

```
examples/flutter_example_gallery_2/micro_dart_external_methods.json

examples/flutter_animations_2/micro_dart_external_methods.json

examples/flutter_example_2/micro_dart_external_methods.json
```

这个文件micro_dart_compiler有能力在编译动态化代码的时候自己生成一个最小量的，这表示当前 plugin 跑起来调用的所有外部桥接。具体生成方法可以参考 

```
micro_dart_compiler/test/flutter_plugin_2_generate.dart:

File("${flutterExamplePath}micro_dart_external_methods.json")
    .writeAsStringSync(program.getExternalCallMethods());
```

## 动态化代码于原程序的关系

现在的设计方案是，原程序于动态化代码是分开的。动态化代码是 plugin 的形式，它依赖于原程序。

比如flutter_gallery 的例子：

flutter_plugin_gallery 是我们需要动态化的代码库

flutter_example_gallery 是原程序，是非动态化的代码库


flutter_plugin_gallery的 pubspec.yaml里需要配置：

```
dependencies:
  flutter:
    sdk: flutter
  flutter_example_gallery:
    path: ../flutter_example_gallery
```

且这样不能再有任何其他的第三方插件，如果需要则在原程序里引入，并生成对应的桥接代码

flutter_example_gallery不需要依赖flutter_plugin_gallery，但是需要引入micro_dart_runtime:

```
dependencies:
  flutter:
    sdk: flutter
  micro_dart_flutter: 
    path: ../../micro_dart_flutter
  micro_dart_runtime: 
    path: ../../micro_dart_runtime
```

这里的micro_dart_flutter是桥接代码，如果你也是 flutter 3.10.5 可以直接用。但如果是其他的flutter版本则需要自己通过micro_dart_generator生成自己的桥接代码，不同 flutter版本sdk 都是有细微差别的。
我也不建议引入全局的 flutter桥接，因为还是比较消耗内存的，而且编译会很慢。

## 动态化代码为何要于原程序分开？

设计上，可以动态化的代码是以 package 区分的，编译器可以很容易的根据 packageName 去判断是否需要生成动态化代码。而且非 packageName 的调用都可以视为是外部调用，这做方便而简单。

这么做的另外一个好处是，如果以后不需要动态化了，可以在原程序直接引入这个 plugin，不需要进行任何代码形式修改。

## 能否引入多个动态化的 plugin？
可以的，设计上，一个动态化 plugin 对应一个 MicroDartEngine 对象，就是一个解释器环境。源程序中允许有多个解释器MicroDartEngine 对象。

## 一个动态化 plugin 对应一个页面吗?
不一定，可以将多个页面都放在一个动态化plugin里面，这取决你自己。但是MicroDartEngine的初始化是消耗资源的，这取决于动态化代码的大小，会一次性导入内存。
多个MicroDartEngine的场景我理解是对内存比较敏感的时候，MicroDartEngine可以用到时初始化，用完就销毁。

## 没有动态化包下载模块或者类似于 MicroDartWidget的flutter封装组件吗？
目前 micro_dart 定位只是动态化代码解释器，就像一个房子需要地基，micro_dart 并不会做的面面俱到。起的是地基作用。