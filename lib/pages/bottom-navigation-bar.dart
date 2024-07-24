// import 'package:carousal_task4/pages/carousel_page.dart';
// import 'package:carousal_task4/pages/home_page.dart';
// import 'package:carousal_task4/pages/search-page.dart';
// import 'package:flutter/material.dart';

// class BottomNavigationBar extends StatefulWidget {
//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }

// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   var selectedIndex=0;
//     List<StatefulWidget> widgetList = [
//     const HomePage(),
//     const CarouselPage(),
//     const SearchPage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: widgetList.elementAt(selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
      
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
       
//       ),
//     );
//   }
// }
