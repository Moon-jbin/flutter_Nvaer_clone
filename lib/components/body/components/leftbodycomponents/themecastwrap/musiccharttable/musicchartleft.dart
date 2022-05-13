import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';


class MusicChartLeft extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 500,
      child: ListView.builder(
          itemCount: _controller.musicChartLeft.length,
          itemBuilder: (BuildContext context, int index)
          => MusicChartLeftItems(
              title: _controller.musicChartLeft[index]["title"],
              image: _controller.musicChartLeft[index]["image"],
              person: _controller.musicChartLeft[index]["person"],
              num: _controller.musicChartLeft[index]["num"],
            )
        )
    );
  }
}


class MusicChartLeftItems extends StatefulWidget {
  final String title;
  final String image;
  final String person;
  final int num;

  const MusicChartLeftItems(
      {Key? key,
      required this.title,
      required this.image,
      required this.person,
      required this.num,
     })
      : super(key: key);

  @override
  _MusicChartLeftItemsState createState() => _MusicChartLeftItemsState();
}

class _MusicChartLeftItemsState extends State<MusicChartLeftItems> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return
      ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
                title: Text('Horse')
            )
          ]
      ).toList()

  }
}