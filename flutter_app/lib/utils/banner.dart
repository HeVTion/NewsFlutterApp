import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = width * 540.0 / 1080.0;

    List<String> banners = mData();

    // TODO: implement build
    return Container(
      width: width,
      height: height,

      child: Swiper(
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.only(left: 0, right: 0),
            child: Image.asset(
              banners[index],
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        autoplay: true,

      ),
    );
  }

  List<String> mData() {
    return <String>[
      'assets/banner/b1.jpg',
      'assets/banner/b2.jpg',
      'assets/banner/b3.jpg',
      'assets/banner/b4.jpg',
    ];
  }
}

