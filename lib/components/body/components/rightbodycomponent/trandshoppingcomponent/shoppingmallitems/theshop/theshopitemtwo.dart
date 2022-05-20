import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class TheShopItemTwo extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: GridView.builder(
          itemCount: _controller.theShopItemsBottom.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.45),
          itemBuilder: (BuildContext context, int index) =>
              theShopItemsBottom(
                image: _controller.theShopItemsBottom[index]["image"],
                title: _controller.theShopItemsBottom[index]["title"],
                subTitle: _controller.theShopItemsBottom[index]["subTitle"],
              )),
    );
  }
}

class theShopItemsBottom extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const theShopItemsBottom(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _theShopItemsBottomState createState() => _theShopItemsBottomState();
}

class _theShopItemsBottomState extends State<theShopItemsBottom> {
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
              Container(
                width: 108,
                height: 107,
                color: Colors.white,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeOutCubic,
                      width: 108,
                      height: _isHover ? 112 : 107,
                      child: Container(
                        width: 113,
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
