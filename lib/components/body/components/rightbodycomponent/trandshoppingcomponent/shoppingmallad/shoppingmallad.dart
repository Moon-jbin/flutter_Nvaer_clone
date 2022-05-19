import 'package:flutter/material.dart';

import 'mallitemsone.dart';
import 'mallitemsthree.dart';
import 'mallitemstwo.dart';

class ShoppingMallAd extends StatefulWidget{
  @override
  _ShoppingMallAdState createState() => _ShoppingMallAdState();
}
class _ShoppingMallAdState extends State<ShoppingMallAd>{
  late int pageIndex = 1;
  late bool _isHoverBack = false;
  late bool _isHoverForward = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 640,
          // color: Colors.blue,
        ),
        Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "$pageIndex",
                  style: const TextStyle(
                      color: Color.fromRGBO(32, 32, 32, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  " / 3",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(128, 128, 128, 1),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 58,
                  color: Colors.white,
                  child: Table(
                    border: TableBorder.all(
                        width: 1,
                        color: const Color.fromRGBO(228, 232, 235, 1)),
                    children: [
                      TableRow(
                        children: [
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                _isHoverBack = value;
                              });
                            },
                            onTap: () {
                              setState(() {
                                if (pageIndex == 1) {
                                  pageIndex--;
                                  pageIndex = 3;
                                } else {
                                  pageIndex--;
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(left: 3),
                              color: _isHoverBack
                                  ? const Color.fromRGBO(247, 249, 250, 0.8)
                                  : Colors.white,
                              height: 29,
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 11,
                              ),
                            ),
                          ),
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                _isHoverForward = value;
                              });
                            },
                            onTap: () {
                              setState(() {
                                if (pageIndex == 3) {
                                  pageIndex++;
                                  pageIndex = 1;
                                } else {
                                  pageIndex++;
                                }
                              });
                            },
                            child: Container(
                              color: _isHoverForward
                                  ? const Color.fromRGBO(247, 249, 250, 0.8)
                                  : Colors.white,
                              height: 29,
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
                )
              ],
            ),
        ),
        Positioned(
          top: 3,
          child:
          pageIndex == 1
          ? MallItemsOne()
          : pageIndex == 2
          ? MallItemsTwo()
          : pageIndex == 3
          ? MallItemsThree() : Container()
          // MallItemsTwo(),
          // MallItemsThree(),
        )

      ],
    );
  }
}