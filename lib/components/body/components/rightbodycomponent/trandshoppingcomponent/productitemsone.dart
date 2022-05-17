import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ProductItemsOne extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _controller.productHeader_1.length,
        separatorBuilder: (context, index) {
          return Row(
            children: const [
              SizedBox(width: 12),
              Icon(
                Icons.circle,
                size: 4,
                color: Color.fromRGBO(201, 204, 207, 1),
              ),
              SizedBox(width: 12),
            ],
          );
        },
        itemBuilder: (BuildContext context, int index) => ProductHeader_1(
          text: _controller.productHeader_1[index],
          index : index
        ),
      ),
    );
  }
}

class ProductHeader_1 extends StatefulWidget {
  final String text;
  final int index;

  const ProductHeader_1({Key? key, required this.text, required this.index}) : super(key: key);

  @override
  _ProductHeader_1State createState() => _ProductHeader_1State();
}

class _ProductHeader_1State extends State<ProductHeader_1> {
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
            fontWeight: widget.index == 3 || widget.index == 5 ? FontWeight.w600 : FontWeight.normal
          ),
        ));
  }
}
