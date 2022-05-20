import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductFashion_1 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 200,
      child: GridView.builder(
          itemCount: _controller.productFashionItems_1.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5 / 0.6,
              mainAxisSpacing: 1,
              crossAxisSpacing: 5),
          itemBuilder: (BuildContext context, index) => ProductFashionItems_1(
              image: _controller.productFashionItems_1[index]["image"],
              content: _controller.productFashionItems_1[index]["content"])),
    );
  }
}

class ProductFashionItems_1 extends StatefulWidget {
  final String image;
  final String content;

  const ProductFashionItems_1(
      {Key? key, required this.image, required this.content})
      : super(key: key);

  @override
  _ProductFashionItems_1State createState() => _ProductFashionItems_1State();
}

class _ProductFashionItems_1State extends State<ProductFashionItems_1> {
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
      child: Column(
        children: [
          Container(
            width: 163.5,
            height: 163,
            color: Colors.white,
            child: Stack(
              children: [
                AnimatedPositioned(
                    duration: Duration(milliseconds: 400),
                  curve: Curves.easeOutCubic,
                  width: 163.5,
                  height:  _isHover ? 168 : 163,
                  child: Container(
                    width: 400,
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
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(32, 32, 32, 1),
            ),
          )
        ],
      ),
    );
  }
}
