import 'package:flutter/material.dart';

class ScrollSearchBar extends StatefulWidget {
  @override
  _ScrollSearchBarState createState() => _ScrollSearchBarState();
}

class _ScrollSearchBarState extends State<ScrollSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1190,
        // color: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: const Text(
                "N",
                style: TextStyle(
                    color: Color.fromRGBO(21, 198, 84, 1),
                    fontSize: 35,
                    fontFamily: 'BlackHanSans'),
              ),
            ),
            const Text(
              "  |  ",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromRGBO(218, 225, 230, 1),
              ),
            ),
            Container(
              width: 614,
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "검색어를 입력해 주세요.",
                         hintStyle: TextStyle(
                           fontSize: 21,
                           color: Color.fromRGBO(119, 119, 119, .2),
                           fontWeight: FontWeight.w600
                         )
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: 60,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            color: Colors.white,
                            child: Icon(Icons.keyboard,
                                color: Colors.grey.shade300, size: 21),
                          ),
                        ),
                        const SizedBox(width: 4),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            color: Colors.white,
                            child: const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Color.fromRGBO(25, 206, 96, 1),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10)
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 56,
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                        size: 33,
                        color: const Color.fromRGBO(25, 205, 96, 1),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
