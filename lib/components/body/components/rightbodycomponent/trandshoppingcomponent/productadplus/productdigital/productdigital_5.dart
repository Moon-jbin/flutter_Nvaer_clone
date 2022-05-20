import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ProductDigital_5 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 200,
      child: GridView.builder(
          itemCount: _controller.productDigitalItems_5.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5 / 0.6,
              mainAxisSpacing: 1,
              crossAxisSpacing: 5),
          itemBuilder: (BuildContext context, index) => productDigitalItems_5(
              image: _controller.productDigitalItems_5[index]["image"],
              content: _controller.productDigitalItems_5[index]["content"])),
    );
  }
}

class productDigitalItems_5 extends StatefulWidget {
  final String image;
  final String content;

  const productDigitalItems_5(
      {Key? key, required this.image, required this.content})
      : super(key: key);

  @override
  _productDigitalItems_5State createState() => _productDigitalItems_5State();
}

class _productDigitalItems_5State extends State<productDigitalItems_5> {
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
