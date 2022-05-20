import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopStoryList extends StatefulWidget {
  @override
  _TopStoryListState createState() => _TopStoryListState();
}

class _TopStoryListState extends State<TopStoryList> {
  bool isHoverOne = false;
  bool isHoverTwo = false;
  bool isHoverThree = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 364,
      child: Column(
        children: [
          Container(
            height: 98,
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  onHover: (value){
                    setState(() {
                      isHoverOne= value;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 98,
                        height: 98,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                                duration: Duration(milliseconds: 1000),
                                curve: Curves.easeOutCubic,
                                width: 98,
                                height: isHoverOne? 110 : 98,
                              child: Container(
                                width: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage("https://s.pstatic.net/static/www/mobile/edit/20220511/cropImg_196x196_94208592723324837.jpeg")
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                      const SizedBox(width: 17),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            "허슬",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(230, 93, 160, 1)),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "애덤 샌들러 주연의 허슬",
                            style: TextStyle(
                                decoration: isHoverOne ? TextDecoration.underline : null,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 32, 32, 1)),
                          ),
                          Text(
                            "공식 예고편",
                            style: TextStyle(
                                decoration: isHoverOne ? TextDecoration.underline : null,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 32, 32, 1)),
                          ),
                          const SizedBox(height: 5),
                          const Text("넷플릭스", style: TextStyle(fontSize: 12 ,color: Color.fromRGBO(80, 80, 80, 1)),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 98,
            child: InkWell(
              onTap: (){},
              onHover: (value){
                setState(() {
                  isHoverTwo = value;
                });
              },
              child: Row(
                children: [
                  Container(
                    width: 98,
                    height: 98,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeOutCubic,
                          width: 98,
                          height: isHoverTwo? 105 : 98,
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage("https://s.pstatic.net/static/www/mobile/edit/20220511/cropImg_196x196_94208341254980712.jpeg")
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 17),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "안나라수마나라",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromRGBO(230, 93, 160, 1)),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "최성은을 향한 츤데레",
                        style: TextStyle(
                          decoration: isHoverTwo ? TextDecoration.underline : null,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      Text(
                        "황인엽의 짝사랑",
                        style: TextStyle(
                          decoration: isHoverTwo ? TextDecoration.underline : null,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      SizedBox(height: 5),
                      Text("넷플릭스", style: TextStyle(fontSize: 12 ,color: Color.fromRGBO(80, 80, 80, 1)),)
                    ],
                  )
                ],
              ),
            )



          ),
          const SizedBox(height: 14),
          Container(
            height: 98,
            child: InkWell(
              onTap: (){},
              onHover: (value){
                setState(() {
                  isHoverThree = value;
                });
              },
              child: Row(
                children: [
                  Container(
                    width: 98,
                    height: 98,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.easeOutCubic,
                          width: 98,
                          height: isHoverThree? 110 : 98,
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage("https://s.pstatic.net/static/www/mobile/edit/20220511/cropImg_196x196_94208546303718197.jpeg")
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 17),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "브로커",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromRGBO(230, 93, 160, 1)),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "고레에다 히로카즈 감독",
                        style: TextStyle(
                          decoration: isHoverThree ? TextDecoration.underline : null ,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      Text(
                        "브로커 메인 예고편",
                        style: TextStyle(
                          decoration:  isHoverThree ? TextDecoration.underline : null,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      SizedBox(height: 5),
                      const Text("네이버 영화예고편 저장소", style: TextStyle(fontSize: 12 ,color: Color.fromRGBO(80, 80, 80, 1)),)
                    ],
                  )
                ],
              ),
            )




          )
        ],
      ),
    );
  }
}
