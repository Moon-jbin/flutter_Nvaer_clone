import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/header/components/weather/weatherone.dart';
import 'package:flutter_naver_clone/components/header/components/weather/weathertwo.dart';

class WeatherSlider extends StatefulWidget {
  @override
  _WeatherSliderState createState() => _WeatherSliderState();
}

class _WeatherSliderState extends State<WeatherSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: Colors.white,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          scrollDirection: Axis.vertical,
          height: 53,
          viewportFraction: 1,
        ),
        items: [WeatherOne(), WeatherTwo()]
            .map(
              (i) => Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: 240,
                    child: i,
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
