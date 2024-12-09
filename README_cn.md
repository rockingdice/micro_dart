
**这个项目仍然在开发阶段,bug还很多，远没有达到可以使用的程度,自行斟酌如何使用它**

# 介绍
这个项目最初目是希望能够在Flutter上开发一种轻量级的dart代解释器，它能够动态执行dart代码，可以实现在Flutter上实现热更新。

为什么就不能有一种动态化方案，能够将已有的代码经过少量的修改就能编译成动态化代码呢？

为什么要引入一些其他的语言比如Lua，JavaScript？就只用dart语言一路到黑不行吗？

为什么要引入一些第三方语言解释器，比如 LuaVM，JSCore，就简简单单通过dart实现不行吗？


# 项目目录
micro_dart_compiler 
micro_dart编译器，将dart代码编译成可动态化运行的字节码

micro_dart_compiler/test/test_all.dart 
语法兼容性测试用例

micro_dart_compiler/test/flutter_plugin_1_generate.dart
micro_dart_compiler/test/flutter_plugin_2_generate.dart
micro_dart_compiler/test/flutter_plugin_animations_generate.dart
micro_dart_compiler/test/flutter_plugin_gallery_generate.dart
生成example里可供执行的动态化字节码

micro_dart_runtime
micro_dart解释器，可以通过运行字节码

micro_dart_generator
代码生成器，根据当前 dart_sdk 生成解释器桥接代码，让解释器有调用非动态化代码的能力

micro_dart_proxy_core
通过代码生成器生成的dart sdk 桥接代码，proxy 目录下是目前不支持生成的手动修改的代码

micro_dart_flutter
通过代码生澄清生成的 flutter sdk 桥接代码，proxy 目录下是目前不支持生成的手动修改的代码


examples
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