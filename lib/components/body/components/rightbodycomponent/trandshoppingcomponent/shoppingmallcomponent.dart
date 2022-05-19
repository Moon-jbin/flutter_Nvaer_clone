import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallad/shoppingmallad.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/bodyluv/bodyluv.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/bodyluv/shoppingmallitemone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/roomhome/roomhome.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/theshop/theshop.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

import 'oneplusdeal/oneplusdeal.dart';

class ShoppingMallComponent extends StatefulWidget {
  @override
  _ShoppingMallComponentState createState() => _ShoppingMallComponentState();
}

class _ShoppingMallComponentState extends State<ShoppingMallComponent> {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  late int pageIndex = 1;
  late bool _isHoverBack = false;
  late bool _isHoverBack_2 = false;
  late bool _isHoverForward = false;
  late bool _isHoverForward_2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(8, 12, 8, 31),
        child: Column(
          children: [
            //Header
            Row(
              children: [
                //logo
                pageIndex == 1
                    ? Image.network(
                        _controller.shoppingMallLogo[0],
                        width: 80,
                        height: 19,
                      )
                    : pageIndex == 2
                        ? Image.network(
                            _controller.shoppingMallLogo[1],
                            width: 123,
                            height: 19,
                          )
                        : pageIndex == 3
                            ? Image.network(
                                _controller.shoppingMallLogo[2],
                                width: 123,
                                height: 19,
                              )
                            : Container(),

                Spacer(), // 부모의 영역을 줄이지 않는 선에서 위치가 고정된다.
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
              ],
            ),
            const SizedBox(height: 12),
            pageIndex == 1
            ? BodyLuv()
            : pageIndex == 2
            ? RoomHome()
            : pageIndex == 3
            ? TheShop() : Container(),
            const SizedBox(height: 20),
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
                          pageIndex = 3;
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
                  " / 3",
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
                        if (pageIndex == 3) {
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
                            width: 1, color: Color.fromRGBO(228, 232, 235, 1))),
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

            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(top: 12),
              width: 350,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: .7,
                    color: Color.fromRGBO(218, 225, 230, 1)
                  )
                )
              ),
              child: ShoppingMallAd(),
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
                child: OnePlusDeal(),
              ),
            )
          ],
        ),
    );
  }
}
