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





flutter: 0:599452 <_external_call_> start:CallExternal(3,true,false,false,package:flutter/src/widgets/transitions.dart@RotationTransition@,package:flutter/src/widgets/transitions.dart,RotationTransition,,0,[turns, child]):


Scope(_external_call_,

{context: $StatelessWidget(dirty, dependencies: [_InheritedTheme, _LocalizationsScope-[GlobalKey#e3165]]), #this: $StatelessWidget, colorScheme: ColorScheme#77d58(brightness: Brightness.dark, primary: Color(0xffff8383), primaryContainer: Color(0xff1cdec9), secondary: Color(0xff4d1f7c), onSecondary: Color(0xffffffff), secondaryContainer: Color(0xff451b6f), onSecondaryContainer: Color(0xffffffff), tertiary: Color(0xff4d1f7c), onTertiary: Color(0xffffffff), tertiaryContainer: Color(0xff4d1f7c), onTertiaryContainer: Color(0xffffffff), error: Color(0xffffffff), errorContainer: Color(0xffffffff), background: Color(0xff241e30), onBackground: Color(0x0dffffff), surface: Color(0xff1f1929), onSurface: Color(0xffffffff), surfaceVariant: Color(0xff1f1929), onSurfaceVariant: Color(0xffffffff), outline: Color(0x0dffffff), outlineVariant: Color(0x0dffffff), inverseSurface: Color(0xffffffff), onInverseSurface: Color(0xff1f1929), primaryVariant: Color(0xffff8383), secondaryVariant: Color(0xff4d1f7c), surfaceTint: Color(0xffff8383)), textTheme: TextTheme#3a642(displayLarge: TextStyle(debugLabel: (dense displayLarge 2014).merge(whiteRedwoodCity displayLarge), inherit: false, color: Color(0xb3ffffff), family: .AppleSystemUIFont, size: 112.0, weight: 100, baseline: ideographic, decoration: TextDecoration.none), displayMedium: TextStyle(debugLabel: (dense displayMedium 2014).merge(whiteRedwoodCity displayMedium), inherit: false, color: Color(0xb3ffffff), family: .AppleSystemUIFont, size: 56.0, weight: 400, baseline: ideographic, decoration: TextDecoration.none), displaySmall: TextStyle(debugLabel: (dense displaySmall 2014).merge(whiteRedwoodCity displaySmall), inherit: false, color: Color(0xb3ffffff), family: .AppleSystemUIFont, size: 45.0, weight: 400, baseline: ideographic, decoration: TextDecoration.none), headlineLarge: TextStyle(debugLabel: (dense headlineLarge 2014).merge(whiteRedwoodCity headlineLarge), inherit: false, color: Color(0xb3ffffff), family: .AppleSystemUIFont, size: 40.0, weight: 400, baseline: ideographic, decoration: TextDecoration.none), headlineMedium: TextStyle(debugLabel: (dense headlineMedium 2014).merge((whiteRedwoodCity headlineMedium).merge(unknown)), inherit: false, color: Color(0xb3ffffff), family: .AppleSystemUIFont, size: 20.0, weight: 700, baseline: ideographic, decoration: TextDecoration.none), headlineSmall: TextStyle(debugLabel: (dense headlineSmall 2014).merge((whiteRedwoodCity headlineSmall).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 16.0, weight: 500, baseline: ideographic, decoration: TextDecoration.none), titleLarge: TextStyle(debugLabel: (dense titleLarge 2014).merge((whiteRedwoodCity titleLarge).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 16.0, weight: 700, baseline: ideographic, decoration: TextDecoration.none), titleMedium: TextStyle(debugLabel: (dense titleMedium 2014).merge((whiteRedwoodCity titleMedium).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 16.0, weight: 500, baseline: ideographic, decoration: TextDecoration.none), titleSmall: TextStyle(debugLabel: (dense titleSmall 2014).merge((whiteRedwoodCity titleSmall).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 14.0, weight: 500, baseline: ideographic, decoration: TextDecoration.none), bodyLarge: TextStyle(debugLabel: (dense bodyLarge 2014).merge((whiteRedwoodCity bodyLarge).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 14.0, weight: 400, baseline: ideographic, decoration: TextDecoration.none), bodyMedium: TextStyle(debugLabel: (dense bodyMedium 2014).merge((whiteRedwoodCity bodyMedium).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 16.0, weight: 400, baseline: ideographic, decoration: TextDecoration.none), bodySmall: TextStyle(debugLabel: (dense bodySmall 2014).merge((whiteRedwoodCity bodySmall).merge(unknown)), inherit: false, color: Color(0xb3ffffff), family: .AppleSystemUIFont, size: 16.0, weight: 600, baseline: ideographic, decoration: TextDecoration.none), labelLarge: TextStyle(debugLabel: (dense labelLarge 2014).merge((whiteRedwoodCity labelLarge).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 14.0, weight: 600, baseline: ideographic, decoration: TextDecoration.none), labelMedium: TextStyle(debugLabel: (dense labelMedium 2014).merge(whiteRedwoodCity labelMedium), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 12.0, weight: 400, baseline: ideographic, decoration: TextDecoration.none), labelSmall: TextStyle(debugLabel: (dense labelSmall 2014).merge((whiteRedwoodCity labelSmall).merge(unknown)), inherit: false, color: Color(0xffffffff), family: .AppleSystemUIFont, size: 12.0, weight: 500, baseline: ideographic, decoration: TextDecoration.none))},

[
    0, 
    EdgeInsetsDirectional(32.0, 0.0, 32.0, 8.0), 
    margin, 
    0, 
    RoundedRectangleBorder(BorderSide(width: 0.0, style: none), 
    BorderRadius.circular(10.0)), 
    shape, 
    Color(0xff4d1f7c), 
    color, 
    Clip.antiAlias, 
    clipBehavior, 
    0, 
    FunctionPointer($State#69f35(tickers: tracking 1 ticker), true,false, 598996), 
    onTap, 
    0, 
    MainAxisAlignment.spaceBetween, 
    mainAxisAlignment, 
    0, 
    EdgeInsetsDirectional(8.0, 0.0, 24.0, 0.0), 
    padding
])
