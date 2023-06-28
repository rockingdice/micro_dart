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






(m.Scope scope) => ({autofocus,backgroundColor,child,clipBehavior,disabledElevation,elevation,enableFeedback,focusColor,focusElevation，focusNode,foregroundColor,heroTag,highlightElevation,hoverColor,hoverElevation,key,materialTapTargetSize,mouseCursor,onPressed,shape,splashColor,tooltip}) {void onPressedProxy() {engine.callFunctionPointer(scope, onPressed!, [], {});}if (heroTag == null) {return FloatingActionButton.small(autofocus: autofocus ?? false,backgroundColor: backgroundColor,child: child,clipBehavior: clipBehavior ?? Clip.none,disabledElevation: disabledElevation,elevation: elevation,enableFeedback: enableFeedback,focusColor: focusColor,focusElevation: focusElevation,focusNode: focusNode,foregroundColor: foregroundColor,highlightElevation: highlightElevation,hoverColor: hoverColor,hoverElevation: hoverElevation,key: key,materialTapTargetSize: materialTapTargetSize,mouseCursor: mouseCursor,onPressed: onPressedProxy,shape: shape,splashColor: splashColor,tooltip: tooltip);}return FloatingActionButton.small(autofocus: autofocus ?? false,backgroundColor: backgroundColor,child: child,clipBehavior: clipBehavior ?? Clip.none,disabledElevation: disabledElevation,elevation: elevation,enableFeedback: enableFeedback,focusColor: focusColor,focusElevation: focusElevation,focusNode: focusNode,foregroundColor: foregroundColor,heroTag: heroTag,highlightElevation: highlightElevation,hoverColor: hoverColor,hoverElevation: hoverElevation,key: key,materialTapTargetSize: materialTapTargetSize,mouseCursor: mouseCursor,onPressed: onPressedProxy,shape: shape,splashColor: splashColor,tooltip: tooltip);}




(m.Scope scope) => ({autofocus,backgroundColor,child,clipBehavior,disabledElevation,elevation,enableFeedback,focusColor,focusElevation,focusNode,foregroundColor,heroTag,highlightElevation,hoverColor,hoverElevation,key,materialTapTargetSize,mouseCursor,onPressed,shape,splashColor,tooltip}) {void onPressedProxy() {engine.callFunctionPointer(scope, onPressed!, [], {});}if(heroTag == null){return FloatingActionButton.large(autofocus: autofocus ?? false,backgroundColor: backgroundColor,child: child,clipBehavior: clipBehavior ?? Clip.none,disabledElevation: disabledElevation,elevation: elevation,enableFeedback: enableFeedback,focusColor: focusColor,focusElevation: focusElevation,focusNode: focusNode,foregroundColor: foregroundColor,highlightElevation: highlightElevation,hoverColor: hoverColor,hoverElevation: hoverElevation,key: key,materialTapTargetSize: materialTapTargetSize,mouseCursor: mouseCursor,onPressed: onPressedProxy,shape: shape,splashColor: splashColor,tooltip: tooltip);}return FloatingActionButton.large(autofocus: autofocus ?? false,backgroundColor: backgroundColor,child: child,clipBehavior: clipBehavior ?? Clip.none,disabledElevation: disabledElevation,elevation: elevation,enableFeedback: enableFeedback,focusColor: focusColor,focusElevation: focusElevation,focusNode: focusNode,foregroundColor: foregroundColor,heroTag: heroTag,highlightElevation: highlightElevation,hoverColor: hoverColor,hoverElevation: hoverElevation,key: key,materialTapTargetSize: materialTapTargetSize,mouseCursor: mouseCursor,onPressed: onPressedProxy,shape: shape,splashColor: splashColor,tooltip: tooltip);}





