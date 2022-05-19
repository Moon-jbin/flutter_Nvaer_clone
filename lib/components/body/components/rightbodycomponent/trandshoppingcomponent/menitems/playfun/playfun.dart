import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/playfun/playfuncomponent/playfunone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/playfun/playfuncomponent/playfunthree.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/playfun/playfuncomponent/playfuntwo.dart';


class PlayFun extends StatefulWidget {
  @override
  _PlayFunState createState() => _PlayFunState();
}

class _PlayFunState extends State<PlayFun> {
  int pageIndex = 1;
  late bool _isHoverBack = false;
  late bool _isHoverForward = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //title
            const Text(
              "PLAY · FUN",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(32, 32, 32, 1),
              ),
            ),
            Spacer(),
            //버튼
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
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
            )
          ],
        ),
        Container(
            margin: const EdgeInsets.only(top: 16),
            child: pageIndex == 1
                ? PlayFunOne()
                : pageIndex == 2
                ? PlayFunTwo()
                : pageIndex == 3
                ? PlayFunThree() : Container()
        )
      ],
    );
  }
}
