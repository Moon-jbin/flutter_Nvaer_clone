import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductLife_9 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 200,
      child: GridView.builder(
          itemCount: _controller.productLifeItems_9.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5 / 0.6,
              mainAxisSpacing: 1,
              crossAxisSpacing: 5),
          itemBuilder: (BuildContext context, index) => productLifeItems_9(
              image: _controller.productLifeItems_9[index]["image"],
              content: _controller.productLifeItems_9[index]["content"])),
    );
  }
}

class productLifeItems_9 extends StatefulWidget {
  final String image;
  final String content;

  const productLifeItems_9(
      {Key? key, required this.image, required this.content})
      : super(key: key);

  @override
  _productLifeItems_9State createState() => _productLifeItems_9State();
}

class _productLifeItems_9State extends State<productLifeItems_9> {
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
          Image.network(widget.image),
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
