import 'package:flutter/material.dart';

MyApp createMyApp() {
  return const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController(initialPage: 0);

  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child: Scrollbar(
              controller: scrollController,
              child: CustomScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                slivers: [
                  const SliverPadding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  SliverToBoxAdapter(
                    child: _getHeadWidget(),
                  ),
                  SliverPadding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom),
                      sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                        return _getSubjectItem(context, index);
                      }, childCount: items.length))),
                ],
              )),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget _getSubjectItem(context, index) {
    var item = items[index];
    return Card(
        elevation: 0,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        color: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    item.summary,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              )),
              Image.asset(
                item.imageUrl,
                width: 150,
                height: 150,
              ),
            ],
          ),
        ));
  }

  int pageIndex = 0;

  Widget _getHeadWidget() {
    return Container(
        color: const Color(0xFFF2F5FA),
        padding: const EdgeInsets.all(10),
        height: 150,
        child: Row(children: [
          IconButton(
              onPressed: () {
                if (pageIndex == 0) {
                  return;
                }
                pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              icon: const Icon(Icons.arrow_left)),
          Expanded(
              child: PageView.builder(
                  itemCount: headItemAssets.length,
                  controller: pageController,
                  onPageChanged: (int index) {
                    pageIndex = index;
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return _getHeadItemWidget(index);
                  })),
          IconButton(
              onPressed: () {
                if (pageIndex == 3) {
                  return;
                }
                pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              icon: const Icon(Icons.arrow_right)),
        ]));
  }

  static const headItemAssets = <String>[
    "assets/0-0.jpg",
    "assets/1-0.jpg",
    "assets/2-0.jpg",
    "assets/3-0.jpg",
  ];

  static const items = <Item>[
    Item("title1", "summary1", "assets/0-0.jpg"),
    Item("title2", "summary2", "assets/1-0.jpg"),
    Item("title3", "summary3", "assets/2-0.jpg"),
    Item("title4", "summary4", "assets/3-0.jpg"),
    Item("title5", "summary5", "assets/0-0.jpg"),
    Item("title6", "summary6", "assets/1-0.jpg"),
    Item("title7", "summary7", "assets/2-0.jpg"),
    Item("title8", "summary8", "assets/3-0.jpg"),
    Item("title9", "summary9", "assets/0-0.jpg"),
    Item("title10", "summary10", "assets/1-0.jpg"),
    Item("title11", "summary11", "assets/2-0.jpg"),
    Item("title12", "summary12", "assets/3-0.jpg"),
    Item("title13", "summary12", "assets/0-0.jpg"),
  ];

  Widget _getHeadItemWidget(int index) {
    return Padding(
        padding: const EdgeInsets.only(left: 2, right: 2),
        child: InkWell(
            onTap: () {},
            child: AspectRatio(
              aspectRatio: 3,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return SizedBox(
                  height: constraints.biggest.height,
                  width: constraints.biggest.width,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(headItemAssets[index]),
                  ),
                );
              }),
            )));
  }
}

class Item {
  final String title;
  final String summary;
  final String imageUrl;

  const Item(this.title, this.summary, this.imageUrl);
}
