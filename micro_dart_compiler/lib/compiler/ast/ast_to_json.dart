import 'dart:convert';
import 'dart:io';

import 'package:micro_dart_compiler/compiler/ast/ast.dart';

import 'package:kernel/ast.dart';

void astToJson(String fileName, RegExp pluginUri, Component? component) {
  if (component == null) {
    return;
  }

  var map = _Visitor(pluginUri).visitComponent(component);
  StringBuffer buffer = StringBuffer();
  buffer.write(jsonEncode(map));
  File("$fileName.json").writeAsStringSync('${buffer.toString()}');
}

List<R>? visitList<R>(List<Node>? nodes, Visitor<R> visitor) {
  var list = <R>[];
  if (nodes == null) {
    return null;
  }
  for (int i = 0; i < nodes.length; ++i) {
    list.add(nodes[i].accept<R>(visitor));
  }
  return list;
}

mixin _DefaultVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  @override
  Map<String, dynamic>? defaultNode(Node node) => null;

  @override
  Map<String, dynamic>? visitClassReference(Class node) => null;

  @override
  Map<String, dynamic>? visitTypedefReference(Typedef node) => null;

  @override
  Map<String, dynamic>? visitExtensionReference(Extension node) => null;

  @override
  Map<String, dynamic>? visitInlineClassReference(InlineClass node) => null;

  @override
  Map<String, dynamic>? defaultConstantReference(Constant node) => null;

  @override
  Map<String, dynamic>? defaultMemberReference(Member node) => null;
}

mixin _DartTypeVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultDartType(DartType node) {
    return {
      "xtype": "DartType",
      "runtimeType": node.runtimeType.toString(),
    };
  }

  @override
  Map<String, dynamic>? visitInvalidType(InvalidType node) {
    return {"xtype": "InvalidType"};
  }

  @override
  Map<String, dynamic>? visitDynamicType(DynamicType node) {
    return {"xtype": "DynamicType"};
  }

  @override
  Map<String, dynamic>? visitVoidType(VoidType node) {
    return {"xtype": "VoidType"};
  }

  @override
  Map<String, dynamic>? visitInterfaceType(InterfaceType node) {
    return {
      "xtype": "InterfaceType",
      "classNode": node.classNode.acceptReference(this),
      "typeArguments": visitList(node.typeArguments, this),
    };
  }

  @override
  Map<String, dynamic>? visitFutureOrType(FutureOrType node) {
    return {
      "xtype": "FutureOrType",
      "typeArgument": node.typeArgument.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitFunctionType(FunctionType node) {
    return {
      "xtype": "FunctionType",
      "typeParameters": visitList(node.typeParameters, this),
      "requiredParameterCount": node.requiredParameterCount,
      "positionalParameters": visitList(node.positionalParameters, this),
      "namedParameters": visitList(node.namedParameters, this),
      "declaredNullability": node.declaredNullability.name,
      "returnType": node.accept(this)
    };
  }

  /// 对类型变量的引用。
  /// 类型变量具有可选绑定，因为类型提升可以更改绑定。
  /// “null”的绑定表示该绑定尚未升级，并且与[TypeParameter]的绑定相同。
  /// 这样就可以检测绑定是否已升级。
  /// 提升绑定的情况可以被视为表示类型参数类型和提升绑定之间的交集类型
  @override
  Map<String, dynamic>? visitTypeParameterType(TypeParameterType node) {
    return {
      "xtype": "TypeParameterType",
      "declaredNullability": node.declaredNullability.name,
      "parameter": node.parameter.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitTypedefType(TypedefType node) {
    return {
      "xtype": "TypedefType",
      "typeArguments": visitList(node.typeArguments, this),
      "typedefNode": visitTypedefReference(node.typedefNode),
    };
  }

  @override
  Map<String, dynamic>? visitNeverType(NeverType node) {
    return {
      "xtype": "NeverType",
      "declaredNullability": node.declaredNullability.name,
    };
  }

  @override
  Map<String, dynamic>? visitNullType(NullType node) {
    return {"xtype": "NullType"};
  }

  @override
  Map<String, dynamic>? visitExtensionType(ExtensionType node) {
    //print("visitExtensionType: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ExtensionType",
      "extension": node.extension.acceptReference(this),
      "typeArguments": visitList(node.typeArguments, this),
    };
  }

  Map<String, dynamic> visitInlineType(InlineType node) =>
      defaultDartType(node);
  Map<String, dynamic> visitIntersectionType(IntersectionType node) =>
      defaultDartType(node);
  Map<String, dynamic> visitRecordType(RecordType node) =>
      defaultDartType(node);
}

mixin _ConstantVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultConstant(Constant node) {
    return {
      "xtype": "Constant",
      "runtimeType": node.runtimeType.toString(),
    };
  }

  @override
  Map<String, dynamic>? visitNullConstant(NullConstant node) {
    //print("visitNullConstant: ${node.toString()}");
    //node.visitChildren(this);

    return {"xtype": "NullConstant"};
  }

  @override
  Map<String, dynamic>? visitBoolConstant(BoolConstant node) {
    //print("visitBoolConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "BoolConstant", "value": node.value};
  }

  @override
  Map<String, dynamic>? visitIntConstant(IntConstant node) {
    //print("visitIntConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "IntConstant",
      "value": node.value,
    };
  }

  @override
  Map<String, dynamic>? visitDoubleConstant(DoubleConstant node) {
    //print("visitDoubleConstant: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "DoubleConstant",
      "isFinite": node.value.isFinite,
      "isNaN": node.value.isNaN,
      "isInfinite": node.value.isInfinite,
      "isNegative": node.value.isNegative,
      "value": node.value.isFinite ? node.value : node.value.toString()
    };
  }

  @override
  Map<String, dynamic>? visitStringConstant(StringConstant node) {
    //print("visitStringConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "StringConstant", "value": node.value};
  }

  @override
  Map<String, dynamic>? visitSymbolConstant(SymbolConstant node) {
    //print("visitSymbolConstant: ${node.toString()}");
    //node.visitChildren(this);

    return {"xtype": "SymbolConstant", "name": node.name};
  }

  @override
  Map<String, dynamic>? visitMapConstant(MapConstant node) {
    //print("visitMapConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "MapConstant",
      "keyType": node.keyType.accept(this),
      "valueType": node.valueType.accept(this),
      "entries": node.entries
          .map((e) => {
                "key": e.key.acceptReference(this),
                "value": e.value.acceptReference(this)
              })
          .toList(),
    };
  }

  @override
  Map<String, dynamic>? visitListConstant(ListConstant node) {
    //print("visitListConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ListConstant",
      "typeArgument": node.typeArgument.accept(this),
      "entries": node.entries.map((e) => e.acceptReference(this)).toList()
    };
  }

  @override
  Map<String, dynamic>? visitSetConstant(SetConstant node) {
    //print("visitSetConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SetConstant",
      "typeArgument": node.typeArgument.accept(this),
      "entries": node.entries.map((e) => e.acceptReference(this)).toList()
    };
  }

  Map<String, dynamic> visitRecordConstant(RecordConstant node) =>
      defaultConstant(node);
  @override
  Map<String, dynamic>? visitInstanceConstant(InstanceConstant node) {
    //print("visitInstanceConstant: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "InstanceConstant",
      "classReference": node.classReference.asClass.acceptReference(this),
      "fieldValueKeys": node.fieldValues.keys
          .map((e) => e.asField.acceptReference(this))
          .toList(),
      "fieldValueValues":
          node.fieldValues.values.map((e) => e.acceptReference(this)).toList(),
    };
  }

  @override
  Map<String, dynamic>? visitInstantiationConstant(InstantiationConstant node) {
    //print("visitInstantiationConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "InstantiationConstant",
      "tearOffConstant": node.tearOffConstant.acceptReference(this),
      "types": visitList(node.types, this),
    };
  }

  @override
  Map<String, dynamic>? visitTypedefTearOffConstant(
      TypedefTearOffConstant node) {
    //print("visitTypedefTearOffConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "TypedefTearOffConstant",
      "types": visitList(node.types, this),
      "parameters": visitList(node.parameters, this),
      "tearOffConstant": node.tearOffConstant.acceptReference(this),
    };
  }

  @override
  Map<String, dynamic>? visitStaticTearOffConstant(StaticTearOffConstant node) {
    //print("visitStaticTearOffConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "StaticTearOffConstant",
      "target": node.target.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitConstructorTearOffConstant(
      ConstructorTearOffConstant node) {
    return {
      "xtype": "ConstructorTearOffConstant",
      "target": node.target.name.text,
    };
  }

  @override
  Map<String, dynamic>? visitRedirectingFactoryTearOffConstant(
      RedirectingFactoryTearOffConstant node) {
    //print("visitRedirectingFactoryTearOffConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "RedirectingFactoryTearOffConstant",
      "target": node.target.acceptReference(this)
    };
  }

  @override
  Map<String, dynamic>? visitTypeLiteralConstant(TypeLiteralConstant node) {
    //print("visitTypeLiteralConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "TypeLiteralConstant",
      "type": node.type.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitUnevaluatedConstant(UnevaluatedConstant node) {
    //rint("visitUnevaluatedConstant: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "UnevaluatedConstant",
      "expression": node.expression.accept(this),
    };
  }
}

