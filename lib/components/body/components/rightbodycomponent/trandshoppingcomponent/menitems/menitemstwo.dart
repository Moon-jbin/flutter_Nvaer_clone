import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../shoppingmallinfo/shoppingmallcontroller.dart';

class MenItemsTwo extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
        // color: Colors.blue,
        height: 590,
        child: GridView.builder(
          itemCount: _controller.menItemsPageTwo.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.8,    // 가로 / 세로
              mainAxisSpacing: 1, // 수평
              crossAxisSpacing: 5 //수직
          ),
          itemBuilder: (BuildContext context, int index) => menItemsPageTwo(
            image: _controller.menItemsPageTwo[index]["image"],
            title: _controller.menItemsPageTwo[index]["title"],
            subTitle: _controller.menItemsPageTwo[index]["subTitle"],
          ),
        ));
  }
}

class menItemsPageTwo extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const menItemsPageTwo(
      {Key? key,
        required this.image,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  _menItemsPageTwoState createState() => _menItemsPageTwoState();
}

class _menItemsPageTwoState extends State<menItemsPageTwo> {
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
            width: 107.31,
            height: 146,
            color: Colors.white,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeOutCubic,
                  width: 107.31,
                  height:  _isHover ? 151 : 146,
                  child: Container(
                    width: 112.31,
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
