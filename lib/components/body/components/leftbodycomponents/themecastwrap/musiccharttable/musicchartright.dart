import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class MusicChartRight extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        // color: Colors.blue,
        width: 350,
        height: 407,
        child: ListView.separated(
            itemCount: _controller.musicChartRight.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (BuildContext context, int index) =>
                MusicChartRightItems(
                  title: _controller.musicChartRight[index]["title"],
                  image: _controller.musicChartRight[index]["image"],
                  person: _controller.musicChartRight[index]["person"],
                  num: _controller.musicChartRight[index]["num"],
                  index: index,
                  album: _controller.musicChartRight[index]["album"]
                )));
  }
}

class MusicChartRightItems extends StatefulWidget {
  final String title;
  final String image;
  final String person;
  final int num;
  final String album;
  final int index;

  const MusicChartRightItems({
    Key? key,
    required this.title,
    required this.image,
    required this.person,
    required this.num,
    required this.album,
    required this.index
  }) : super(key: key);

  @override
  _MusicChartRightItemsState createState() => _MusicChartRightItemsState();
}

class _MusicChartRightItemsState extends State<MusicChartRightItems> {
  late bool _isHover = false;
  late bool _isHover2 = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            _isHover = value;
          });
        },
        child: Text(
          widget.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              decoration: _isHover ? TextDecoration.underline : null,
              color: Color.fromRGBO(32, 32, 32, 1),
              fontSize: 13,
              fontWeight: FontWeight.w600),
        ),
      ),
      subtitle:InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            _isHover2 = value;
          });
        },
        child: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                style: TextStyle(
                  decoration: _isHover2 ? TextDecoration.underline : null,
                  color: Color.fromRGBO(80, 80, 80, 1),
                  fontSize: 12,
                ),
                children: [
                  TextSpan(text: widget.person),
                  const WidgetSpan(child: SizedBox(width: 8)),
                  const WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.circle,
                        size: 3,
                        color: Color.fromRGBO(80, 80, 80, 1),
                      )),
                  const WidgetSpan(child: SizedBox(width: 4)),
                  TextSpan(text: widget.album)
                ])),
      ),
      leading: Wrap(
        spacing: 22,
        children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${widget.num}",
            style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          widget.index == 3 || widget.index == 1?
          const Icon(Icons.arrow_drop_up, color: Colors.red,) : const SizedBox(width: 24, height: 20,)
        ],
      ),
          InkWell(
              onTap: (){},
              onHover: (value){
                setState(() {
                  _isHover = value;
                });
              },
              child: Container(
                  width: 48,
                  height: 48,
                  color:Colors.white,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeOutCubic,
                        width: 48,
                        height: _isHover ? 50 : 48,
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: NetworkImage(widget.image)
                              )
                          ),
                        ),
                      )
                    ],
                  )
              )
          )
        ],
      ),
      trailing: Wrap(
        spacing: 24,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.queue_music_outlined,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
    );
  }
}
