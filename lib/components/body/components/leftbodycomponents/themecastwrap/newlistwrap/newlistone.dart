import 'package:flutter/material.dart';

import 'morePostOne.dart';

class NewListOne extends StatefulWidget {
  @override
  _NewListOneState createState() => _NewListOneState();
}

class _NewListOneState extends State<NewListOne> {
  late bool newFeedBtn = false;

  @override
  Widget build(BuildContext context) {
    return newFeedBtn
        ? Container(
      padding: EdgeInsets.only(top: 12),
            width: 750,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(228, 232, 235, 1),
                ),
              ),
            ),
            child: MorePostOne(),
          )
        : Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 750,
                  height: 75,
                  color: Colors.white,
                ),
                Positioned(
                    top: 25,
                    child: Container(
                      width: 750,
                      height: 1,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(228, 232, 235, 1),
                          ))),
                    )),
                Positioned(
                    top: 8,
                    left: 345,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          newFeedBtn = true;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 2),
                                )
                              ],
                            ),
                            child: Icon(Icons.add,
                                color: Colors.grey.shade600, size: 17),
                          ),
                          SizedBox(height: 7),
                          const Text(
                            "새로운 글 더보기",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )),
              ],
            ));
  }
}
