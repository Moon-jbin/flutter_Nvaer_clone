import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/subscribemedia.dart';

import 'allmedia.dart';

class NewsStand extends StatefulWidget {
  @override
  _NewsStandState createState() => _NewsStandState();
}

class _NewsStandState extends State<NewsStand> {
  late bool textFocus = false;
  late int iconFocus = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            // 뉴스스탠드 Header 컨테이너
            padding: const EdgeInsets.fromLTRB(0, 22, 0, 16),
            width: 750,
            child: Row(
              children: [
                InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Icon(
                            Icons.fiber_new_sharp,
                            color: Color.fromRGBO(53, 101, 201, 1),
                            size: 23,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "뉴스스탠드",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.grey.shade600,
                            size: 23,
                          )
                        ],
                      ),
                    ),


                InkWell(
                  onTap: () {
                    setState(() {
                      textFocus = true;
                    });
                  },
                  child: Text(
                    "구독한 언론사",
                    style: !textFocus
                        ? const TextStyle(
                        fontSize: 15, color: Color.fromRGBO(80, 80, 80, 1))
                        : const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),


                const SizedBox(width: 7),
                const Icon(
                  Icons.circle,
                  size: 5,
                  color: Color.fromRGBO(200, 204, 209, 1),
                ),
                const SizedBox(width: 7),
                InkWell(
                  onTap: () {
                    setState(() {
                      textFocus = false;
                    });
                  },
                  child: Text("전체언론사",
                      style: !textFocus
                          ? const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)
                          : const TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(80, 80, 80, 1))),
                ),
                const SizedBox(width: 380),
                !textFocus
                    ? Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                iconFocus = 1;
                              });
                            },
                            child: Icon(Icons.format_list_bulleted,
                                size: 20,
                                color: iconFocus == 1
                                    ? Colors.blue.shade800
                                    : Colors.grey.shade500),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(() {
                                iconFocus = 2;
                              });
                            },
                            child: Icon(Icons.grid_view_sharp,
                                size: 17,
                                color: iconFocus == 2
                                    ? Colors.blue.shade800
                                    : Colors.grey.shade500),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(() {
                                iconFocus = 3;
                              });
                            },
                            child: Icon(Icons.settings,
                                size: 17,
                                color: iconFocus == 3
                                    ? Colors.blue.shade800
                                    : Colors.grey.shade500),
                          )
                        ],
                      )
                    : Container()
              ],
            ),
          ),
          // all media 전체언론사
          // subscribe media 구독한 언론사
          !textFocus
              ? AllMedia()
              :
          SubscribeMedia()
        ],
      ),
    );
  }
}
