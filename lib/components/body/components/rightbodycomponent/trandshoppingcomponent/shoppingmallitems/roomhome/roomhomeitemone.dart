import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class RoomHomeItemOne extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: GridView.builder(
          itemCount: _controller.roomHomeItemsTop.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.64),
          itemBuilder: (BuildContext context, int index) =>
              roomHomeItemsTop(
                image: _controller.roomHomeItemsTop[index]["image"],
                title: _controller.roomHomeItemsTop[index]["title"],
                subTitle: _controller.roomHomeItemsTop[index]["subTitle"],
              )),
    );
  }
}

class roomHomeItemsTop extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const roomHomeItemsTop(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _roomHomeItemsTopState createState() => _roomHomeItemsTopState();
}

class _roomHomeItemsTopState extends State<roomHomeItemsTop> {
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
          width: 164,
          child: Column(
            children: [
              Container(
                width: 163.5,
                height: 222,
                color: Colors.white,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeOutCubic,
                      width: 163.5,
                      height: _isHover ? 227 : 222,
                      child: Container(
                        width: 168.5,
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
