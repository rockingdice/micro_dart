import 'package:flutter/material.dart';

import 'src/basics/basics.dart';
import 'src/misc/misc.dart';

Widget myApp() {
  return const AnimationSamples();
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({
    required this.name,
    required this.route,
    required this.builder,
  });
}

final routes = {
  "/": (context) => const HomePage(),
  AnimatedContainerDemo.routeName: (context) => const AnimatedContainerDemo(),
  PageRouteBuilderDemo.routeName: (context) => const PageRouteBuilderDemo(),
  AnimationControllerDemo.routeName: (context) =>
      const AnimationControllerDemo(),
  TweenDemo.routeName: (context) => const TweenDemo(),
  AnimatedBuilderDemo.routeName: (context) => const AnimatedBuilderDemo(),
  CustomTweenDemo.routeName: (context) => const CustomTweenDemo(),
  TweenSequenceDemo.routeName: (context) => const TweenSequenceDemo(),
  FadeTransitionDemo.routeName: (context) => const FadeTransitionDemo(),
  ExpandCardDemo.routeName: (context) => const ExpandCardDemo(),
  CarouselDemo.routeName: (context) => CarouselDemo(),
  FocusImageDemo.routeName: (context) => const FocusImageDemo(),
  CardSwipeDemo.routeName: (context) => const CardSwipeDemo(),
  RepeatingAnimationDemo.routeName: (context) => const RepeatingAnimationDemo(),
  PhysicsCardDragDemo.routeName: (context) => const PhysicsCardDragDemo(),
  AnimatedListDemo.routeName: (context) => const AnimatedListDemo(),
  AnimatedPositionedDemo.routeName: (context) => const AnimatedPositionedDemo(),
  AnimatedSwitcherDemo.routeName: (context) => const AnimatedSwitcherDemo(),
  HeroAnimationDemo.routeName: (context) => const HeroAnimationDemo(),
  CurvedAnimationDemo.routeName: (context) => const CurvedAnimationDemo(),
};

final basicDemos = [
  Demo(
    name: 'Animation Controller',
    route: AnimationControllerDemo.routeName,
    builder: (context) => const AnimationControllerDemo(),
  ),
  Demo(
    name: 'Tweens',
    route: TweenDemo.routeName,
    builder: (context) => const TweenDemo(),
  ),
  Demo(
    name: 'AnimatedBuilder',
    route: AnimatedBuilderDemo.routeName,
    builder: (context) => const AnimatedBuilderDemo(),
  ),
  Demo(
    name: 'Fade Transition',
    route: FadeTransitionDemo.routeName,
    builder: (context) => const FadeTransitionDemo(),
  ),
];

final miscDemos = [
  Demo(
    name: 'Expandable Card',
    route: ExpandCardDemo.routeName,
    builder: (context) => const ExpandCardDemo(),
  ),
  Demo(
    name: 'Focus Image',
    route: FocusImageDemo.routeName,
    builder: (context) => const FocusImageDemo(),
  ),
  Demo(
    name: 'Repeating Animation',
    route: RepeatingAnimationDemo.routeName,
    builder: (context) => const RepeatingAnimationDemo(),
  ),
  Demo(
    name: 'Spring Physics',
    route: PhysicsCardDragDemo.routeName,
    builder: (context) => const PhysicsCardDragDemo(),
  ),
  Demo(
    name: 'AnimatedList',
    route: AnimatedListDemo.routeName,
    builder: (context) => const AnimatedListDemo(),
  ),
  Demo(
    name: 'AnimatedPositioned',
    route: AnimatedPositionedDemo.routeName,
    builder: (context) => const AnimatedPositionedDemo(),
  ),
  Demo(
    name: 'Hero Animation',
    route: HeroAnimationDemo.routeName,
    builder: (context) => const HeroAnimationDemo(),
  ),
  Demo(
    name: 'Curved Animation',
    route: CurvedAnimationDemo.routeName,
    builder: (context) => const CurvedAnimationDemo(),
  ),
];

class AnimationSamples extends StatelessWidget {
  const AnimationSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Samples',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Samples'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Basics', style: headerStyle)),
          ...basicDemos.map((d) => DemoTile(demo: d)),
          ListTile(title: Text('Misc', style: headerStyle)),
          ...miscDemos.map((d) => DemoTile(demo: d)),
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;

  const DemoTile({required this.demo, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.of(context).pushNamed(demo.route);
      },
    );
  }
}
