import 'package:flutter/material.dart';

class FindInfo extends StatefulWidget {
  @override
  _FindInfoState createState() => _FindInfoState();
}

class _FindInfoState extends State<FindInfo> {
  late bool _isHoverID = false;
  late bool _isHoverPW = false;
  late bool _isHoverRE = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.lock,
          size: 15,
          color: Colors.grey.shade500,
        ),
        SizedBox(width: 3),
        InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              _isHoverID = value;
            });
          },
          child: Text(
            "아이디",
            style: TextStyle(
                decoration: _isHoverID ? TextDecoration.underline : null,
                color: Color.fromRGBO(64, 64, 64, 1),
                fontSize: 12),
          ),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.circle,
          size: 3,
          color: Colors.grey.shade300,
        ),
        SizedBox(width: 4),
        InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              _isHoverPW = value;
            });
          },
          child: Text("비밀번호 찾기",
              style: TextStyle(
                  decoration: _isHoverPW ? TextDecoration.underline : null,
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 12)),
        ),
        const SizedBox(width: 113),
        Icon(
          Icons.person,
          size: 15,
          color: Colors.grey.shade400,
        ),
        SizedBox(width: 3),
        InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHoverRE = value;
              });
            },
            child: Text(
              "회원가입",
              style: TextStyle(
                  decoration: _isHoverRE ? TextDecoration.underline : null,
                  color: Color.fromRGBO(80, 80, 80, 1),
                  fontSize: 12),
            ))
      ],
    );
  }
}
