import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsNotice extends StatefulWidget {
  @override
  NewsNoticeState createState() => NewsNoticeState();
}

class NewsNoticeState extends State<NewsNotice> {
  late bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750,
      decoration: BoxDecoration(
          color: Color.fromRGBO(247, 249, 250, 1),
          border:
              Border.all(width: 1, color: Color.fromRGBO(218, 225, 230, 1))),
      height: 49,
      padding: const EdgeInsets.fromLTRB(15, 12, 15, 11),
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text("연합뉴스",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.grey.shade500,
                  size: 20,
                )
              ],
            ),
          ),
          // SizedBox(width: 3),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  isHover = value;
                });
              },
              child: Container(
                  // color: Colors.blue,
                  width: 310,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        scrollDirection: Axis.vertical,
                        autoPlay: true,
                        height: 49,
                        viewportFraction: 1,
                      ),
                      items: [
                        "KDI, 올해 성장률 전망 3.0%→2.8%…물가상승률 1.7%→4.2%",
                        "일본 원자력규제위, 후쿠시마 오염수 해양방출 계획 승인",
                        "방한하는 바이든, 삼성전자 평택 반도체 공장 찾는 이유는"
                      ]
                          .map((i) => Builder(builder: (BuildContext context) {
                                return SizedBox(
                                  width: 310,
                                  child: Text(i, style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    decoration: isHover ? TextDecoration.underline : null,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(32, 32, 32, 1)
                                  ),),
                                );
                              }))
                          .toList()))),
          const SizedBox(width: 150), // 차후 조정할 예정
          InkWell(
            onTap: () {},
            child: const Text(
              "뉴스홈",
              style: TextStyle(
                  color: Color.fromRGBO(53, 101, 201, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.circle,
            size: 4,
            color: Color.fromRGBO(200, 204, 209, 1),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {},
            child: const Text(
              "연예",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {},
            child: const Text(
              "스포츠",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {},
            child: const Text(
              "지방선거",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
