micro_dart_compiler: 编译器
micro_dart_core:核心处理库
micro_dart_flutter:Flutter解释器
micro_dart_generator:代理生成器
micro_dart_runtime:Dart解释器


编译逻辑

1.首先通过front_end解析代码成AST（Abstract Syntax Tree，抽象语法树）
2.将AST编译成可供解释器执行的字节码
3.通过解释器对字节码进行解释执行








编译细节：


声明列表


参数 libraryUri@className:field@fieldName

静态参数


函数 libraryUri@className:procedure@procedureName@get
静态函数
本类函数
扩展函数

CallDynamic(func3,false,true,1,[]):


(g:{},s:[
    Scope({},[]), 
    
    Scope({a: InstanceImpl(TypeRef(test:///main.dart,B,false,test:///main.dart@A),InstanceImpl(TypeRef(test:///main.dart,A,false,dart:core@Object),InstanceBridge(Instance of 'Object'),{}),{}), b: InstanceImpl(TypeRef(test:///main.dart,B,false,test:///main.dart@A),InstanceImpl(TypeRef(test:///main.dart,A,false,dart:core@Object),InstanceBridge(Instance of 'Object'),{}),{})},[]), 
    
    Scope({},[
        InstanceBridge(4), 
        InstanceImpl(TypeRef(test:///main.dart,B,false,test:///main.dart@A),InstanceImpl(TypeRef(test:///main.dart,A,false,dart:core@Object),InstanceBridge(Instance of 'Object'),{}),{})])]}


说在前面：
1.这个帖子不是引战贴只是尽量客观分析社会现象。尽量尊重社会发展规律去分析问题，不带有立场，以研究客观规律为主，从学术角度去探讨这一类现象。
2.希望发布言论的人，无论男女都遵从上面理念，拒绝立场，批判与讽刺。

先说我的看法：
1.虽然当代女性地位已经提升到了一个史无前例的地步，男女平等是大众倡导的主旋律，但是不可否认，当代仍然是男权社会
2.女性和男性在思维上的差别，对待事物，女性大多数是求稳，男性更具有开拓精神，因此不管是国家层面，公司层面领导者大多数都是男性（这里要强调，开拓精神不一定是好，因为我们往往只看到成功者而看不到失败者，在面对新事物时，失败往往才是最普遍的）,我认为这是在当代这个不以生理力量作为主要生产力的时代，男权仍然是主流的最大原因。
3.生育带来的不稳定因素，是男权主流的第二原因，生理构造需要女性承担起生育的职责，这让女性在人才市场往往处于劣势地位，法律上女性生育的负担转移给企业，企业又有天然的规避风险的属性，造成了职场的隐形歧视。
4.虽然当前仍然是男权社会，但是也因为不再是生理力量为主要生产力的时代，也造成了社会阶级分化严重。女性的求稳思维，让她们成为中等阶级的重要组成部分。而社会构成永远是金字塔形态，虽然高层的主导大部分都是男性，但数量上仍然占少数。这就造成一种社会现象就是在抛去少数的上层男性，大多数情况下，男女收入差距不会太大。
5.传统思想主导，认为女性应该承担起更多的家庭职责，比如育儿，家务。将重心转移到家庭，就意味着工作上需要做舍弃。
6.社会发展规律，告诉我们，社会地位和财富积累仍然有不可分割的关系，财富积累成为了人类个体的主流意识，未婚女性由于其求稳思维让他们取得了大多数男性的物质积累，又因为结婚所带来的生育风险让她们意识到结婚可能意味着要将中心转移到家庭，意味着她原本的工作或者物质积累的渠道受损算是受害方。她们本来的求稳思想，和人类趋利避害的思维让她们希望能够在家庭上对她们受损的部分做出补偿，而这个补偿就转嫁给了男性。
7.男性是否能够承受这种转嫁成本，变成了女性择偶的一种普遍标准。
8.女性另一个择偶点就是与传统思想的碰撞。当代女性非常排斥单独承担养儿，育儿的传统职责。而传统不是一天两天被打破的，物质条件更好的男性，意味着能够提供更多的物质条件去抵消这种传统带来的效应，例如男方有钱，就意味着可以剖腹产，意味着生育后可以请保养得到更加精细的照顾，能够产后更快恢复到正常状态，意味着可以请专业的育婴师去程度女性那一部分育儿成本等。