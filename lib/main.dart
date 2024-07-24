import 'package:carousal_task4/pages/dots_indicator.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const CarousalTask4());
}

class CarousalTask4 extends StatelessWidget {
  const CarousalTask4({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const CarouselDotsIndicator(),
    );
  }
}
