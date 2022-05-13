import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/topstoryinfo.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/topstorylist.dart';

class TopStory extends StatefulWidget{
  @override
  _TopStoryState createState() => _TopStoryState();
}

class _TopStoryState extends State<TopStory>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 750,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopStoryInfo(),
          TopStoryList()
        ],
      ),
    );
  }
}