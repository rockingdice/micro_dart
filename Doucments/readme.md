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






flutter: ----------------
flutter: 2:31 <package:flutter_example/widget.dart@MyApp@> start:OpPushArgments(4):Scope(package:flutter_example/widget.dart@MyApp@,{key: null, #this: InstanceImpl(TypeRef(MyApp),{})},[0, null, key, 1])
widget.dart:1
flutter: ----------------
flutter: 2:32 <package:flutter_example/widget.dart@MyApp@> start:CallExternal(3,false,false,false,package:flutter/src/widgets/framework.dart@StatelessWidget@,package:flutter/src/widgets/framework.dart,StatelessWidget,,0,[key]):Scope(package:flutter_example/widget.dart@MyApp@,{key: null, #this: InstanceImpl(TypeRef(MyApp),{})},[[0, null, key, 1]])
widget.dart:1
flutter: ----------------
flutter: 2:33 <package:flutter_example/widget.dart@MyApp@> start:OpSetThisSuper():Scope(package:flutter_example/widget.dart@MyApp@,{key: null, #this: InstanceImpl(TypeRef(MyApp),{})},[$StatelessWidget])
widget.dart:1
flutter: ----------------
flutter: 2:34 <package:flutter_example/widget.dart@MyApp@> start:GetParam(#this):Scope(package:flutter_example/widget.dart@MyApp@,{key: null, #this: $StatelessWidget},[])
widget.dart:1
flutter: ----------------
flutter: 2:35 <package:flutter_example/widget.dart@MyApp@> start:OpReturn():Scope(package:flutter_example/widget.dart@MyApp@,{key: null, #this: $StatelessWidget},[$StatelessWidget])
widget.dart:1
flutter: ----------------
flutter: 2:36 <package:flutter_example/widget.dart@MyApp@> start:OpCallEnd():Scope(package:flutter_example/widget.dart@MyApp@,{key: null, #this: $StatelessWidget},[])
widget.dart:1
flutter: ----------------
flutter: 1:16 <#c1> start:ReturnField(true,#c1):Scope(#c1,{},[$StatelessWidget])
flutter: ----------------
flutter: 1:17 <#c1> start:OpCallEnd():Scope(#c1,{},[])
flutter: ----------------
flutter: 0:19 <_root_> start:OpReturn():Scope(_root_,{},[$StatelessWidget])
flutter: ----------------
flutter: 0:20 <_root_> start:OpCallEnd():Scope(_root_,{},[])
flutter: ----------------
flutter: 0:37 <_external_call_> start:OpCallStart(package:flutter_example/widget.dart@MyApp@build):Scope(_external_call_,{#args: [$StatelessWidget, $StatelessWidget(dirty), 1, 0]},[])
widget.dart:1
flutter: ----------------
flutter: 0:38 <_external_call_> start:SetScopeParamNull(context):Scope(_external_call_,{#args: [$StatelessWidget, $StatelessWidget(dirty), 1, 0]},[])
flutter: ----------------
flutter: 0:39 <_external_call_> start:OpPopArgments(false,false,[context]):Scope(_external_call_,{#args: [$StatelessWidget, $StatelessWidget(dirty), 1, 0], context: null},[])
flutter: ----------------
flutter: 0:40 <_external_call_> start:PushConstantInt(0):Scope(_external_call_,{context: $StatelessWidget(dirty), #this: $StatelessWidget},[])


0: OpCallStart(package:flutter_example/widget.dart@MyHomePage@title)
1: PushNull()
2: ReturnField(false,title)
3: OpCallEnd()
4: OpCallStart(package:flutter_example/widget.dart@_MyHomePageState@_counter)
5: PushConstantInt(0)
6: ReturnField(false,_counter)
7: OpCallEnd()
8: OpCallStart(package:flutter_example/widget.dart@@createMyApp)
9: OpPopArgments(false,true,[])
10: Jump(@18)
11: OpCallStart(#c1)
12: PushConstantInt(0)
13: PushConstantInt(0)
14: OpPushArgments(2)
15: CallDynamic(package:flutter_example/widget.dart@MyApp@,true,false,false,0,[])
16: ReturnField(true,#c1)
17: OpCallEnd()
18: GetGlobalParam(#c1,11)
19: OpReturn()
20: OpCallEnd()
21: OpCallStart(package:flutter_example/widget.dart@MyApp@)
22: PushNull()
23: OpSetScopeParam(key)
24: OpPopArgments(false,true,[])
25: CreateInstance(package:flutter_example/widget.dart,MyApp)
26: OpSetScopeParam(#this)
27: PushConstantInt(0)
28: GetParam(key)
29: PushConstant(0)
30: PushConstantInt(1)
31: OpPushArgments(4)
32: CallExternal(3,false,false,false,package:flutter/src/widgets/framework.dart@StatelessWidget@,package:flutter/src/widgets/framework.dart,StatelessWidget,,0,[key])
33: OpSetThisSuper()
34: GetParam(#this)
35: OpReturn()
36: OpCallEnd()
37: OpCallStart(package:flutter_example/widget.dart@MyApp@build)
38: SetScopeParamNull(context)
39: OpPopArgments(false,false,[context])
40: PushConstantInt(0)
41: PushConstant(1)
42: PushConstant(2)
43: PushConstantInt(0)
44: PushConstantInt(0)
45: OpPushArgments(2)
46: CallExternal(2,true,true,false,package:flutter/src/material/colors.dart@Colors@deepPurple,package:flutter/src/material/colors.dart,Colors,deepPurple,0,[])
47: PushConstant(3)
48: PushConstantInt(1)
49: OpPushArgments(4)
50: CallExternal(1,true,false,false,package:flutter/src/material/color_scheme.dart@ColorScheme@fromSeed,package:flutter/src/material/color_scheme.dart,ColorScheme,fromSeed,0,[seedColor])
51: PushConstant(4)
52: OpPushConstantBool(true)
53: PushConstant(5)
54: PushConstantInt(2)
55: OpPushArgments(6)
56: CallExternal(1,true,false,false,package:flutter/src/material/theme_data.dart@ThemeData@,package:flutter/src/material/theme_data.dart,ThemeData,,0,[colorScheme, useMaterial3])
57: PushConstant(6)
58: Jump(@68)
59: OpCallStart(#c2)
60: PushConstantInt(0)
61: PushConstant(7)
62: PushConstant(2)
63: PushConstantInt(1)
64: OpPushArgments(4)
65: CallDynamic(package:flutter_example/widget.dart@MyHomePage@,true,false,false,0,[title])
66: ReturnField(true,#c2)
67: OpCallEnd()
68: GetGlobalParam(#c2,59)
69: PushConstant(8)
70: PushConstantInt(3)
71: OpPushArgments(8)
72: CallExternal(3,false,false,false,package:flutter/src/material/app.dart@MaterialApp@,package:flutter/src/material/app.dart,MaterialApp,,0,[title, theme, home])
73: OpReturn()
74: OpCallEnd()
75: OpCallStart(package:flutter_example/widget.dart@MyHomePage@)
76: PushNull()
77: OpSetScopeParam(key)
78: PushNull()
79: OpSetScopeParam(title)
80: OpPopArgments(false,true,[])
81: CreateInstance(package:flutter_example/widget.dart,MyHomePage)
82: OpSetScopeParam(#this)
83: GetParam(title)
84: SetThisProperty(title)
85: PushConstantInt(0)
86: GetParam(key)
87: PushConstant(0)
88: PushConstantInt(1)
89: OpPushArgments(4)
90: CallExternal(3,false,false,false,package:flutter/src/widgets/framework.dart@StatefulWidget@,package:flutter/src/widgets/framework.dart,StatefulWidget,,0,[key])
91: OpSetThisSuper()
92: GetParam(#this)
93: OpReturn()
94: OpCallEnd()
95: OpCallStart(package:flutter_example/widget.dart@MyHomePage@createState)
96: OpPopArgments(false,false,[])
97: PushConstantInt(0)
98: PushConstantInt(0)
99: OpPushArgments(2)
100: CallDynamic(package:flutter_example/widget.dart@_MyHomePageState@,true,false,false,0,[])
101: OpReturn()
102: OpCallEnd()
103: OpCallStart(package:flutter_example/widget.dart@_MyHomePageState@)
104: OpPopArgments(false,true,[])
105: CreateInstance(package:flutter_example/widget.dart,_MyHomePageState)
106: OpSetScopeParam(#this)
107: PushConstantInt(0)
108: PushConstantInt(0)
109: OpPushArgments(2)
110: CallExternal(3,false,false,false,package:flutter/src/widgets/framework.dart@State@,package:flutter/src/widgets/framework.dart,State,,0,[])
111: OpSetThisSuper()
112: GetParam(#this)
113: OpReturn()
114: OpCallEnd()
115: OpCallStart(package:flutter_example/widget.dart@_MyHomePageState@_incrementCounter)
116: OpPopArgments(false,false,[])
117: GetParam(#this)
118: Jump(@131)
119: OpCallStart(_FunctionExpression_)
120: OpPopArgments(false,true,[])
121: GetParam(#this)
122: GetObjectProperty(_counter,4)
123: PushConstantInt(1)
124: PushConstantInt(1)
125: PushConstantInt(0)
126: OpPushArgments(4)
127: CallExternal(1,false,false,false,dart:core@num@+,dart:core,num,+,1,[])
128: GetParam(#this)
129: SetObjectProperty(_counter)
130: OpCallEnd()
131: PushPointer(119,true)
132: PushConstantInt(1)
133: PushConstantInt(0)
134: OpPushArgments(4)
135: CallExternal(1,false,false,false,package:flutter/src/widgets/framework.dart@State@setState,package:flutter/src/widgets/framework.dart,State,setState,1,[])
136: OpCallEnd()
137: OpCallStart(package:flutter_example/widget.dart@_MyHomePageState@build)
138: SetScopeParamNull(context)
139: OpPopArgments(false,false,[context])
140: PushConstantInt(0)
141: PushConstantInt(0)
142: GetParam(context)
143: PushConstantInt(1)
144: PushConstantInt(0)
145: OpPushArgments(3)
146: CallExternal(1,true,false,false,package:flutter/src/material/theme.dart@Theme@of,package:flutter/src/material/theme.dart,Theme,of,1,[])
147: OpPushArgments(2)
148: CallExternal(2,false,true,false,package:flutter/src/material/theme_data.dart@ThemeData@colorScheme,package:flutter/src/material/theme_data.dart,ThemeData,colorScheme,0,[])
149: PushConstantInt(0)
150: PushConstantInt(0)
151: OpPushArgments(3)
152: CallExternal(1,false,true,false,package:flutter/src/material/color_scheme.dart@ColorScheme@inversePrimary,package:flutter/src/material/color_scheme.dart,ColorScheme,inversePrimary,0,[])
153: PushConstant(9)
154: GetParam(#this)
155: PushConstantInt(0)
156: PushConstantInt(0)
157: OpPushArgments(3)
158: CallExternal(1,false,true,false,package:flutter/src/widgets/framework.dart@State@widget,package:flutter/src/widgets/framework.dart,State,widget,0,[])
159: GetObjectProperty(title,0)
160: PushConstantInt(1)
161: PushConstantInt(0)
162: OpPushArgments(3)
163: CallExternal(3,false,false,false,package:flutter/src/widgets/text.dart@Text@,package:flutter/src/widgets/text.dart,Text,,1,[])
164: PushConstant(2)
165: PushConstantInt(2)
166: OpPushArgments(6)
167: CallExternal(3,false,false,false,package:flutter/src/material/app_bar.dart@AppBar@,package:flutter/src/material/app_bar.dart,AppBar,,0,[backgroundColor, title])
168: PushConstant(10)
169: PushConstantInt(0)
170: PushConstantInt(0)
171: OpPushArgments(2)
172: CallExternal(2,true,true,false,package:flutter/src/rendering/flex.dart@MainAxisAlignment@center,package:flutter/src/rendering/flex.dart,MainAxisAlignment,center,0,[])
173: PushConstant(11)
174: GetParam(#this)
175: GetObjectProperty(_counter,4)
176: StringConcat(1)
177: PushConstantInt(1)
178: GetParam(context)
179: PushConstantInt(1)
180: PushConstantInt(0)
181: OpPushArgments(3)
182: CallExternal(1,true,false,false,package:flutter/src/material/theme.dart@Theme@of,package:flutter/src/material/theme.dart,Theme,of,1,[])
183: OpPushArgments(2)
184: CallExternal(2,false,true,false,package:flutter/src/material/theme_data.dart@ThemeData@textTheme,package:flutter/src/material/theme_data.dart,ThemeData,textTheme,0,[])
185: OpPushArgments(2)
186: CallExternal(2,false,true,false,package:flutter/src/material/text_theme.dart@TextTheme@headlineMedium,package:flutter/src/material/text_theme.dart,TextTheme,headlineMedium,0,[])
187: PushConstant(12)
188: PushConstantInt(1)
189: OpPushArgments(5)
190: CallExternal(3,false,false,false,package:flutter/src/widgets/text.dart@Text@,package:flutter/src/widgets/text.dart,Text,,1,[style])
191: Jump(@200)
192: OpCallStart(#c3)
193: PushConstant(13)
194: PushConstantInt(1)
195: PushConstantInt(0)
196: OpPushArgments(3)
197: CallExternal(3,false,false,false,package:flutter/src/widgets/text.dart@Text@,package:flutter/src/widgets/text.dart,Text,,1,[])
198: ReturnField(true,#c3)
199: OpCallEnd()
200: GetGlobalParam(#c3,192)
201: PushList(2)
202: PushConstant(14)
203: PushConstantInt(2)
204: OpPushArgments(6)
205: CallExternal(3,false,false,false,package:flutter/src/widgets/basic.dart@Column@,package:flutter/src/widgets/basic.dart,Column,,0,[mainAxisAlignment, children])
206: PushConstant(15)
207: PushConstantInt(1)
208: OpPushArgments(4)
209: CallExternal(3,false,false,false,package:flutter/src/widgets/basic.dart@Center@,package:flutter/src/widgets/basic.dart,Center,,0,[child])
210: PushConstant(16)
211: PushConstantInt(0)
212: GetParam(#this)
213: PushPointer(115,false)
214: PushConstant(17)
215: PushConstant(18)
216: PushConstant(19)
217: Jump(@227)
218: OpCallStart(#c4)
219: OpPushArgments(2)
220: CallExternal(2,true,true,false,package:flutter/src/material/icons.dart@Icons@add,package:flutter/src/material/icons.dart,Icons,add,0,[])
221: PushConstantInt(1)
222: PushConstantInt(0)
223: OpPushArgments(3)
224: CallExternal(3,false,false,false,package:flutter/src/widgets/icon.dart@Icon@,package:flutter/src/widgets/icon.dart,Icon,,1,[])
225: ReturnField(true,#c4)
226: OpCallEnd()
227: GetGlobalParam(#c4,218)
228: PushConstant(15)
229: PushConstantInt(3)
230: OpPushArgments(8)
231: CallExternal(3,false,false,false,package:flutter/src/material/floating_action_button.dart@FloatingActionButton@,package:flutter/src/material/floating_action_button.dart,FloatingActionButton,,0,[onPressed, tooltip, child])
232: PushConstant(20)
233: PushConstantInt(3)
234: OpPushArgments(8)
235: CallExternal(3,false,false,false,package:flutter/src/material/scaffold.dart@Scaffold@,package:flutter/src/material/scaffold.dart,Scaffold,,0,[appBar, body, floatingActionButton])
236: OpReturn()
237: OpCallEnd()
