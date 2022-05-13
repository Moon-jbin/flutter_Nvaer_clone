import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/themecomponent/topstory.dart';

class EntertainComponent extends StatefulWidget {
  @override
  _EntertainComponentState createState() => _EntertainComponentState();
}

class _EntertainComponentState extends State<EntertainComponent>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopStory()
      ],
    );
  }
}