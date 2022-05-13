import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class MediaView extends StatefulWidget {
  @override
  _MediaViewState createState() => _MediaViewState();
}

class _MediaViewState extends State<MediaView> {
  MenuController _controller = MenuController();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      margin: EdgeInsets.only(top: 17),
          color: Colors.white,
          width: 750,
          child: Wrap(
            children: List.generate(
                _controller.mediaViewOne.length,
                (index) => MediaViewItems(
                    kind: _controller.mediaViewOne[index]["kind"],
                    content: _controller.mediaViewOne[index]["content"],
                    image: _controller.mediaViewOne[index]["image"],
                    time: _controller.mediaViewOne[index]["time"],
                    media: _controller.mediaViewOne[index]["media"],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index))),
          ),
        ));
  }
}

class MediaViewItems extends StatefulWidget {
  final String kind;
  final String content;
  final String image;
  final String time;
  final String media;
  final bool isActive;
  final VoidCallback press;

  const MediaViewItems(
      {Key? key,
      required this.kind,
      required this.content,
      required this.image,
      required this.time,
      required this.media,
      required this.isActive,
      required this.press})
      : super(key: key);

  @override
  _MediaViewItemsState createState() => _MediaViewItemsState();
}

class _MediaViewItemsState extends State<MediaViewItems> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 18, 30),
        width: 232,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(widget.image),
          SizedBox(height: 10),
          Text(
            widget.kind,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(230, 93, 160, 1),
            ),
          ),
          SizedBox(height: 7),
          Text(
            widget.content,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                decoration: _isHover ? TextDecoration.underline : null,
                fontSize: 13,
                color: Color.fromRGBO(32, 32, 32, 1),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text(
                widget.media,
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(80, 80, 80, 1),
                ),
              ),
              SizedBox(width: 2),
              const Icon(
                Icons.circle,
                size: 3,
                color: Color.fromRGBO(128, 128, 128, 1),
              ),
              SizedBox(width: 2),
              Text(
                widget.time,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(128, 128, 128, 1)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
