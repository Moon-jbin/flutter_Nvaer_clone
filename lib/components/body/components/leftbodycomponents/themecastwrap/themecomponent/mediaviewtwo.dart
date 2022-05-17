import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class MediaViewTwo extends StatefulWidget {
  @override
  _MediaViewTwoState createState() => _MediaViewTwoState();
}

class _MediaViewTwoState extends State<MediaViewTwo> {
  MenuController _controller = MenuController();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: EdgeInsets.only(top: 17),
          color: Colors.white,
          width: 750,
          child: Wrap(
            spacing: 27,
            children: List.generate(
                _controller.mediaViewTwo.length,
                (index) => MediaViewItems(
                    kind: _controller.mediaViewTwo[index]["kind"],
                    content: _controller.mediaViewTwo[index]["content"],
                    image: _controller.mediaViewTwo[index]["image"],
                    time: _controller.mediaViewTwo[index]["time"],
                    media: _controller.mediaViewTwo[index]["media"],
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
        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
        width: 232,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 4),
            RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                children: [
                  TextSpan(
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(80, 80, 80, 1),
                      ),
                      text: widget.media),
                  const WidgetSpan(
                    child: SizedBox(width: 2),
                  ),
                  const WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.circle,
                        size: 3,
                        color: Color.fromRGBO(128, 128, 128, 1),
                      )),
                  const WidgetSpan(
                    child: SizedBox(width: 2),
                  ),
                  TextSpan(
                    text: widget.time,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(128, 128, 128, 1),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
