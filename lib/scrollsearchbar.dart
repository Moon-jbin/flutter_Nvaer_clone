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
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          suffixIcon: Container(
                            color: Colors.transparent,
                            width: 60,
                            height: 57,
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
                          )
                      ),
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
