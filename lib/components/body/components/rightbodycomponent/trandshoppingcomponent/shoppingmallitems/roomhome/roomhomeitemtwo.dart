import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class RoomHomeItemTwo extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: GridView.builder(
          itemCount: _controller.roomHomeItemsBottom.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.45),
          itemBuilder: (BuildContext context, int index) =>
              roomHomeItemsBottom(
                image: _controller.roomHomeItemsBottom[index]["image"],
                title: _controller.roomHomeItemsBottom[index]["title"],
                subTitle: _controller.roomHomeItemsBottom[index]["subTitle"],
              )),
    );
  }
}

class roomHomeItemsBottom extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const roomHomeItemsBottom(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _roomHomeItemsBottomState createState() => _roomHomeItemsBottomState();
}

class _roomHomeItemsBottomState extends State<roomHomeItemsBottom> {
  late bool _isHover = false;

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
          width: 108,
          child: Column(
            children: [
              Image.network(widget.image),
              SizedBox(height: 10),
              Text(
                widget.title,
                style: TextStyle(
                  decoration: _isHover ? TextDecoration.underline : null,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(32, 32, 32, 1),
                ),
              ),
              Text(
                widget.subTitle,
                style: TextStyle(
                    decoration: _isHover ? TextDecoration.underline : null,
                    fontSize: 12,
                    color: const Color.fromRGBO(32, 32, 32, 1)),
              )
            ],
          ),
        ));
  }
}
