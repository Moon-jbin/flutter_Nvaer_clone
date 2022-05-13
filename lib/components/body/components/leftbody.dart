import 'package:flutter/material.dart';

import 'leftbodycomponents/newsnotice.dart';
import 'leftbodycomponents/newsstand.dart';
import 'leftbodycomponents/themecast.dart';

class LeftBody extends StatefulWidget {
  @override
  _LeftBodyState createState() => _LeftBodyState();
}

class _LeftBodyState extends State<LeftBody>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Column(
          children: [
            InkWell(
                onTap: (){},
                child: Container(
                  width: 750,
                  child:Image.asset("assets/images/naver_main_ad.jpg"),
                )
            ),
            NewsNotice(),
            NewsStand(), // 언론사
            ThemeCast()
          ],
        )
    );


  }
}