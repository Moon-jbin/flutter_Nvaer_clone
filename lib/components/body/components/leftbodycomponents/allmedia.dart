import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/onemedia.dart';
import 'mediawrap/fourmedia.dart';
import 'mediawrap/threemedia.dart';
import 'mediawrap/twomedia.dart';

class AllMedia extends StatefulWidget {
  @override
  _AllMediaState createState() => _AllMediaState();
}

class _AllMediaState extends State<AllMedia> {
  CarouselController buttonCarouseController = CarouselController();
  late int widgetIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            width: 750,
            height: 260,
            child: widgetIndex == 0
                ? OneMedia()
                : widgetIndex == 1
                    ? TwoMedia()
                    : widgetIndex == 2
                        ? ThreeMedia()
                        : widgetIndex == 3
                            ? FourMedia()
                            : null),
        widgetIndex ==0 ? Container() :
        Positioned(
          top: 107,
          left: -20,
          child: Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(left: 3),
              padding: const EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: const Offset(0, 2))
                  ]),
              child: InkWell(
                onTap: (){
                  setState(() {
                    widgetIndex--;
                  });
                },
                child: Icon(Icons.arrow_back_ios,
                    color: Colors.grey.shade600, size: 15),
              )),
        ),


        widgetIndex ==3 ?  Container() :
        Positioned(
          top: 107,
          right: -20,
          child: Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: const Offset(0, 2))
                  ]),
              child: InkWell(
                onTap: () {
                  setState(() {
                    widgetIndex++;
                  });
                },
                child: Icon(Icons.arrow_forward_ios,
                    color: Colors.grey.shade600, size: 15),
              )),
        )
      ],
    );
  }
}
