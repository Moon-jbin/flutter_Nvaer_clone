import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class SliderTwo extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 25,
      children: List.generate(
          _controller.sliderTwoItems.length,
              (index) => SlideTwoItems(
              image: _controller.sliderTwoItems[index]["image"],
              content: _controller.sliderTwoItems[index]["content"],
              date: _controller.sliderTwoItems[index]["date"])),
    );
  }
}

class SlideTwoItems extends StatefulWidget {
  final String image;
  final String content;
  final String date;

  const SlideTwoItems(
      {Key? key,
        required this.image,
        required this.content,
        required this.date})
      : super(key: key);

  @override
  _SlideTwoItemsState createState() => _SlideTwoItemsState();
}

class _SlideTwoItemsState extends State<SlideTwoItems> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 130,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            _isHover = value;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.image),
            SizedBox(height: 10),
            Text(
              widget.content,
              style: TextStyle(
                  decoration: _isHover ? TextDecoration.underline : null,
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Text(
              widget.date,
              style: const TextStyle(
                color: Color.fromRGBO(128, 128, 128, 1),
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}

