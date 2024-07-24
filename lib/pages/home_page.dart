// import 'package:carousal_task4/pages/carousel_page.dart';
// import 'package:carousal_task4/pages/search-page.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   var selectedIndex = 0;
//   List<StatefulWidget> weidgetList = [
//     HomePage(),
//     CarouselPage(),
//     SearchPage(),
//   ];
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: weidgetList.elementAt(selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         iconSize: 30,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.photo_album),
//             label: 'Carousel',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//         ],
//         currentIndex: selectedIndex,
//         onTap: (index) {
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
