import 'package:flutter/material.dart';

class SubscribeMedia extends StatefulWidget {
  @override
  _SubscribeMediaState createState() => _SubscribeMediaState();
}

class _SubscribeMediaState extends State<SubscribeMedia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: Colors.grey.shade400, width: .6),
        bottom: BorderSide(color: Colors.grey.shade400, width: .6),
      )),
      width: 750,
      height: 260,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "구독한 언론사가 없습니다.",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "언론사 구독 설정에서 관심있는 언론사를 구독하시면",
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(80, 80, 80, 1),
            ),
          ),
          const Text("언론사가 직접 편집한 뉴스들을 네이버 홈에서 바로 보실 수 있습니다.",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(80, 80, 80, 1),
              )),
          const SizedBox(height: 20),
          InkWell(
              onTap: () {},
              child: Container(
                width: 165,
                height: 40,
                color: Color.fromRGBO(53, 101, 201, 1),
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: const Center(
                    child: Text(
                  "언론사 구독 설정하기",
                  style: TextStyle(color: Colors.white),
                )),
              ))
        ],
      ),
    );
  }
}
