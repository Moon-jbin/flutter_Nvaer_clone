import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NewsPage_5 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          children: List.generate(
              _controller.shoppingItems_5.length,
                  (index) => shoppingItems_5(
                  shop: _controller.shoppingItems_5[index]["shop"],
                  content: _controller.shoppingItems_5[index]["content"])),
        ));
  }
}

class shoppingItems_5 extends StatefulWidget {
  final String shop;
  final String content;

  const shoppingItems_5({Key? key, required this.shop, required this.content})
      : super(key: key);

  @override
  _shoppingItems_5State createState() => _shoppingItems_5State();
}

class _shoppingItems_5State extends State<shoppingItems_5> {
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
        margin: EdgeInsets.only(bottom: 13),
        child: Row(
          children: [
            const Icon(
              Icons.circle,
              size: 5,
              color: Color.fromRGBO(26, 206, 97, 1),
            ),
            const SizedBox(width: 9),
            Text(
              widget.shop,
              style:  TextStyle(
                  decoration: _isHover ? TextDecoration.underline : null ,
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 13),
            Text(
              widget.content,
              style:  TextStyle(
                decoration: _isHover ? TextDecoration.underline : null ,
                fontSize: 12,
                color: Color.fromRGBO(32, 32, 32, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}