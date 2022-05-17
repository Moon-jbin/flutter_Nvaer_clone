import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/grouptitle.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/musicchart.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/newlistwrap/newlistone.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/mediaview.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/mediaviewtwo.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/themelink.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/vibemag.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themelist.dart';

class ThemeCast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        GroupTitle(),
        ThemeList(),
        ThemeLink(),
        MediaView(),
        Container(
          width: 750,
          height: .7,
          color:  Color.fromRGBO(228, 232, 235, 1)
        ),
        MusicChart(),
        MediaViewTwo(),
        Container(
            width: 750,
            height: .7,
            color:  Color.fromRGBO(228, 232, 235, 1)
        ),
        VibeMag(),
        NewListOne()
      ],
    ));
  }
}
