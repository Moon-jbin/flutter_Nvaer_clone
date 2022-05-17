import 'package:flutter/material.dart';

import 'newspage/newspage_1.dart';
import 'newspage/newspage_2.dart';
import 'newspage/newspage_3.dart';
import 'newspage/newspage_4.dart';
import 'newspage/newspage_5.dart';
import 'newspage/newspage_6.dart';

class ShoppingNews extends StatefulWidget {
  @override
  _ShoppingNewsState createState() => _ShoppingNewsState();
}

class _ShoppingNewsState extends State<ShoppingNews> {
  late bool _isHoverBack = false;
  late bool _isHoverForward = false;
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "반갑다! 쇼핑뉴스",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Color.fromRGBO(32, 32, 32, 1),
                ),
              ),
              SizedBox(width: 153),
              Row(
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
                    " / 6",
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
                                    pageIndex = 6;
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
                                  if (pageIndex == 6) {
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
              )
            ],
          ),
          pageIndex==1
              ? NewsPage_1()
              : pageIndex==2
              ? NewsPage_2()
              : pageIndex==3
              ? NewsPage_3()
              : pageIndex==4
              ? NewsPage_4()
              : pageIndex==5
              ? NewsPage_5()
              : pageIndex==6
              ? NewsPage_6() : const Text("")
        ],
      ),
    );
  }
}