mixin _MemberReferenceVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultMemberReference(Member node) {
    return {
      "xtype": "Member",
      "name": node.name.text,
      "runtimeType": node.runtimeType.toString()
    };
  }

  @override
  Map<String, dynamic>? visitFieldReference(Field node) {
    //print("visitFieldReference: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "FieldReference",
      "name": node.name.text,
    };
  }

  @override
  Map<String, dynamic>? visitConstructorReference(Constructor node) {
    return {
      "xtype": "ConstructorReference",
      "name": node.name.text,
    };
  }

  @override
  Map<String, dynamic>? visitProcedureReference(Procedure node) {
    //print("visitProcedureReference: ${node.toString()}");
    //node.visitChildren(this);
    Library? library;
    Class? clazz;
    if (node.parent is Library) {
      library = node.parent as Library;
    } else if (node.parent is Class) {
      clazz = node.parent as Class;
      if (clazz.parent is Library) {
        library = clazz.parent as Library;
      }
    }

    return {
      "xtype": "ProcedureReference",
      "libraryUri": library?.importUri.toString(),
      "libraryName": library?.name,
      "className": clazz?.name,
      "name": node.name.accept(this),
      "isExtensionMember": node.isExtensionMember,
      "isStatic": node.isStatic,
      "isGetter": node.isGetter,
      "isSetter": node.isSetter,
      "positionalParameters": node.function.positionalParameters
          .map((e) => e.accept(this))
          .toList(),
      "namedParameters":
          node.function.namedParameters.map((e) => e.accept(this)).toList(),
    };
  }
}

