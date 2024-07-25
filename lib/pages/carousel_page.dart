// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class CarouselPage extends StatefulWidget {
//   const CarouselPage({super.key});

//   @override
//   State<CarouselPage> createState() => _CarouselPageState();
// }

// class _CarouselPageState extends State<CarouselPage> {
//   CarouselController buttonCarouselController = CarouselController();

//   @override
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Carousel Page'),
//       ),
//       body: CarouselSlider(
//         options: CarouselOptions(height: 400.0),
//         items: [1, 2, 3, 4, 5].map((i) {
//           return Builder(
//             builder: (BuildContext context) {
//               return Container(
//                   width: MediaQuery.of(context).size.width,
//                   margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                   decoration: const BoxDecoration(color: Colors.amber),
//                   child: Text(
//                     'text $i',
//                     style: const TextStyle(fontSize: 16.0),
//                   ));
//             },
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
