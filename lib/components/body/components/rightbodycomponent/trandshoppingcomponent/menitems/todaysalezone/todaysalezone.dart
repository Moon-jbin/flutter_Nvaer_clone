import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/todaysalezone/todaysalezonecomponent/todaysalezoneone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/todaysalezone/todaysalezonecomponent/todaysalezonethree.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/todaysalezone/todaysalezonecomponent/todaysalezonetwo.dart';

class ToDaySaleZone extends StatefulWidget {
  @override
  _ToDaySaleZoneState createState() => _ToDaySaleZoneState();
}

class _ToDaySaleZoneState extends State<ToDaySaleZone> {
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
              "오늘의 특가ZONE",
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
                ? ToDaySaleZoneOne()
                : pageIndex == 2
                    ? ToDaySaleZoneTwo()
                    : pageIndex == 3
                        ? ToDaySaleZoneThree()
                        : Container())
      ],
    );
  }
}
