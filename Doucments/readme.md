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






(m.Scope scope) => ({alwaysShowMiddle,automaticallyImplyLeading,automaticallyImplyTitle,backgroundColor,border,brightness,heroTag,key,largeTitle,leading,middle,padding,previousPageTitle,stretch,trailing,transitionBetweenRoutes}) {if (heroTag == null) {return CupertinoSliverNavigationBar(alwaysShowMiddle: alwaysShowMiddle ?? true,automaticallyImplyLeading:automaticallyImplyLeading ?? true,automaticallyImplyTitle: automaticallyImplyTitle ?? true,backgroundColor: backgroundColor,border: border ??const Border(bottom: BorderSide(color: Color(0x4D000000),width: 0.0,),),brightness: brightness,key: key,largeTitle: largeTitle,leading: leading,middle: middle,padding: padding,previousPageTitle: previousPageTitle,stretch: stretch ?? false,trailing: trailing,transitionBetweenRoutes: transitionBetweenRoutes ?? true);}return CupertinoSliverNavigationBar(alwaysShowMiddle: alwaysShowMiddle ?? true,automaticallyImplyLeading: automaticallyImplyLeading ?? true,automaticallyImplyTitle: automaticallyImplyTitle ?? true,backgroundColor: backgroundColor,border: border ??const Border(bottom: BorderSide(color: Color(0x4D000000),width: 0.0,),),brightness: brightness,heroTag: heroTag,key: key,largeTitle: largeTitle,leading: leading,middle: middle,padding: padding,previousPageTitle: previousPageTitle,stretch: stretch ?? false,trailing: trailing,transitionBetweenRoutes: transitionBetweenRoutes ?? true);}