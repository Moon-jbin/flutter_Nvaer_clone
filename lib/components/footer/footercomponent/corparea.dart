import 'package:flutter/material.dart';

import 'corpareaitems/corpitems.dart';

class CorpArea extends StatefulWidget {
  @override
  _CorpAreaState createState() => _CorpAreaState();
}

class _CorpAreaState extends State<CorpArea> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: .7,
            color: Color.fromRGBO(218, 225, 231, 1),
          )
        )
      ),
      width: 1130,
      child: Row(
        children: [
          //1번째 Row,
          CorpItems(),
          //2번째 Row
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHover = value;
              });
            },
            child: Text(
              "ⓒ NAVER Corp.",
              style: TextStyle(
                decoration: _isHover ? TextDecoration.underline : null,
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }
}
