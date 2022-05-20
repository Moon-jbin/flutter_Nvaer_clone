import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class SliderOne extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 25,
      children: List.generate(
          _controller.sliderOneItems.length,
          (index) => SliderOneItems(
              image: _controller.sliderOneItems[index]["image"],
              content: _controller.sliderOneItems[index]["content"],
              date: _controller.sliderOneItems[index]["date"])),
    );
  }
}

class SliderOneItems extends StatefulWidget {
  final String image;
  final String content;
  final String date;

  const SliderOneItems(
      {Key? key,
      required this.image,
      required this.content,
      required this.date})
      : super(key: key);

  @override
  _SliderOneItemsState createState() => _SliderOneItemsState();
}

class _SliderOneItemsState extends State<SliderOneItems> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      width: 130,
      // height: 350,
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
            Container(
              width: 130,
              height: 130,
              color: Colors.white,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 400),
                    curve: Curves.easeOutCubic,
                    width: 130,
                    height:  _isHover ? 135 : 130,
                    child: Container(
                      width: 135,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(widget.image)
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
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
