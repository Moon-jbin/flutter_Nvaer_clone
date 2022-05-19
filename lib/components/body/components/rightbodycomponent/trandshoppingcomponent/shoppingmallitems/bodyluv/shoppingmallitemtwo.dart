import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class ShoppingMallItemTwo extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: GridView.builder(
          itemCount: _controller.shoppingMallItemsBottom.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.45),
          itemBuilder: (BuildContext context, int index) =>
              shoppingMallItemsBottom(
                image: _controller.shoppingMallItemsBottom[index]["image"],
                title: _controller.shoppingMallItemsBottom[index]["title"],
                subTitle: _controller.shoppingMallItemsBottom[index]["subTitle"],
              )),
    );
  }
}

class shoppingMallItemsBottom extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const shoppingMallItemsBottom(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _shoppingMallItemsBottomState createState() => _shoppingMallItemsBottomState();
}

class _shoppingMallItemsBottomState extends State<shoppingMallItemsBottom> {
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