mixin _ExpressionVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultExpression(Expression node) {
    return {"xtype": "Expression", "runtimeType": node.runtimeType.toString()};
  }

  Map<String, dynamic> defaultBasicLiteral(BasicLiteral node) {
    return {
      "xtype": "BasicLiteral",
      "value": node.value,
      "runtimeType": node.runtimeType.toString()
    };
  }

  @override
  Map<String, dynamic>? visitInvalidExpression(InvalidExpression node) {
    //print("visitInvalidExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "InvalidExpression",
      "expression": node.expression?.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitVariableGet(VariableGet node) {
    //print("visitVariableGet: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "VariableGet",
      "variableName": node.variable.name,
      "promotedType": node.promotedType?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitVariableSet(VariableSet node) {
    //print("visitVariableSet: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "VariableSet",
      "variable": node.variable.accept(this),
      "value": node.value.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitDynamicGet(DynamicGet node) {
    //print("visitDynamicGet: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "DynamicGet",
      "kind": node.kind.name,
      "receiver": node.receiver.accept(this),
      "name": node.name.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitDynamicSet(DynamicSet node) {
    //print("visitDynamicSet: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "DynamicSet",
      "receiver": node.receiver.accept(this),
      "name": node.name.accept(this),
      "value": node.value.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitFunctionTearOff(FunctionTearOff node) {
    //print("visitFunctionTearOff: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "FunctionTearOff",
      "receiver": node.receiver.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitInstanceGet(InstanceGet node) {
    //print("visitInstanceGet: ${node.toString()}");
    //node.visitChildren(this);

    return <String, dynamic>{
      "xtype": "InstanceGet",
      "receiver": node.receiver.accept(this),
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "resultType": node.resultType.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitInstanceSet(InstanceSet node) {
    //print("visitInstanceSet: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "InstanceSet",
      "receiver": node.receiver.accept(this),
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "value": node.value.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitInstanceTearOff(InstanceTearOff node) {
    //print("visitInstanceTearOff: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "InstanceTearOff",
      "receiver": node.receiver.accept(this),
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "resultType": node.resultType.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitAbstractSuperPropertyGet(
      AbstractSuperPropertyGet node) {
    //print("visitAbstractSuperPropertyGet: ${node.name.text}");
    //node.visitChildren(this);
    return {
      "xtype": "AbstractSuperPropertyGet",
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitAbstractSuperPropertySet(
      AbstractSuperPropertySet node) {
    //print("visitAbstractSuperPropertySet: ${node.name.text}");
    // node.visitChildren(this);
    return {
      "xtype": "AbstractSuperPropertySet",
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "value": node.value.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitSuperPropertyGet(SuperPropertyGet node) {
    //print("visitSuperPropertyGet: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SuperPropertyGet",
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitSuperPropertySet(SuperPropertySet node) {
    // print("visitSuperPropertySet: ${node.toString()}");
    // node.visitChildren(this);
    return {
      "xtype": "SuperPropertySet",
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "value": node.value.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitStaticGet(StaticGet node) {
    //print("visitStaticGet: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "StaticGet",
      "target": node.target.acceptReference(this),
    };
  }

  @override
  Map<String, dynamic>? visitStaticSet(StaticSet node) {
    //print("visitStaticSet: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "StaticSet",
      "target": node.target.acceptReference(this),
      "value": node.value.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitStaticTearOff(StaticTearOff node) {
    // print("visitStaticTearOff: ${node.toString()}");
    // node.visitChildren(this);
    return {
      "xtype": "StaticTearOff",
      "target": node.target.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitLocalFunctionInvocation(
      LocalFunctionInvocation node) {
    //print("visitLocalFunctionInvocation: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "LocalFunctionInvocation",
      "name": node.name.accept(this),
      "arguments": node.arguments.accept(this),
      "variable": node.variable.accept(this),
      "functionType": node.functionType.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitDynamicInvocation(DynamicInvocation node) {
    //print("visitDynamicInvocation: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "DynamicInvocation",
      "kind": node.kind.name,
      "receiver": node.receiver.accept(this),
      "name": node.name.accept(this),
      "arguments": node.arguments.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitFunctionInvocation(FunctionInvocation node) {
    //print("visitFunctionInvocation: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "FunctionInvocation",
      "kind": node.kind.name,
      "receiver": node.receiver.accept(this),
      "name": node.name.accept(this),
      "arguments": node.arguments.accept(this),
      "functionType": node.functionType?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitInstanceInvocation(InstanceInvocation node) {
    //print("visitInstanceInvocation: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "InstanceInvocation",
      "name": node.name.accept(this),
      "kind": node.kind.name,
      "receiver": node.receiver.accept(this),
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "arguments": node.arguments.accept(this),
      "functionType": node.functionType.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitInstanceGetterInvocation(
      InstanceGetterInvocation node) {
    //print("visitInstanceGetterInvocation: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "InstanceGetterInvocation",
      "receiver": node.receiver.accept(this),
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "arguments": node.arguments.accept(this),
      "functionType": node.functionType?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitEqualsNull(EqualsNull node) {
    //print("visitEqualsNull: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "EqualsNull",
      "expression": node.expression.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitEqualsCall(EqualsCall node) {
    //print("visitEqualsCall: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "EqualsCall",
      "left": node.left.accept(this),
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
    };
  }

  @override
  Map<String, dynamic>? visitAbstractSuperMethodInvocation(
      AbstractSuperMethodInvocation node) {
    //print("visitAbstractSuperMethodInvocation: ${node.name.text}");
    //node.visitChildren(this);
    return {
      "xtype": "AbstractSuperMethodInvocation",
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "arguments": node.arguments.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitSuperMethodInvocation(SuperMethodInvocation node) {
    //print("visitSuperMethodInvocation: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SuperMethodInvocation",
      "interfaceTarget": node.interfaceTarget.acceptReference(this),
      "name": node.name.accept(this),
      "arguments": node.arguments.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitStaticInvocation(StaticInvocation node) {
    //print("visitStaticInvocation: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "StaticInvocation",
      "isConst": node.isConst,
      "name": node.name.accept(this),
      "target": node.target.acceptReference(this),
      "arguments": node.arguments.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitConstructorInvocation(ConstructorInvocation node) {
    return {
      "xtype": "ConstructorInvocation",
      "target": node.target.acceptReference(this),
      "arguments": node.arguments.accept(this),
      "isConst": node.isConst
    };
  }

  @override
  Map<String, dynamic>? visitNot(Not node) {
    //print("visitNot: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Not",
      "operand": node.operand.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitNullCheck(NullCheck node) {
    //print("visitNullCheck: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "NullCheck",
      "operand": node.operand.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitLogicalExpression(LogicalExpression node) {
    //print("visitLogicalExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "LogicalExpression",
      "left": node.left.accept(this),
      "right": node.right.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitConditionalExpression(ConditionalExpression node) {
    //print("visitConditionalExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ConditionalExpression",
      "condition": node.condition.accept(this),
      "then": node.then.accept(this),
      "otherwise": node.otherwise.accept(this),
      "staticType": node.staticType.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitStringConcatenation(StringConcatenation node) {
    //print("visitStringConcatenation: ${node.toString()}");
    //node.visitChildren(this);

    return <String, dynamic>{
      "xtype": "StringConcatenation",
      "expressions": visitList(node.expressions, this)
    };
  }

  @override
  Map<String, dynamic>? visitListConcatenation(ListConcatenation node) {
    //print("visitListConcatenation: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ListConcatenation",
      "typeArgument": node.typeArgument.accept(this),
      "lists": visitList(node.lists, this)
    };
  }

  @override
  Map<String, dynamic>? visitSetConcatenation(SetConcatenation node) {
    //print("visitSetConcatenation: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SetConcatenation",
      "typeArgument": node.typeArgument.accept(this),
      "sets": visitList(node.sets, this)
    };
  }

  @override
  Map<String, dynamic>? visitMapConcatenation(MapConcatenation node) {
    //print("visitMapConcatenation: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "MapConcatenation",
      "keyType": node.keyType.accept(this),
      "valueType": node.valueType.accept(this),
      "maps": visitList(node.maps, this),
    };
  }

  @override
  Map<String, dynamic>? visitInstanceCreation(InstanceCreation node) {
    //print("visitInstanceCreation: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "InstanceCreation",
      "classReference": node.classReference.asClass.acceptReference(this),
      "typeArguments": visitList(node.typeArguments, this),
      "asserts": visitList(node.asserts, this),
      "unusedArguments": visitList(node.unusedArguments, this)
    };
  }

  @override
  Map<String, dynamic>? visitFileUriExpression(FileUriExpression node) {
    //print("visitFileUriExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "FileUriExpression",
      "expression": node.expression.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitIsExpression(IsExpression node) {
    //print("visitIsExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "IsExpression",
      "operand": node.operand.accept(this),
      "type": node.type.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitAsExpression(AsExpression node) {
    //print("visitAsExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "AsExpression",
      "operand": node.operand.accept(this),
      "type": node.type.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitSymbolLiteral(SymbolLiteral node) {
    //print("visitSymbolLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "SymbolLiteral", "value": node.value};
  }

  @override
  Map<String, dynamic>? visitTypeLiteral(TypeLiteral node) {
    //print("visitTypeLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "TypeLiteral", "type": node.type.accept(this)};
  }

  @override
  Map<String, dynamic>? visitThisExpression(ThisExpression node) {
    //print("visitThisExpression: ${node.toString()}");
    //node.visitChildren(this);

    return {"xtype": "ThisExpression"};
  }

  @override
  Map<String, dynamic>? visitRethrow(Rethrow node) {
    //print("visitRethrow: ${node.toString()}");
    //node.visitChildren(this);

    return {"xtype": "Rethrow"};
  }

  @override
  Map<String, dynamic>? visitThrow(Throw node) {
    //print("visitThrow: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "Throw",
      "expression": node.expression.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitListLiteral(ListLiteral node) {
    //print("visitListLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ListLiteral",
      "isConst": node.isConst,
      "typeArgument": node.typeArgument.accept(this),
      "expressions": visitList(node.expressions, this)
    };
  }

  @override
  Map<String, dynamic>? visitSetLiteral(SetLiteral node) {
    //print("visitSetLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SetLiteral",
      "isConst": node.isConst,
      "typeArgument": node.typeArgument.accept(this),
      "expressions": visitList(node.expressions, this)
    };
  }

  @override
  Map<String, dynamic>? visitMapLiteral(MapLiteral node) {
    //print("visitMapLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "MapLiteral",
      "isConst": node.isConst,
      "keyType": node.keyType.accept(this),
      "valueType": node.valueType.accept(this),
      "entries": visitList(node.entries, this),
    };
  }

  Map<String, dynamic> visitRecordLiteral(RecordLiteral node) =>
      defaultExpression(node);

  @override
  Map<String, dynamic>? visitAwaitExpression(AwaitExpression node) {
    // print("visitAwaitExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "AwaitExpression", "operand": node.operand.accept(this)};
  }

  @override
  Map<String, dynamic>? visitFunctionExpression(FunctionExpression node) {
    //print("visitFunctionExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "FunctionExpression",
      "function": node.function.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitConstantExpression(ConstantExpression node) {
    //print("visitConstantExpression: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "ConstantExpression",
      "constant": node.constant.acceptReference(this),
      "type": node.type.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitStringLiteral(StringLiteral node) {
    // print("visitStringLiteral: ${node.toString()}");
    // node.visitChildren(this);
    return <String, dynamic>{
      "xtype": "StringLiteral",
    };
  }

  @override
  Map<String, dynamic>? visitIntLiteral(IntLiteral node) {
    //print("visitIntLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "IntLiteral",
      "value": node.value,
    };
  }

  @override
  Map<String, dynamic>? visitDoubleLiteral(DoubleLiteral node) {
    //print("visitDoubleLiteral: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "DoubleLiteral",
      "value": node.value,
    };
  }

  @override
  Map<String, dynamic>? visitBoolLiteral(BoolLiteral node) {
    //print("visitBoolLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "BoolLiteral",
      "value": node.value,
    };
  }

  @override
  Map<String, dynamic>? visitNullLiteral(NullLiteral node) {
    //print("visitNullLiteral: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "NullLiteral", "value": node.value};
  }

  @override
  Map<String, dynamic>? visitLet(Let node) {
    //print("visitLet: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Let",
      "variable": node.variable.accept(this),
      "body": node.body.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitBlockExpression(BlockExpression node) {
    //print("visitBlockExpression: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "BlockExpression",
      "body": node.body.accept(this),
      "value": node.value.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitInstantiation(Instantiation node) {
    //print("visitInstantiation: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "Instantiation",
      "expression": node.expression.accept(this),
      "typeArguments": visitList(node.typeArguments, this),
    };
  }

  @override
  Map<String, dynamic>? visitLoadLibrary(LoadLibrary node) {
    //print("visitLoadLibrary: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "LoadLibrary",
    };
  }

  @override
  Map<String, dynamic>? visitCheckLibraryIsLoaded(CheckLibraryIsLoaded node) {
    return {
      "xtype": "CheckLibraryIsLoaded",
      "import": node.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitConstructorTearOff(ConstructorTearOff node) {
    return {
      "xtype": "ConstructorTearOff",
      "target": node.target.acceptReference(this),
    };
  }

  @override
  Map<String, dynamic>? visitRedirectingFactoryTearOff(
      RedirectingFactoryTearOff node) {
    //print("visitRedirectingFactoryTearOff: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "RedirectingFactoryTearOff",
      "target": node.target.acceptReference(this)
    };
  }

  @override
  Map<String, dynamic>? visitTypedefTearOff(TypedefTearOff node) {
    //print("visitTypedefTearOff: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "TypedefTearOff",
      "typeArguments": visitList(node.typeArguments, this),
      "typeParameters": visitList(node.typeParameters, this),
      "expression": node.expression.accept(this),
    };
  }

  Map<String, dynamic> visitRecordIndexGet(RecordIndexGet node) =>
      defaultExpression(node);
  Map<String, dynamic> visitRecordNameGet(RecordNameGet node) =>
      defaultExpression(node);
  Map<String, dynamic> visitSwitchExpression(SwitchExpression node) =>
      defaultExpression(node);
  Map<String, dynamic> visitPatternAssignment(PatternAssignment node) =>
      defaultExpression(node);
}

mixin _PatternVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultPattern(Pattern node);
  Map<String, dynamic> visitAndPattern(AndPattern node) => defaultPattern(node);
  Map<String, dynamic> visitAssignedVariablePattern(
          AssignedVariablePattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitCastPattern(CastPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitConstantPattern(ConstantPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitInvalidPattern(InvalidPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitListPattern(ListPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitMapPattern(MapPattern node) => defaultPattern(node);
  Map<String, dynamic> visitNamedPattern(NamedPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitNullAssertPattern(NullAssertPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitNullCheckPattern(NullCheckPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitObjectPattern(ObjectPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitOrPattern(OrPattern node) => defaultPattern(node);
  Map<String, dynamic> visitRecordPattern(RecordPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitRelationalPattern(RelationalPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitRestPattern(RestPattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitVariablePattern(VariablePattern node) =>
      defaultPattern(node);
  Map<String, dynamic> visitWildcardPattern(WildcardPattern node) =>
      defaultPattern(node);
}

mixin _StatementVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultStatement(Statement node) {
    return {"xtype": "Statement", "runtimeType": node.runtimeType.toString()};
  }

  @override
  Map<String, dynamic>? visitExpressionStatement(ExpressionStatement node) {
    //print("visitExpressionStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ExpressionStatement",
      "expression": node.expression.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitBlock(Block node) {
    // print("visitBlock: ${node.toString()}");
    // node.visitChildren(this);
    return {"xtype": "Block", "statements": visitList(node.statements, this)};
  }

  @override
  Map<String, dynamic>? visitAssertBlock(AssertBlock node) {
    //print("visitAssertBlock: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "AssertBlock",
      "statements": visitList(node.statements, this)
    };
  }

  @override
  Map<String, dynamic>? visitEmptyStatement(EmptyStatement node) {
    //print("visitEmptyStatement: ${node.toString()}");
    //node.visitChildren(this);

    return {"xtype": "EmptyStatement"};
  }

  @override
  Map<String, dynamic>? visitAssertStatement(AssertStatement node) {
    //print("visitAssertInitializer: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "AssertStatement",
      "condition": node.condition.accept(this),
      "message": node.message?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitLabeledStatement(LabeledStatement node) {
    //print("visitLabeledStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "LabeledStatement", "body": node.body.accept(this)};
  }

  @override
  Map<String, dynamic>? visitBreakStatement(BreakStatement node) {
    return {
      "xtype": "BreakStatement",
    };
  }

  @override
  Map<String, dynamic>? visitWhileStatement(WhileStatement node) {
    //print("visitWhileStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "WhileStatement",
      "condition": node.condition.accept(this),
      "body": node.body.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitDoStatement(DoStatement node) {
    //print("visitDoStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "DoStatement",
      "body": node.body.accept(this),
      "condition": node.condition.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitForStatement(ForStatement node) {
    //print("visitForStatement: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "ForStatement",
      "variables": visitList(node.variables, this),
      "condition": node.condition?.accept(this),
      "updates": visitList(node.updates, this),
      "body": node.body.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitForInStatement(ForInStatement node) {
    //print("visitForInStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ForInStatement",
      "variable": node.variable.accept(this),
      "iterable": node.iterable.accept(this),
      "body": node.body.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitSwitchStatement(SwitchStatement node) {
    //print("visitSwitchStatement: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "SwitchStatement",
      "expression": node.expression.accept(this),
      "cases": visitList(node.cases, this)
    };
  }

  @override
  Map<String, dynamic>? visitPatternSwitchStatement(
      PatternSwitchStatement node) {
    return {
      "xtype": "PatternSwitchStatement",
      "expression": node.expression.accept(this),
      "cases": visitList(node.cases, this)
    };
  }

  @override
  Map<String, dynamic>? visitContinueSwitchStatement(
      ContinueSwitchStatement node) {
    return {
      "xtype": "ContinueSwitchStatement",
      "target": node.target.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitIfStatement(IfStatement node) {
    //print("visitIfStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "IfStatement",
      "condition": node.condition.accept(this),
      "then": node.then.accept(this),
      "otherwise": node.otherwise?.accept(this)
    };
  }

  Map<String, dynamic> visitIfCaseStatement(IfCaseStatement node) =>
      defaultStatement(node);
  @override
  Map<String, dynamic>? visitReturnStatement(ReturnStatement node) {
    //print("visitReturnStatement: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "ReturnStatement",
      "expression": node.expression?.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitTryCatch(TryCatch node) {
    //print("visitTryCatch: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "TryCatch",
      "body": node.body.accept(this),
      "catches": visitList(node.catches, this)
    };
  }

  @override
  Map<String, dynamic>? visitTryFinally(TryFinally node) {
    //print("visitTryFinally: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "TryFinally",
      "body": node.body.accept(this),
      "finalizer": node.finalizer.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitYieldStatement(YieldStatement node) {
    //print("visitYieldStatement: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "YieldStatement",
      "isYieldStar": node.isYieldStar,
      "expression": node.expression.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitVariableDeclaration(VariableDeclaration node) {
    //print("visitVariableDeclaration: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "VariableDeclaration",
      "name": node.name,
      "initializer": node.initializer?.accept(this),
      "type": node.type.accept(this),
      "isFinal": node.isFinal,
      "isConst": node.isConst,
      "isInitializingFormal": node.isInitializingFormal,
      "isCovariantByDeclaration": node.isCovariantByDeclaration,
      "isLate": node.isLate,
      "isRequired": node.isRequired,
      "isLowered": node.isLowered,
      "hasDeclaredInitializer": node.hasDeclaredInitializer,
      "annotations": visitList(node.annotations, this),
    };
  }

  Map<String, dynamic> visitPatternVariableDeclaration(
          PatternVariableDeclaration node) =>
      defaultStatement(node);
  @override
  Map<String, dynamic>? visitFunctionDeclaration(FunctionDeclaration node) {
    //print("visitFunctionDeclaration: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "FunctionDeclaration",
      "variable": node.variable.accept(this),
      "function": node.function.accept(this),
    };
  }
}

mixin _MemberVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultMember(Member node) {
    return {
      "xtype": "Member",
      "annotations": visitList(node.annotations, this),
      "name": node.name.accept(this),
      "fileUri": node.fileUri.toString(),
      "runtimeType": node.runtimeType.toString(),
    };
  }

  @override
  Map<String, dynamic>? visitConstructor(Constructor node) {
    return {
      "xtype": "Constructor",
      "annotations": visitList(node.annotations, this),
      "name": node.name.accept(this),
      "initializers": visitList(node.initializers, this),
      "function": node.function.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitProcedure(Procedure node) {
    //print("visitProcedure: ${node.name.text}");
    //node.visitChildren(this);
    return {
      "xtype": "Procedure",
      "isAbstract": node.isAbstract,
      "isAccessor": node.isAccessor,
      "isConst": node.isConst,
      "isExternal": node.isExternal,
      "isFactory": node.isFactory,
      "isExtensionMember": node.isExtensionMember,
      "isForwardingSemiStub": node.isForwardingSemiStub,
      "isForwardingStub": node.isForwardingStub,
      "isGetter": node.isGetter,
      "isSetter": node.isSetter,
      "isStatic": node.isStatic,
      "isInstanceMember": node.isInstanceMember,
      "isInternalImplementation": node.isInternalImplementation,
      "isMemberSignature": node.isMemberSignature,
      "isNoSuchMethodForwarder": node.isNoSuchMethodForwarder,
      "isSynthetic": node.isSynthetic,
      "isNonNullableByDefault": node.isNonNullableByDefault,
      "isRedirectingFactory": node.isRedirectingFactory,
      "isSyntheticForwarder": node.isSyntheticForwarder,
      "name": node.name.accept(this),
      "kind": node.kind.name,
      "stubKind": node.stubKind.name,
      "function": node.function.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitField(Field node) {
    //print("visitField: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Field",
      "isConst": node.isConst,
      "isCovariantByClass": node.isCovariantByClass,
      "isCovariantByDeclaration": node.isCovariantByDeclaration,
      "isLate": node.isLate,
      "isFinal": node.isFinal,
      "isStatic": node.isStatic,
      "isInstanceMember": node.isInstanceMember,
      "isInternalImplementation": node.isInternalImplementation,
      "isNonNullableByDefault": node.isNonNullableByDefault,
      "hasGetter": node.hasGetter,
      "hasSetter": node.hasSetter,
      "isAbstract": node.isAbstract,
      "annotations": visitList(node.annotations, this),
      "type": node.type.accept(this),
      "name": node.name.accept(this),
      "initializer": node.initializer?.accept(this),
    };
  }
}

mixin _InitializerVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  Map<String, dynamic> defaultInitializer(Initializer node) {
    return {
      "xtype": "Initializer",
      "isSynthetic": node.isSynthetic,
      "runtimeType": node.runtimeType.toString()
    };
  }

  @override
  Map<String, dynamic>? visitInvalidInitializer(InvalidInitializer node) {
    //print("visitInvalidInitializer: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "InvalidInitializer"};
  }

  @override
  Map<String, dynamic>? visitFieldInitializer(FieldInitializer node) {
    //print("visitFieldInitializer: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "FieldInitializer",
      "field": node.field.acceptReference(this),
      "value": node.value.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitSuperInitializer(SuperInitializer node) {
    //print("visitSuperInitializer: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SuperInitializer",
      "target": node.target.acceptReference(this),
      "arguments": node.arguments.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitRedirectingInitializer(
      RedirectingInitializer node) {
    //print("visitRedirectingInitializer: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "RedirectingInitializer",
      "target": node.target.acceptReference(this),
      "arguments": node.arguments.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitLocalInitializer(LocalInitializer node) {
    //print("visitLocalInitializer: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "LocalInitializer",
      "variable": node.variable.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitAssertInitializer(AssertInitializer node) {
    //print("visitAssertInitializer: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "AssertInitializer",
      "statement": node.statement.accept(this)
    };
  }
}

mixin _TreeNodeVisitor on RecursiveResultVisitor<Map<String, dynamic>> {
  RegExp get pluginUri;

  @override
  Map<String, dynamic>? visitLibrary(Library node) {
    return {
      "xtype": "Library",
      "name": node.name,
      "languageVersion.major": node.languageVersion.major,
      "languageVersion.minor": node.languageVersion.minor,
      "importUri": node.importUri.toString(),
      "isSynthetic": node.isSynthetic,
      "nonNullableByDefaultCompiledMode":
          node.nonNullableByDefaultCompiledMode.name,
      "isNonNullableByDefault": node.isNonNullableByDefault,
      "isUnsupported": node.isUnsupported,
      "problemsAsJson": node.problemsAsJson,
      "annotations": visitList(node.annotations, this),
      "dependencies": visitList(node.dependencies, this),
      "parts": visitList(node.parts, this),
      "typedefs": visitList(node.typedefs, this),
      "classes": visitList(node.classes, this),
      "extensions": visitList(node.extensions, this),
      "procedures": visitList(node.procedures, this),
      "fields": visitList(node.fields, this),
    };
  }

  Map<String, dynamic>? visitLibraryDependency(LibraryDependency node) =>
      defaultTreeNode(node);
  @override
  Map<String, dynamic>? visitCombinator(Combinator node) {
    return {
      "xtype": "Combinator",
      "isShow": node.isShow,
      "names": node.names,
    };
  }

  Map<String, dynamic>? visitLibraryPart(LibraryPart node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitTypedef(Typedef node) => defaultTreeNode(node);
  Map<String, dynamic>? visitTypeParameter(TypeParameter node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitFunctionNode(FunctionNode node) =>
      defaultTreeNode(node);
  @override
  Map<String, dynamic>? visitArguments(Arguments node) {
    //print("visitArguments: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Arguments",
      "types": visitList(node.types, this),
      "positional": visitList(node.positional, this),
      "named": visitList(node.named, this),
    };
  }

  Map<String, dynamic>? visitNamedExpression(NamedExpression node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitSwitchCase(SwitchCase node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitPatternSwitchCase(PatternSwitchCase node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitSwitchExpressionCase(SwitchExpressionCase node) =>
      defaultTreeNode(node);
  @override
  Map<String, dynamic>? visitCatch(Catch node) {
    return {
      "xtype": "Catch",
      "guard": node.guard.accept(this),
      "exception": node.exception?.accept(this),
      "stackTrace": node.stackTrace?.accept(this),
      "body": node.body.accept(this),
    };
  }

  Map<String, dynamic>? visitMapLiteralEntry(MapLiteralEntry node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitMapPatternEntry(MapPatternEntry node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitMapPatternRestEntry(MapPatternRestEntry node) =>
      defaultTreeNode(node);
  Map<String, dynamic>? visitPatternGuard(PatternGuard node) =>
      defaultTreeNode(node);

  Map<String, dynamic>? visitComponent(Component node) {
    var acceptLibraties = <Library>[];

    for (var element in node.libraries) {
      if (pluginUri.hasMatch(element.importUri.toString())) {
        acceptLibraties.add(element);
      }
    }

    return {
      "xtype": "Component",
      "libraries": visitList(acceptLibraties, this),
    };
  }
}

class _Visitor extends RecursiveResultVisitor<Map<String, dynamic>>
    with
        _DefaultVisitor,
        _DartTypeVisitor,
        _ConstantVisitor,
        _MemberReferenceVisitor,
        _ExpressionVisitor,
        _StatementVisitor,
        _MemberVisitor,
        _InitializerVisitor,
        _TreeNodeVisitor {
  final RegExp pluginUri;

  _Visitor(this.pluginUri);

  @override
  Map<String, dynamic>? visitBoolConstantReference(BoolConstant node) {
    return {"xtype": "BoolConstantReference", "value": node.value};
  }

  @override
  Map<String, dynamic>? visitCheckLibraryIsLoaded(CheckLibraryIsLoaded node) {
    return {
      "xtype": "CheckLibraryIsLoaded",
    };
  }

  @override
  Map<String, dynamic>? visitClassReference(Class node) {
    Library? library;
    if (node.parent is Library) {
      library = node.parent as Library;
    }
    return {
      "xtype": "ClassReference",
      "importUri": library?.importUri.toString(),
      "name": node.name,
    };
  }

  @override
  Map<String, dynamic>? visitConstructorTearOffConstantReference(
      ConstructorTearOffConstant node) {
    return {
      "xtype": "ConstructorTearOffConstantReference",
      "target": node.target.name.text,
    };
  }

  @override
  Map<String, dynamic>? visitDoubleConstantReference(DoubleConstant node) {
    //print("visitDoubleConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "DoubleConstantReference",
      "isFinite": node.value.isFinite,
      "isNaN": node.value.isNaN,
      "isInfinite": node.value.isInfinite,
      "isNegative": node.value.isNegative,
      "value": node.value.isFinite ? node.value : node.value.toString()
    };
  }

  @override
  Map<String, dynamic>? visitExtension(Extension node) {
    //print("visitEqualsNull: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Extension",
      "typeParameters": visitList(node.typeParameters, this),
      "onType": node.onType.accept(this),
      "showHideClause.shownSupertypes":
          visitList(node.showHideClause?.shownSupertypes, this),
      "showHideClause.hiddenSupertypes":
          visitList(node.showHideClause?.hiddenSupertypes, this),
    };
  }

  @override
  Map<String, dynamic>? visitExtensionReference(Extension node) {
    //print("visitExtensionReference: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "ExtensionReference",
      "name": node.name,
    };
  }

  /// for (variables;condition;updates) body;

  @override
  Map<String, dynamic>? visitInstanceConstantReference(InstanceConstant node) {
    //print("visitInstanceConstantReference: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "InstanceConstantReference",
      "classRef": node.classNode.getClassRef().toString(),
      "fields": node.fieldValues.keys
          .map((key) => key.asField.acceptReference(this))
          .toList(),
      "values": node.fieldValues.values
          .map((key) => key.acceptReference(this))
          .toList()
    };
  }

  @override
  Map<String, dynamic>? visitInstantiationConstantReference(
      InstantiationConstant node) {
    //print("visitInstantiationConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "InstantiationConstantReference"};
  }

  @override
  Map<String, dynamic>? visitIntConstantReference(IntConstant node) {
    //print("visitIntConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "IntConstantReference",
      "value": node.value,
    };
  }

  @override
  Map<String, dynamic>? visitLibraryPart(LibraryPart node) {
    //print("visitLibraryPart: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "LibraryPart",
      "partUri": node.partUri,
      "annotations": visitList(node.annotations, this)
    };
  }

  @override
  Map<String, dynamic>? visitListConstantReference(ListConstant node) {
    //print("visitListConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "ListConstantReference"};
  }

  @override
  Map<String, dynamic>? visitMapConstantReference(MapConstant node) {
    //print("visitMapConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "MapConstantReference"};
  }

  @override
  Map<String, dynamic>? visitMapLiteralEntry(MapLiteralEntry node) {
    //print("visitMapLiteralEntry: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "MapLiteralEntry",
      "key": node.key.accept(this),
      "value": node.value.accept(this)
    };
  }

  @override
  Map<String, dynamic>? visitName(Name node) {
    //print("visitName: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Name",
      "text": node.text,
      "libraryName": node.library?.name,
      "isPrivate": node.isPrivate,
    };
  }

  @override
  Map<String, dynamic>? visitNamedExpression(NamedExpression node) {
    //print("visitNamedExpression: ${node.toString()}");
    //node.visitChildren(this);

    return {
      "xtype": "NamedExpression",
      "name": node.name,
      "value": node.value.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitNamedType(NamedType node) {
    //print("visitNamedType: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "NamedType",
      "name": node.name,
      "isRequired": node.isRequired,
      "type": node.type.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitNullConstantReference(NullConstant node) {
    //print("visitNullConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "NullConstantReference"};
  }

  // @override
  // Map<String, dynamic>? visitRedirectingFactory(RedirectingFactory node) {
  //   //print("visitRedirectingFactory: ${node.toString()}");
  //   //node.visitChildren(this);
  //   return {
  //     "xtype": "RedirectingFactory",
  //     "name": node.name.accept(this),
  //     "isConst": node.isConst,
  //     "isExternal": node.isExternal,
  //     "annotations": visitList(node.annotations, this),
  //     "target": node.target?.acceptReference(this),
  //     "typeArguments": visitList(node.typeArguments, this),
  //     "function": node.function.accept(this),
  //   };
  // }

  // @override
  // Map<String, dynamic>? visitRedirectingFactoryReference(
  //     RedirectingFactory node) {
  //   //print("visitRedirectingFactoryReference: ${node.toString()}");
  //   //node.visitChildren(this);

  //   return {"xtype": "RedirectingFactoryReference"};
  // }

  @override
  Map<String, dynamic>? visitRedirectingFactoryTearOffConstantReference(
      RedirectingFactoryTearOffConstant node) {
    //print("visitRedirectingFactoryTearOffConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "RedirectingFactoryTearOffConstantReference"};
  }

  @override
  Map<String, dynamic>? visitSetConstantReference(SetConstant node) {
    //print("visitSetConstantReference: ${node.toString()}");
    //node.visitChildren(this);

    return {"xtype": "SetConstantReference"};
  }

  @override
  Map<String, dynamic>? visitStaticTearOffConstantReference(
      StaticTearOffConstant node) {
    //print("visitStaticTearOffConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "StaticTearOffConstantReference",
      "target": node.target.acceptReference(this)
    };
  }

  @override
  Map<String, dynamic>? visitStringConstantReference(StringConstant node) {
    //print("visitStringConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "StringConstantReference", "value": node.value};
  }

  @override
  Map<String, dynamic>? visitSupertype(Supertype node) {
    //print("visitSupertype: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Supertype",
      "classNode": node.classNode.acceptReference(this),
      "typeArguments": visitList(node.typeArguments, this)
    };
  }

  @override
  Map<String, dynamic>? visitSwitchCase(SwitchCase node) {
    //print("visitSwitchCase: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "SwitchCase",
      "isDefault": node.isDefault,
      "expressionOffsets": node.expressionOffsets.join(","),
      "body": node.body.accept(this),
      "expressions": visitList(node.expressions, this)
    };
  }

  @override
  Map<String, dynamic>? visitPatternSwitchCase(PatternSwitchCase node) {
    return {
      "xtype": "PatternSwitchCase",
      "body": node.body.accept(this),
      "patternGuards": visitList(node.patternGuards, this)
    };
  }

  @override
  Map<String, dynamic>? visitPatternGuard(PatternGuard node) {
    return {
      "xtype": "PatternGuard",
      "pattern": node.pattern.accept(this),
      "guard": node.guard?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitConstantPattern(ConstantPattern node) {
    return {
      "xtype": "ConstantPattern",
      "expression": node.expression.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitSymbolConstantReference(SymbolConstant node) {
    //print("visitSymbolConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "SymbolConstantReference"};
  }

  @override
  Map<String, dynamic>? visitTypeLiteralConstantReference(
      TypeLiteralConstant node) {
    //print("visitTypeLiteralConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "TypeLiteralConstantReference"};
  }

  @override
  Map<String, dynamic>? visitTypeParameter(TypeParameter node) {
    //print("visitTypeParameter: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "TypeParameter",
      "annotations": visitList(node.annotations, this),
      "type": node.bound.accept(this),
      "defaultType": node.defaultType.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitTypedef(Typedef node) {
    //print("visitTypedef: ${node.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "Typedef",
      "annotations": visitList(node.annotations, this),
      "typeParameters": visitList(node.typeParameters, this),
      "type": node.type?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitTypedefReference(Typedef node) {
    //print("visitTypedefReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "TypedefReference"};
  }

  @override
  Map<String, dynamic>? visitTypedefTearOffConstantReference(
      TypedefTearOffConstant node) {
    //print("visitTypedefTearOffConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "TypedefTearOffConstantReference"};
  }

  @override
  Map<String, dynamic>? visitUnevaluatedConstantReference(
      UnevaluatedConstant node) {
    //print("visitUnevaluatedConstantReference: ${node.toString()}");
    //node.visitChildren(this);
    return {"xtype": "UnevaluatedConstantReference"};
  }

  @override
  Map<String, dynamic>? visitClass(Class node) {
    //print("visitClass: ${node.name}");
    //node.visitChildren(this);

    return {
      "xtype": "Class",
      "name": node.name,
      "isMacro": node.isMacro,
      "isAbstract": node.isAbstract,
      "isEnum": node.isEnum,
      "isAnonymousMixin": node.isAnonymousMixin,
      "isEliminatedMixin": node.isEliminatedMixin,
      "isMixinApplication": node.isMixinApplication,
      "isMixinDeclaration": node.isMixinDeclaration,
      "annotations": visitList(node.annotations, this),
      "typeParameters": visitList(node.typeParameters, this),
      "supertype": node.supertype?.accept(this),
      "mixedInType": node.mixedInType?.accept(this),
      "implementedTypes": visitList(node.implementedTypes, this),
      "constructors": visitList(node.constructors, this),
      "procedures": visitList(node.procedures, this),
      "fields": visitList(node.fields, this),
      // "redirectingFactories": visitList(node.redirectingFactories, this),
    };
  }

  @override
  Map<String, dynamic>? visitFunctionNode(FunctionNode node) {
    //print("visitFunctionNode: ${node.body?.toString()}");
    //node.visitChildren(this);
    return {
      "xtype": "FunctionNode",
      "typeParameters": visitList(node.typeParameters, this),
      "positionalParameters": visitList(node.positionalParameters, this),
      "namedParameters": visitList(node.namedParameters, this),
      "requiredParameterCount": node.requiredParameterCount,
      "returnType": node.returnType.accept(this),
      "asyncMarker": node.asyncMarker.name,
      "dartAsyncMarker": node.dartAsyncMarker.name,
      "futureValueType": node.futureValueType?.accept(this),
      "body": node.body?.accept(this),
    };
  }

  @override
  Map<String, dynamic>? visitLibraryDependency(LibraryDependency node) {
    // print(
    //    "visitLibraryDependency: enclosingLibrary:${node.enclosingLibrary.importUri},targetLibrary:${node.targetLibrary.importUri}");
    //node.visitChildren(this);
    return {
      "xtype": "LibraryDependency",
      "name": node.name,
      "importUri": node.targetLibrary.importUri.toString(),
      "annotations": visitList(node.annotations, this),
      "combinators": visitList(node.combinators, this)
    };
  }

  @override
  Map<String, dynamic>? defaultTreeNode(TreeNode node) {
    print("defaultTreeNode: ${node.runtimeType.toString()} ${node.toString()}");
    //super.defaultTreeNode(node);
    return {
      "xtype": "TreeNode",
    };
  }
}
