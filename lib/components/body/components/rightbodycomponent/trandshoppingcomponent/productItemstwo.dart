import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ProductItemsTwo extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _controller.productHeader_2.length,
        separatorBuilder: (context, index) {
          return Row(
            children: const [
              SizedBox(width: 4),
              Icon(
                Icons.circle,
                size: 4,
                color: Color.fromRGBO(201, 204, 207, 1),
              ),
              SizedBox(width: 6),
            ],
          );
        },
        itemBuilder: (BuildContext context, int index) => productHeader_2(
            text: _controller.productHeader_2[index], index: index),
      ),
    );
  }
}

class productHeader_2 extends StatefulWidget {
  final String text;
  final int index;

  const productHeader_2({Key? key, required this.text, required this.index})
      : super(key: key);

  @override
  _productHeader_2State createState() => _productHeader_2State();
}

class _productHeader_2State extends State<productHeader_2> {
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
      child: Text(
        widget.text,
        style: TextStyle(
            decoration: _isHover ? TextDecoration.underline : null,
            fontSize: 12,
            color: const Color.fromRGBO(64, 64, 64, 1),
            fontWeight: widget.index == 0 || widget.index == 4
                ? FontWeight.w600
                : FontWeight.normal),
      ),
    );
  }
}
