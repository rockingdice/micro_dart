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






------------start printOpcodes------------
0: OpCallStart(test:///main.dart@@main:static)
1: OpPopArgments(false,true,[])
2: PushConstantInt(0)
3: OpSetScopeParam(a)
4: Jump(@17)

5: OpCallStart(_FunctionExpression_)
6: OpPopArgments(false,true,[])
7: PushConstantInt(1)
8: SetParam(a)
9: PushConstant(0)
10: GetParam(a)
11: StringConcat(2)
12: PushConstantInt(1)
13: PushConstantInt(0)
14: OpPushArgments(3)
15: CallExternal(1,true,false,false,dart:core@@print:static,dart:core,,print,1,[])
16: OpCallEnd()


17: PushPointer(5,true)
18: PushConstantInt(0)
19: PushConstantInt(3)
20: PushConstant(1)
21: PushConstantInt(1)
22: OpPushArgments(4)
23: CallExternal(3,false,false,false,dart:core@Duration@,dart:core,Duration,,0,[seconds])
24: PushConstantInt(2)
25: PushConstantInt(0)
26: OpPushArgments(4)
27: CallExternal(1,true,false,false,dart:async@Future@delayed:static,dart:async,Future,delayed,2,[])
28: Jump(@41)


29: OpCallStart(_FunctionExpression_)
30: OpPopArgments(false,true,[])
31: PushConstantInt(2)
32: SetParam(a)
33: PushConstant(2)
34: GetParam(a)
35: StringConcat(2)
36: PushConstantInt(1)
37: PushConstantInt(0)
38: OpPushArgments(3)
39: CallExternal(1,true,false,false,dart:core@@print:static,dart:core,,print,1,[])
40: OpCallEnd()


41: PushPointer(29,true)
42: PushConstantInt(0)
43: PushConstantInt(2)
44: PushConstant(1)
45: PushConstantInt(1)
46: OpPushArgments(4)
47: CallExternal(3,false,false,false,dart:core@Duration@,dart:core,Duration,,0,[seconds])
48: PushConstantInt(2)
49: PushConstantInt(0)
50: OpPushArgments(4)
51: CallExternal(1,true,false,false,dart:async@Future@delayed:static,dart:async,Future,delayed,2,[])
52: Jump(@65)


53: OpCallStart(_FunctionExpression_)
54: OpPopArgments(false,true,[])
55: PushConstantInt(3)
56: SetParam(a)
57: PushConstant(3)
58: GetParam(a)
59: StringConcat(2)
60: PushConstantInt(1)
61: PushConstantInt(0)
62: OpPushArgments(3)
63: CallExternal(1,true,false,false,dart:core@@print:static,dart:core,,print,1,[])
64: OpCallEnd()


65: PushPointer(53,true)
66: PushConstantInt(1)
67: PushConstantInt(0)
68: OpPushArgments(3)
69: CallExternal(1,true,false,false,dart:async@Future@:static,dart:async,Future,,1,[])
70: PushConstantInt(0)
71: PushConstantInt(0)
72: OpPushArgments(2)


73: OpCallDynamicAsync(test:///main.dart@@testDelay:static,true,false,false,0,[])

74: GetParam(a)
75: PushConstantInt(1)
76: PushConstantInt(0)
77: OpPushArgments(3)
78: CallExternal(1,true,false,false,dart:core@@print:static,dart:core,,print,1,[])
79: GetParam(a)
80: OpReturn()
81: OpCallEnd()


82: OpCallStart(test:///main.dart@@testDelay:static)
83: OpPopArgments(false,true,[])
84: PushConstantInt(0)
85: PushConstantInt(4)
86: PushConstant(1)
87: PushConstantInt(1)
88: OpPushArgments(4)
89: CallExternal(3,false,false,false,dart:core@Duration@,dart:core,Duration,,0,[seconds])
90: PushConstantInt(1)
91: PushConstantInt(0)
92: OpPushArgments(3)
93: CallExternal(1,true,false,false,dart:async@Future@delayed:static,dart:async,Future,delayed,1,[])
94: Await()
95: OpCallEnd()


------------end printOpcodes------------
0:0 <_root_> start:OpCallStart(test:///main.dart@@main:static):Scope({#args: [0, 0]},[])
----------------
0:1 <_root_> start:OpPopArgments(false,true,[]):Scope({#args: [0, 0]},[])
----------------
0:2 <_root_> start:PushConstantInt(0):Scope({},[])
----------------
0:3 <_root_> start:OpSetScopeParam(a):Scope({},[0])
----------------
0:4 <_root_> start:Jump(@17):Scope({a: 0},[])
----------------
0:17 <_root_> start:PushPointer(5,true):Scope({a: 0},[])
----------------
0:18 <_root_> start:PushConstantInt(0):Scope({a: 0},[FunctionPointer(null, true,false, 5)])
----------------
0:19 <_root_> start:PushConstantInt(3):Scope({a: 0},[FunctionPointer(null, true,false, 5), 0])
----------------
0:20 <_root_> start:PushConstant(1):Scope({a: 0},[FunctionPointer(null, true,false, 5), 0, 3])
----------------
0:21 <_root_> start:PushConstantInt(1):Scope({a: 0},[FunctionPointer(null, true,false, 5), 0, 3, seconds])
----------------
0:22 <_root_> start:OpPushArgments(4):Scope({a: 0},[FunctionPointer(null, true,false, 5), 0, 3, seconds, 1])
----------------
0:23 <_root_> start:CallExternal(3,false,false,false,dart:core@Duration@,dart:core,Duration,,0,[seconds]):Scope({a: 0},[FunctionPointer(null, true,false, 5), [0, 3, seconds, 1]])
----------------
0:24 <_root_> start:PushConstantInt(2):Scope({a: 0},[FunctionPointer(null, true,false, 5), InstanceBridge(Duration)])
----------------
0:25 <_root_> start:PushConstantInt(0):Scope({a: 0},[FunctionPointer(null, true,false, 5), InstanceBridge(Duration), 2])
----------------
0:26 <_root_> start:OpPushArgments(4):Scope({a: 0},[FunctionPointer(null, true,false, 5), InstanceBridge(Duration), 2, 0])
----------------
0:27 <_root_> start:CallExternal(1,true,false,false,dart:async@Future@delayed:static,dart:async,Future,delayed,2,[]):Scope({a: 0},[[FunctionPointer(null, true,false, 5), InstanceBridge(Duration), 2, 0]])
----------------
0:28 <_root_> start:Jump(@41):Scope({a: 0},[Instance of 'Future<Null>'])
----------------
0:41 <_root_> start:PushPointer(29,true):Scope({a: 0},[Instance of 'Future<Null>'])
----------------
0:42 <_root_> start:PushConstantInt(0):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29)])
----------------
0:43 <_root_> start:PushConstantInt(2):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), 0])
----------------
0:44 <_root_> start:PushConstant(1):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), 0, 2])
----------------
0:45 <_root_> start:PushConstantInt(1):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), 0, 2, seconds])
----------------
0:46 <_root_> start:OpPushArgments(4):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), 0, 2, seconds, 1])
----------------
0:47 <_root_> start:CallExternal(3,false,false,false,dart:core@Duration@,dart:core,Duration,,0,[seconds]):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), [0, 2, seconds, 1]])
----------------
0:48 <_root_> start:PushConstantInt(2):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), InstanceBridge(Duration)])
----------------
0:49 <_root_> start:PushConstantInt(0):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), InstanceBridge(Duration), 2])
----------------
0:50 <_root_> start:OpPushArgments(4):Scope({a: 0},[Instance of 'Future<Null>', FunctionPointer(null, true,false, 29), InstanceBridge(Duration), 2, 0])
----------------
0:51 <_root_> start:CallExternal(1,true,false,false,dart:async@Future@delayed:static,dart:async,Future,delayed,2,[]):Scope({a: 0},[Instance of 'Future<Null>', [FunctionPointer(null, true,false, 29), InstanceBridge(Duration), 2, 0]])
----------------
0:52 <_root_> start:Jump(@65):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>'])
----------------
0:65 <_root_> start:PushPointer(53,true):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>'])
----------------
0:66 <_root_> start:PushConstantInt(1):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', FunctionPointer(null, true,false, 53)])
----------------
0:67 <_root_> start:PushConstantInt(0):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', FunctionPointer(null, true,false, 53), 1])
----------------
0:68 <_root_> start:OpPushArgments(3):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', FunctionPointer(null, true,false, 53), 1, 0])
----------------
0:69 <_root_> start:CallExternal(1,true,false,false,dart:async@Future@:static,dart:async,Future,,1,[]):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', [FunctionPointer(null, true,false, 53), 1, 0]])
----------------
0:70 <_root_> start:PushConstantInt(0):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>'])
----------------
0:71 <_root_> start:PushConstantInt(0):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', 0])
----------------
0:72 <_root_> start:OpPushArgments(2):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', 0, 0])
----------------
0:73 <_root_> start:OpCallDynamicAsync(test:///main.dart@@testDelay:static,true,false,false,0,[]):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', [0, 0]])
----------------
0:74 <_root_> start:GetParam(a):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>'])
----------------
0:75 <_root_> start:PushConstantInt(1):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', 0])
----------------
0:76 <_root_> start:PushConstantInt(0):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', 0, 1])
----------------
0:77 <_root_> start:OpPushArgments(3):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', 0, 1, 0])
----------------
0:78 <_root_> start:CallExternal(1,true,false,false,dart:core@@print:static,dart:core,,print,1,[]):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', [0, 1, 0]])
----------------
0
0:79 <_root_> start:GetParam(a):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', null])
----------------
0:80 <_root_> start:OpReturn():Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', null, 0])
----------------
0:81 <_root_> start:OpCallEnd():Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', null])
----------------
0:0 <_root_> start:OpCallStart(test:///main.dart@@main:static):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', null])
----------------
0:1 <_root_> start:OpPopArgments(false,true,[]):Scope({a: 0},[Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<Null>', Instance of 'Future<dynamic>', null])
----------------
NoSuchMethodError: The method 'removeLast' was called on null.
Receiver: null
Tried calling: removeLast()
dart:core                                                  Object.noSuchMethod
OpPopArgments.run
Scope.call
Scope.call.<fn>

✖ Futures tests :test future3
1:53 <_anonymous_> start:OpCallStart(_FunctionExpression_):Scope({#args: [0, 0]},[])
----------------
1:54 <_anonymous_> start:OpPopArgments(false,true,[]):Scope({#args: [0, 0]},[])
----------------
1:55 <_anonymous_> start:PushConstantInt(3):Scope({},[])
----------------
1:56 <_anonymous_> start:SetParam(a):Scope({},[3])
----------------
1:57 <_anonymous_> start:PushConstant(3):Scope({},[])
----------------
1:58 <_anonymous_> start:GetParam(a):Scope({},[delayed3 ])
----------------
1:59 <_anonymous_> start:StringConcat(2):Scope({},[delayed3 , 3])
----------------
1:60 <_anonymous_> start:PushConstantInt(1):Scope({},[delayed3 3])
----------------
1:61 <_anonymous_> start:PushConstantInt(0):Scope({},[delayed3 3, 1])
----------------
1:62 <_anonymous_> start:OpPushArgments(3):Scope({},[delayed3 3, 1, 0])
----------------
1:63 <_anonymous_> start:CallExternal(1,true,false,false,dart:core@@print:static,dart:core,,print,1,[]):Scope({},[[delayed3 3, 1, 0]])
----------------
delayed3 3
1:64 <_anonymous_> start:OpCallEnd():Scope({},[null])
----------------
1:82 <test:///main.dart@@testDelay:static> start:OpCallStart(test:///main.dart@@testDelay:static):Scope({#args: [0, 0]},[])
----------------
1:83 <test:///main.dart@@testDelay:static> start:OpPopArgments(false,true,[]):Scope({#args: [0, 0]},[])
----------------
1:84 <test:///main.dart@@testDelay:static> start:PushConstantInt(0):Scope({},[])
----------------
1:85 <test:///main.dart@@testDelay:static> start:PushConstantInt(4):Scope({},[0])
----------------
1:86 <test:///main.dart@@testDelay:static> start:PushConstant(1):Scope({},[0, 4])
----------------
1:87 <test:///main.dart@@testDelay:static> start:PushConstantInt(1):Scope({},[0, 4, seconds])
----------------
1:88 <test:///main.dart@@testDelay:static> start:OpPushArgments(4):Scope({},[0, 4, seconds, 1])
----------------
1:89 <test:///main.dart@@testDelay:static> start:CallExternal(3,false,false,false,dart:core@Duration@,dart:core,Duration,,0,[seconds]):Scope({},[[0, 4, seconds, 1]])
----------------
1:90 <test:///main.dart@@testDelay:static> start:PushConstantInt(1):Scope({},[InstanceBridge(Duration)])
----------------
1:91 <test:///main.dart@@testDelay:static> start:PushConstantInt(0):Scope({},[InstanceBridge(Duration), 1])
----------------
1:92 <test:///main.dart@@testDelay:static> start:OpPushArgments(3):Scope({},[InstanceBridge(Duration), 1, 0])
----------------
1:93 <test:///main.dart@@testDelay:static> start:CallExternal(1,true,false,false,dart:async@Future@delayed:static,dart:async,Future,delayed,1,[]):Scope({},[[InstanceBridge(Duration), 1, 0]])
----------------
1:94 <test:///main.dart@@testDelay:static> start:Await():Scope({},[Instance of 'Future<Null>'])
----------------
Exited (1)
