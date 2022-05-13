import 'package:flutter/material.dart';

class GroupTitle extends StatefulWidget {
  @override
  _GroupTitleState createState() => _GroupTitleState();
}

class _GroupTitleState extends State<GroupTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 17),
      width: 750,
      child: Row(
        children: [
         const Text(
              "오늘 읽을만한 글",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          const SizedBox(width: 6),
          const Text(
            "주제별로 분류된 다양한 글 모음",
            style: TextStyle(
                fontSize: 12, color: Color.fromRGBO(128, 128, 128, 1)),
          ),
          const SizedBox(width: 325),
          const Text(
            "669",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 4),
          const Text(
            "개의 글",
            style: TextStyle(
                fontSize: 12, color: Color.fromRGBO(128, 128, 128, 1)),
          ),
          const SizedBox(width: 6),
          Text(
            "|",
            style: TextStyle(
                color: Colors.grey.shade300, fontWeight: FontWeight.w100),
          ),
          const SizedBox(width: 5),
          Icon(Icons.settings, size: 14, color: Colors.grey.shade500),
          const Text(" 관심주제 설정", style: TextStyle(fontSize: 12, color: Color.fromRGBO(80, 80, 80, 1)),)
        ],
      ),
    );
  }
}
