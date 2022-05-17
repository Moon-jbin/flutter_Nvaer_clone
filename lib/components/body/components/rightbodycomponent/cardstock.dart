import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'cardstockcomponent/exchange.dart';
import 'cardstockcomponent/kosdaq.dart';
import 'cardstockcomponent/kospi.dart';
import 'cardstockcomponent/news.dart';

class CardStock extends StatefulWidget {
  @override
  _CardStockState createState() => _CardStockState();
}

class _CardStockState extends State<CardStock> {
  final CarouselController _carouselController = CarouselController();
  late bool _isHoverBack = false;
  late bool _isHoverForward = false;




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: 350,
      height: 49,
      decoration: BoxDecoration(
        // color: Colors.black,
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(218, 225, 230, 1),
        ),
      ),
      child: Row(
        children: [
          Container(
              width: 280,
              color: Colors.white,
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 25,
                  viewportFraction: 1,
                ),
                items: [NewsComponent(), KosPi(), KosDaq(), ExChange()]
                    .map((i) => Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: 280,
                              child: i,
                            );
                          },
                        ))
                    .toList(),
              )),
          SizedBox(
            width: 48,
            height: 24,
            child: Table(
              border: TableBorder.all(
                  width: 1, color: const Color.fromRGBO(228, 232, 235, 1)),
              children: [
                TableRow(
                  children: [
                    InkWell(
                      onHover:(value){
                        setState(() {
                          _isHoverBack = value;
                        });
                      } ,
                      onTap: () {
                        _carouselController.previousPage();
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 3),
                        color:  _isHoverBack ? const Color.fromRGBO(247, 249, 250, 0.8) : Colors.white,
                        height: 24,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 11,
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value){
                        setState(() {
                          _isHoverForward = value;
                        });
                      },
                      onTap: () {
                        _carouselController.nextPage();
                      },
                      child: Container(
                        color:  _isHoverForward ? const Color.fromRGBO(247, 249, 250, 0.8) : Colors.white,
                        height: 24,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 11,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
