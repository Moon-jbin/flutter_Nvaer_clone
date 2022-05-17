import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/vibecomponent/sliderone.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/vibecomponent/slidertwo.dart';

class PosterView extends StatefulWidget {
  @override
  _PosterViewState createState() => _PosterViewState();
}

class _PosterViewState extends State<PosterView> {
  final CarouselController _carouselController = CarouselController();
  late int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                height: 247,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (int index , reason){
                  setState(() {
                    pageIndex = index;
                  });
                }
              ),
              items: [SliderOne(), SliderTwo()].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: 750,
                      child: i,
                    );
                  },
                );
              }).toList()),
          pageIndex == 0
              ? Container()
              : Positioned(
                  top: 48.5,
                  left: -20,
                  child: Container(
                      width: 35,
                      height: 35,
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
                        onTap: () {
                          setState(() {
                            _carouselController.previousPage(
                                duration: Duration(milliseconds: 30)
                            );
                          });
                        },
                        child: Icon(Icons.arrow_back_ios,
                            color: Colors.grey.shade600, size: 15),
                      )),
                ),
          pageIndex == 1
              ? Container()
              : Positioned(
                  top: 48.5,
                  right: -20,
                  child: Container(
                    width: 35,
                    height: 35,
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
                          _carouselController.nextPage(
                            duration: Duration(milliseconds: 30)
                          );
                        });
                      },
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.grey.shade600, size: 15),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
