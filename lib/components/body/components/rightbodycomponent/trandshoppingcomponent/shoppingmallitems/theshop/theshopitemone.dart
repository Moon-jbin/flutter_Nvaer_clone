import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class TheShopItemOne extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: GridView.builder(
          itemCount: _controller.theShopItemsTop.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.64),
          itemBuilder: (BuildContext context, int index) =>
              theShopItemsTop(
                image: _controller.theShopItemsTop[index]["image"],
                title: _controller.theShopItemsTop[index]["title"],
                subTitle: _controller.theShopItemsTop[index]["subTitle"],
              )),
    );
  }
}

class theShopItemsTop extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const theShopItemsTop(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _theShopItemsTopState createState() => _theShopItemsTopState();
}

class _theShopItemsTopState extends State<theShopItemsTop> {
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
