import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarouselDotsIndicator extends StatefulWidget {
  const CarouselDotsIndicator({super.key});

  @override
  State<CarouselDotsIndicator> createState() => _CarouselDotsIndicatorState();
}

class _CarouselDotsIndicatorState extends State<CarouselDotsIndicator> {
  var currentIndexPage = 0;
  final urlImages = [
    'https://picsum.photos/1200/800',
    'https://picsum.photos/1200/800/?blur',
    'https://picsum.photos/id/237/1100/800',
    'https://picsum.photos/seed/picsum/1100/800',
    'https://picsum.photos/1000/800?grayscale'
        'https://picsum.photos/1200/800',
    'https://picsum.photos/1200/800/?blur',
    'https://picsum.photos/id/237/1100/800',
    'https://picsum.photos/seed/picsum/1100/800',
    'https://picsum.photos/1000/800?grayscale'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Dots Indicator'),
      ),
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              options: crousalOptions(),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                final urlImage = urlImages[itemIndex];
                return BuildImage(urlImage, itemIndex);
              },
              itemCount: 5,
            ),
            SizedBox(
              height: 20,
            ),
            DotsIndicator(
              dotsCount: urlImages.length,
              position: currentIndexPage,
              onTap: (index) {
                index = currentIndexPage;
              },
              decorator: dotsIndicatorDicoration(),
            ),
          ],
        ),
      ),
    );
  }

  DotsDecorator dotsIndicatorDicoration() {
    return DotsDecorator(
      color: Colors.black26,
      activeColor: Colors.deepPurple,
      size: const Size.square(4.0),
      activeSize: const Size(5.0, 5.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      shape: const Border(),
      activeShapes: List.filled(
          urlImages.length,
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          )),
      sizes: List.filled(urlImages.length, const Size.square(13.0)),
      activeSizes: List.filled(urlImages.length, const Size(13.0, 13.0)),
      spacing: const EdgeInsets.all(6.0),
    );
  }

  CarouselOptions crousalOptions() {
    return CarouselOptions(
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.2,
      scrollDirection: Axis.horizontal,
      onPageChanged: ((index, reason) {
        setState(() {
          currentIndexPage = index;
        });
      }),
    );
  }
}

Widget BuildImage(String urlImage, int itemIndex) {
  return Container(
      // height: 900,
      // width: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: Colors.grey[300],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          Center(
            child: Image.network(
              urlImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              'No ${(itemIndex + 1).toString()} image',
              style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ));
}
