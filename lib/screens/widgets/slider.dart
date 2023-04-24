import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      'assets/images/sus1.svg',
      'assets/images/sus2.svg',
      'assets/images/sus3.svg',
    ];
    return Container(
      height: 200,
      margin: EdgeInsets.all(8),
      child: Center(
        child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
            ),
            items: imagesList.map((svg) {
              return Container(
                margin: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: SvgPicture.asset(
                    svg,
                    fit: BoxFit.contain,
                    width: 600,
                  ),
                ),
              );
            }).toList()

            // PageView.builder(
            //   itemCount: images.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return SvgPicture.asset(
            //       images[index],
            //       fit: BoxFit.contain,
            //     );
            //   },
            ),
      ),
    );
  }
}
