import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/entertaincomponent.dart';

class ThemeList extends StatefulWidget {
  @override
  _ThemeListState createState() => _ThemeListState();
}

class _ThemeListState extends State<ThemeList> {
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 750,
              child: Table(
                border: TableBorder.all(color: Colors.grey.shade400, width: .6),
                children: [
                  TableRow(children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 0
                            ? const Color.fromRGBO(230, 93, 160, 1)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "엔터",
                            style: TextStyle(
                                color: _selectedIndex == 0
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 1
                            ? const Color.fromRGBO(1, 71, 181, 1)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "스포츠",
                            style: TextStyle(
                                color: _selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 2
                            ? const Color.fromRGBO(74, 148, 225, 1)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "자동차",
                            style: TextStyle(
                                color: _selectedIndex == 2
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 3
                            ? const Color.fromRGBO(102, 201, 113, 1)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "웹툰",
                            style: TextStyle(
                                color: _selectedIndex == 3
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 4;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 4
                            ? const Color.fromRGBO(53, 174, 94, 1)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "경제M",
                            style: TextStyle(
                                color: _selectedIndex == 4
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 5;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 5
                            ? const Color.fromRGBO(1, 71, 181, .7)
                            : Colors.white,
                        height: 49,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "추천",
                              style: TextStyle(
                                  color: _selectedIndex == 5
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Icon(Icons.circle,
                                size: 3,
                                color: _selectedIndex == 5
                                    ? Colors.white
                                    : Colors.black),
                            Text(
                              "구독",
                              style: TextStyle(
                                  color: _selectedIndex == 5
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 6;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 6
                            ? const Color.fromRGBO(235, 170, 0, .8)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "레시피",
                            style: TextStyle(
                                color: _selectedIndex == 6
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 7;
                        });
                      },
                      child: Container(
                        color: _selectedIndex == 7
                            ? const Color.fromRGBO(192, 141, 49, 1)
                            : Colors.white,
                        height: 49,
                        child: Center(
                          child: Text(
                            "리빙",
                            style: TextStyle(
                                color: _selectedIndex == 7
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
            _selectedIndex == 0
                ? Container()
                : Positioned(
                    top: 7,
                    left: -20,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex--;
                        });
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        margin: const EdgeInsets.only(left: 3),
                        padding: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: const Offset(0, 2))
                          ],
                        ),
                        child: Icon(Icons.arrow_back_ios,
                            color: Colors.grey.shade600, size: 13),
                      ),
                    )),
            _selectedIndex == 7
                ? Container()
                : Positioned(
                    top: 7,
                    right: -18,
                    child: Container(
                      width: 32,
                      height: 32,
                      margin: const EdgeInsets.only(left: 3),
                      // padding: const EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: const Offset(0, 2))
                          ]),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex++;
                          });
                        },
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.grey.shade600, size: 13),
                      ),
                    ),
                  ),
          ],
        ),
        EntertainComponent()
      ],
    );
  }
}
