
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