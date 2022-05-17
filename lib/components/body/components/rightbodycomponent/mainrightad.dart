import 'package:flutter/material.dart';

class MainRightAd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(228, 232, 235, 1),
                  offset: Offset(0.6,1.6)
              )
            ]
        ),
        width: 350,
        height: 200,
        child: Image.network("https://ssl.pstatic.net/tveta/libs/1389/1389869/d7dcffbdd27d7e068aae_20220429151510002.jpg"),
      )
    );
  }
}