(m.Scope scope) => (
                {autofocus,
                backgroundColor,
                clipBehavior,
                disabledElevation,
                elevation,
                enableFeedback,
                extendedIconLabelSpacing,
                extendedPadding,
                extendedTextStyle,
                focusColor,
                focusElevation,
                focusNode,
                foregroundColor,
                heroTag,
                highlightElevation,
                hoverColor,
                hoverElevation,
                icon,
                isExtended,
                key,
                label,
                materialTapTargetSize,
                mouseCursor,
                onPressed,
                shape,
                splashColor,tooltip}) {void onPressedProxy() {engine.callFunctionPointer(scope, onPressed!, [], {});}if (heroTag == null) {return FloatingActionButton.extended(autofocus: autofocus ?? false,backgroundColor: backgroundColor,clipBehavior: clipBehavior ?? Clip.none,disabledElevation: disabledElevation,elevation: elevation,enableFeedback: enableFeedback,extendedIconLabelSpacing: extendedIconLabelSpacing,extendedPadding: extendedPadding,extendedTextStyle: extendedTextStyle,focusColor: focusColor,focusElevation: focusElevation,focusNode: focusNode,foregroundColor: foregroundColor,highlightElevation: highlightElevation,hoverColor: hoverColor,hoverElevation: hoverElevation,icon: icon,isExtended: isExtended ?? true,key: key,label: label,materialTapTargetSize: materialTapTargetSize,mouseCursor: mouseCursor ?? SystemMouseCursors.click,onPressed: onPressedProxy,shape: shape,splashColor: splashColor,tooltip: tooltip);}return FloatingActionButton.extended(autofocus: autofocus ?? false,backgroundColor: backgroundColor,clipBehavior: clipBehavior ?? Clip.none,disabledElevation: disabledElevation,elevation: elevation,enableFeedback: enableFeedback,extendedIconLabelSpacing: extendedIconLabelSpacing,extendedPadding: extendedPadding,extendedTextStyle: extendedTextStyle,focusColor: focusColor,focusElevation: focusElevation,focusNode: focusNode,foregroundColor: foregroundColor,heroTag: heroTag,highlightElevation: highlightElevation,hoverColor: hoverColor,hoverElevation: hoverElevation,icon: icon,isExtended: isExtended ?? true,key: key,label: label,materialTapTargetSize: materialTapTargetSize, mouseCursor: mouseCursor ?? SystemMouseCursors.click,onPressed: onPressedProxy,shape: shape,splashColor: splashColor,tooltip: tooltip);}





(m.Scope scope) =><T extends Object>({displayStringForOption,fieldViewBuilder,initialValue,key,onSelected,optionsBuilder,optionsMaxHeight,optionsViewBuilder}) {String displayStringForOptionProxy<T>(option) {return engine.callFunctionPointer(scope, displayStringForOption!, [option], {});}Widget fieldViewBuilderProxy(context, textEditingController, focusNode, onFieldSubmitted) {return engine.callFunctionPointer(scope,fieldViewBuilder!,[context, textEditingController, focusNode, onFieldSubmitted],{});}void onSelectedProxy<T>(option) {engine.callFunctionPointer(scope, onSelected!, [option], {});}FutureOr<Iterable<T>> optionsBuilderProxy(textEditingValue) async {return await engine.callFunctionPointerAsync(scope, optionsBuilder!, [textEditingValue], {});}Widget optionsViewBuilderProxy<T>(context, onSelected, options) {return engine.callFunctionPointer(scope, optionsViewBuilder!, [context, onSelected, options], {});}return Autocomplete<T>(displayStringForOption: displayStringForOption == null? RawAutocomplete.defaultStringForOption: displayStringForOptionProxy,fieldViewBuilder: fieldViewBuilder == null? (BuildContext context,TextEditingController textEditingController,FocusNode focusNode,VoidCallback onFieldSubmitted) {return TextFormField(controller: textEditingController,focusNode: focusNode,onFieldSubmitted: (String value) {onFieldSubmitted();},);}: fieldViewBuilderProxy,initialValue: initialValue,key: key,onSelected: onSelected == null ? null : onSelectedProxy,optionsBuilder: optionsBuilderProxy,optionsMaxHeight: optionsMaxHeight ?? 200.0,optionsViewBuilder: optionsViewBuilder == null ? null : optionsViewBuilderProxy);}