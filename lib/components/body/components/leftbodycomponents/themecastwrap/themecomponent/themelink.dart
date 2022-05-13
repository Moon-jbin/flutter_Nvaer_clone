import 'package:flutter/material.dart';

import 'otherlinks.dart';

class ThemeLink extends StatefulWidget{
  @override
  _ThemeLinkState createState() => _ThemeLinkState();
}

class _ThemeLinkState extends State<ThemeLink>{
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
          color: Color.fromRGBO(247, 249, 250, 1),
          border: Border.all(
          width: .7,
          color: Color.fromRGBO(218, 225, 230, 1)
        )
      ),
      margin: EdgeInsets.only(top: 17),
      width: 750,
      height: 49,
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            onHover: (value){
              setState(() {
                isHover = value;
              });
            },
            child:  Text("연예 홈", style: TextStyle(fontSize: 13,
                fontWeight: FontWeight.w600,decoration: isHover? TextDecoration.underline : null, color: Color.fromRGBO(230, 93, 160, 1)),)
          ),
          OtherLinks()
        ],
      ),
    );
  }
}