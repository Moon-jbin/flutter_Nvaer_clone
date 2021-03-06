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
                            "??????",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(230, 93, 160, 1)),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "?????? ????????? ????????? ??????",
                            style: TextStyle(
                                decoration: isHoverOne ? TextDecoration.underline : null,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 32, 32, 1)),
                          ),
                          Text(
                            "?????? ?????????",
                            style: TextStyle(
                                decoration: isHoverOne ? TextDecoration.underline : null,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 32, 32, 1)),
                          ),
                          const SizedBox(height: 5),
                          const Text("????????????", style: TextStyle(fontSize: 12 ,color: Color.fromRGBO(80, 80, 80, 1)),)
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
                        "?????????????????????",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromRGBO(230, 93, 160, 1)),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "???????????? ?????? ?????????",
                        style: TextStyle(
                          decoration: isHoverTwo ? TextDecoration.underline : null,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      Text(
                        "???????????? ?????????",
                        style: TextStyle(
                          decoration: isHoverTwo ? TextDecoration.underline : null,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      SizedBox(height: 5),
                      Text("????????????", style: TextStyle(fontSize: 12 ,color: Color.fromRGBO(80, 80, 80, 1)),)
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
                        "?????????",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromRGBO(230, 93, 160, 1)),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "???????????? ???????????? ??????",
                        style: TextStyle(
                          decoration: isHoverThree ? TextDecoration.underline : null ,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      Text(
                        "????????? ?????? ?????????",
                        style: TextStyle(
                          decoration:  isHoverThree ? TextDecoration.underline : null,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(32, 32, 32, 1)),
                      ),
                      SizedBox(height: 5),
                      const Text("????????? ??????????????? ?????????", style: TextStyle(fontSize: 12 ,color: Color.fromRGBO(80, 80, 80, 1)),)
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
