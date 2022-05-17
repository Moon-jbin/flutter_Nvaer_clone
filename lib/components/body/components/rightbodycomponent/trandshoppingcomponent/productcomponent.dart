import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productItemstwo.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/profuctadplus.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productitems/productitems_1.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productitems/productitems_2.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productitemsone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingnews/shoppingnews.dart';

class ProductComponent extends StatefulWidget {
  @override
  _ProductComponentState createState() => _ProductComponentState();
}

class _ProductComponentState extends State<ProductComponent> {
  int pageIndex = 1;
  late bool _isHoverBack = false;
  late bool _isHoverBack_2 = false;
  late bool _isHoverForward = false;
  late bool _isHoverForward_2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 350,
      // height: 70,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(247, 249, 250, 1),
                border: Border(
                    bottom: BorderSide(
                        width: .7, color: Color.fromRGBO(218, 225, 230, 1)))),
            width: 350,
            padding: const EdgeInsets.fromLTRB(10, 12, 3, 11),
            child: Column(
              children: [ProductItemsOne(), ProductItemsTwo()],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
            child: Column(
              children: [
                //버튼
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
                      " / 5",
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
                                      pageIndex = 5;
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
                                    if (pageIndex == 5) {
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
                pageIndex == 1
                    ? ProductItems_1()
                    : pageIndex == 2
                        ? ProductItems_2()
                        : pageIndex == 3
                            ? Text("3")
                            : pageIndex == 4
                                ? Text("4")
                                : pageIndex == 5
                                    ? Text("5")
                                    : pageIndex == 6
                                        ? Text("6")
                                        : pageIndex == 7
                                            ? Text("7")
                                            : pageIndex == 8
                                                ? Text("8")
                                                : pageIndex == 9
                                                    ? Text("9")
                                                    : pageIndex == 10
                                                        ? Text("10")
                                                        : pageIndex == 11
                                                            ? Text("11")
                                                            : pageIndex == 12
                                                                ? Text("12")
                                                                : pageIndex ==
                                                                        13
                                                                    ? Text("13")
                                                                    : pageIndex ==
                                                                            14
                                                                        ? Text(
                                                                            "14")
                                                                        : pageIndex ==
                                                                                15
                                                                            ? Text("15")
                                                                            : pageIndex == 16
                                                                                ? Text("16")
                                                                                : pageIndex == 17
                                                                                    ? Text("17")
                                                                                    : pageIndex == 18
                                                                                        ? Text("18")
                                                                                        : Text(""),
                //버튼
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onHover: (value) {
                        setState(
                          () {
                            _isHoverBack_2 = value;
                          },
                        );
                      },
                      onTap: () {
                        setState(
                          () {
                            if (pageIndex == 1) {
                              pageIndex--;
                              pageIndex = 5;
                            } else {
                              pageIndex--;
                            }
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _isHoverBack_2
                                ? const Color.fromRGBO(247, 249, 250, 0.8)
                                : Colors.white,
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(228, 232, 235, 1))),
                        padding: const EdgeInsets.only(left: 3),
                        width: 29,
                        height: 29,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 11,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "$pageIndex",
                      style: const TextStyle(
                          color: Color.fromRGBO(32, 32, 32, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      " / 5",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(128, 128, 128, 1),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onHover: (value) {
                        setState(
                          () {
                            _isHoverForward_2 = value;
                          },
                        );
                      },
                      onTap: () {
                        setState(
                          () {
                            if (pageIndex == 5) {
                              pageIndex++;
                              pageIndex = 1;
                            } else {
                              pageIndex++;
                            }
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _isHoverForward_2
                                ? const Color.fromRGBO(247, 249, 250, 0.8)
                                : Colors.white,
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(228, 232, 235, 1))),
                        width: 29,
                        height: 29,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 11,
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(top: 12),
                    width: 350,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(228, 232, 235, 1),
                        ),
                      ),
                    ),
                    child: ShoppingNews(),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(top: 12),
                    width: 350,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(228, 232, 235, 1),
                        ),
                      ),
                    ),
                    child: ProductAdPlus(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
