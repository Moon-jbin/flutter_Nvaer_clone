import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/cardstock.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/mainrightad.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/naverlogin.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshopping.dart';

class RightBody extends StatefulWidget {
  @override
  RightBodyState createState() => RightBodyState();
}

class RightBodyState extends State<RightBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  350,
      margin: const EdgeInsets.only(left: 30),
      // color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NaverLogin(),
              CardStock(),
              MainRightAd(),
              TrandShopping()
            ],
          ),
        )
    );
  }
}