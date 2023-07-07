micro_dart_compiler: 编译器
micro_dart_core:核心处理库
micro_dart_flutter:Flutter解释器
micro_dart_generator:代理生成器
micro_dart_runtime:Dart解释器


编译逻辑

1.首先通过front_end解析代码成AST（Abstract Syntax Tree，抽象语法树）
2.将AST编译成可供解释器执行的字节码
3.通过解释器对字节码进行解释执行


30 6 start:CallDynamic(getter,true,false,0,[]):(g:{},s:[Scope({},[]), Scope({},[]), 



Scope({#this: 

InstanceImpl(
        TypeRef(test:///main.dart,Class,false,test:///main.dart@_Class&Super&Mixin),
        InstanceImpl(
            TypeRef(test:///main.dart,_Class&Super&Mixin,false,test:///main.dart@Super),
            InstanceImpl(
                TypeRef(test:///main.dart,Super,false,dart:core@Object),
                InstanceBridge(Instance of 'Object'),{}),{}),{})},[]), Scope({},[]), Scope({},[]), Scope({},[InstanceImpl(TypeRef(test:///main.dart,Class,false,test:///main.dart@_Class&Super&Mixin),InstanceImpl(TypeRef(test:///main.dart,_Class&Super&Mixin,false,test:///main.dart@Super),InstanceImpl(TypeRef(test:///main.dart,Super,false,dart:core@Object),InstanceBridge(Instance of 'Object'),{}),{}),{})])]}








编译细节：


声明列表


参数 libraryUri@className:field@fieldName

静态参数


函数 libraryUri@className:procedure@procedureName@get
静态函数
本类函数
扩展函数






:CallExternal(1,true,false,false,package:dual_screen/src/media_query_extension.dart@@MediaQueryHinge|get#hinge,package:dual_screen/src/media_query_extension.dart,,MediaQueryHinge|get#hinge,1,[]):



Scope(_anonymous_,{
    context: Builder(dirty, dependencies: [MediaQuery, _ModelBindingScope]), 
    options: Instance of 'GalleryOptions'},
    
    [ 
        [
            MediaQueryData(size: Size(1155.0, 600.0), devicePixelRatio: 2.0, textScaleFactor: 1.0, platformBrightness: Brightness.dark, padding: EdgeInsets.zero, viewPadding: EdgeInsets.zero, viewInsets: EdgeInsets.zero, systemGestureInsets: EdgeInsets.zero, alwaysUse24HourFormat: false, accessibleNavigation: false, highContrast: false, disableAnimations: false, invertColors: false, boldText: false, navigationMode: traditional, gestureSettings: DeviceGestureSettings(touchSlop: null), displayFeatures: [])
            , 
            1, 
            0]])
