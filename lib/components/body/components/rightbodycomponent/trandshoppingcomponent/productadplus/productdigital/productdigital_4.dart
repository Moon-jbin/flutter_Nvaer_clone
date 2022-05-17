import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ProductDigital_4 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 200,
      child: GridView.builder(
          itemCount: _controller.productDigitalItems_4.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5 / 0.6,
              mainAxisSpacing: 1,
              crossAxisSpacing: 5),
          itemBuilder: (BuildContext context, index) => productDigitalItems_4(
              image: _controller.productDigitalItems_4[index]["image"],
              content: _controller.productDigitalItems_4[index]["content"])),
    );
  }
}

class productDigitalItems_4 extends StatefulWidget {
  final String image;
  final String content;

  const productDigitalItems_4(
      {Key? key, required this.image, required this.content})
      : super(key: key);

  @override
  _productDigitalItems_4State createState() => _productDigitalItems_4State();
}

class _productDigitalItems_4State extends State<productDigitalItems_4> {
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
