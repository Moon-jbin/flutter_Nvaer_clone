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
                child: Text(
                  " decoration: isHover ? TextDecoration.underline : null decoration: isHover ? TextDecoration.underline : null",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 13,
                      decoration: isHover ? TextDecoration.underline : null),
                ),
              )),
          SizedBox(width: 150), // 차후 조정할 예정
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
