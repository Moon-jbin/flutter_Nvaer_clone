import 'package:flutter/material.dart';

class TopStoryInfo extends StatefulWidget {
  @override
  _TopStoryInfoState createState() => _TopStoryInfoState();
}

class _TopStoryInfoState extends State<TopStoryInfo> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (value) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (value) {
          setState(() {
            isHover = false;
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 22),
          width: 364,
          color: Colors.white,
          // color: Colors.blue,
          child: InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 364,
                  height: 180,
                  color: Colors.white,
                  child:  Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeOutCubic,
                        width: 364,
                        height:  isHover ? 190 : 180,
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: NetworkImage("https://s.pstatic.net/static/www/mobile/edit/20220511/cropImg_728x360_94208218246580123.jpeg")
                              )
                          ),
                        ),
                      ),
                      // 여기까지 이미지 size 변경 코드


                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: SizedBox(
                            width: 24,
                            height: 28,
                            child: Image.network(
                              "http://wiki.hash.kr/images/a/a5/%EB%84%A4%EC%9D%B4%EB%B2%84TV_%EB%A1%9C%EA%B3%A0.png",
                              color: Colors.white,
                            ),
                          )),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            color: Colors.black,
                            child: const Text(
                              "2:57",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ),

                const SizedBox(height: 17),
                const Text(
                  "전체관람가+",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(230, 93, 160, 1),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 7),
                Text(
                  "[숏버스터] 액션 소리 한 번에 살벌해지는 찐배우 김소연 | 3화 선공개",
                  style: TextStyle(
                    decoration: isHover ? TextDecoration.underline : null,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 13,
                      color: Color.fromRGBO(32, 32, 32, 1)),
                ),
                const SizedBox(height: 7),
                const Text(
                  "TVING",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(80, 80, 80, 1)),
                )
              ],
            ),
          ),
        ));
  }
}
