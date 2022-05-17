import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ProductItems_2 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
        // color: Colors.blue,
        height: 800,
        child: GridView.builder(
          itemCount: _controller.productItemsPage_2.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.8,    // 가로 / 세로
              mainAxisSpacing: 1, // 수평
              crossAxisSpacing: 5 //수직
          ),
          itemBuilder: (BuildContext context, int index) => productItemsPage_2(
            image: _controller.productItemsPage_2[index]["image"],
            title: _controller.productItemsPage_2[index]["title"],
            subTitle: _controller.productItemsPage_2[index]["subTitle"],
          ),
        ));
  }
}

class productItemsPage_2 extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const productItemsPage_2(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _productItemsPage_2State createState() => _productItemsPage_2State();
}

class _productItemsPage_2State extends State<productItemsPage_2> {
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
          SizedBox(height: 4),
          Text(
            widget.title,
            style: TextStyle(
              decoration: _isHover ? TextDecoration.underline : null,
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Color.fromRGBO(32, 32, 32, 1),
            ),
          ),
          Text(widget.subTitle,
            style: TextStyle(
              decoration: _isHover ? TextDecoration.underline : null,
              fontSize: 12,
              color: Color.fromRGBO(32, 32, 32, 1),
            ),
          ),
        ],
      ),
    );
  }
}
