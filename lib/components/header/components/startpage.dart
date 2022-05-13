import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}




class _StartPageState extends State<StartPage> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: TextButton.styleFrom(primary: Colors.white),
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          onPressed: () {},
          child: Row(
            children: [
               Text(
                "네이버를 시작페이지로",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  decoration: isHover ? TextDecoration.underline : null
                ),
              ),
              Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(left: 3),
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
                child: const Icon(Icons.arrow_forward_ios,
                    color: Colors.black, size: 9),
              )
            ],
          ),
        ),
        Text(
          "|",
          style: TextStyle(
              color: Colors.grey.shade300, fontWeight: FontWeight.w100),
        ),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                "쥬니어네이버",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontFamily: "Jua",
                    fontSize: 12),
              ),
            )),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                "해피빈",
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontFamily: "Jua",
                    fontSize: 12),
              ),
            ))
      ],
    );
  }
}