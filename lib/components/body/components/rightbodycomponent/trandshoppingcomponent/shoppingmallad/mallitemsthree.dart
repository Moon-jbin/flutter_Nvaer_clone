import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class MallItemsThree extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          _controller.mallItemsPageThree.length,
              (index) => MallItemsTitle(
            name: _controller.mallItemsPageThree[index]["name"],
            image1: _controller.mallItemsPageThree[index]["image1"],
            image2: _controller.mallItemsPageThree[index]["image2"],
            image3: _controller.mallItemsPageThree[index]["image3"],
            title1: _controller.mallItemsPageThree[index]["title1"],
            title2: _controller.mallItemsPageThree[index]["title2"],
            title3: _controller.mallItemsPageThree[index]["title3"],
            subTitle1: _controller.mallItemsPageThree[index]["subTitle1"],
            subTitle2: _controller.mallItemsPageThree[index]["subTitle2"],
            subTitle3: _controller.mallItemsPageThree[index]["subTitle3"],
          )),
    );
  }
}

class MallItemsTitle extends StatefulWidget {
  final String name;
  final String image1;
  final String image2;
  final String image3;
  final String title1;
  final String title2;
  final String title3;
  final String subTitle1;
  final String subTitle2;
  final String subTitle3;

  const MallItemsTitle({
    Key? key,
    required this.name,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.subTitle1,
    required this.subTitle2,
    required this.subTitle3,
  }) : super(key: key);

  @override
  _MallItemsTitleState createState() => _MallItemsTitleState();
}

class _MallItemsTitleState extends State<MallItemsTitle> {
  late bool _isHoverName = false;
  late bool _isHoverItem1 = false;
  late bool _isHoverItem2 = false;
  late bool _isHoverItem3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHoverName = value;
              });
            },
            child: Text(
              widget.name,
              style: TextStyle(
                  decoration: _isHoverName ? TextDecoration.underline : null,
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 17, 0, 28),
            height: 153,
            // color: Colors.orange,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _isHoverItem1 = value;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        width: 107.31,
                        height: 107,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.image1),
                                fit: BoxFit.cover),
                            border: Border.all(
                                width: .7,
                                color: const Color.fromRGBO(218, 225, 230, 1))),
                      ),
                      Text(
                        widget.title1,
                        style: TextStyle(
                            decoration:
                            _isHoverItem1 ? TextDecoration.underline : null,
                            color: Color.fromRGBO(32, 32, 32, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      Text(
                        widget.subTitle1,
                        style: TextStyle(
                            decoration:
                            _isHoverItem1 ? TextDecoration.underline : null,
                            color: Color.fromRGBO(32, 32, 32, 1),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 4.8),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _isHoverItem2 = value;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        width: 107.31,
                        height: 107,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.image2),
                                fit: BoxFit.cover),
                            border: Border.all(
                                width: .7,
                                color: const Color.fromRGBO(218, 225, 230, 1))),
                      ),
                      Text(
                        widget.title2,
                        style: TextStyle(
                            decoration:
                            _isHoverItem2 ? TextDecoration.underline : null,
                            color: Color.fromRGBO(32, 32, 32, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      Text(
                        widget.subTitle2,
                        style: TextStyle(
                            decoration:
                            _isHoverItem2 ? TextDecoration.underline : null,
                            color: Color.fromRGBO(32, 32, 32, 1),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 4.8),
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHoverItem3 = value;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          width: 107.31,
                          height: 107,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.image3),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                  width: .7,
                                  color:
                                  const Color.fromRGBO(218, 225, 230, 1))),
                        ),
                        Text(
                          widget.title3,
                          style: TextStyle(
                              decoration: _isHoverItem3
                                  ? TextDecoration.underline
                                  : null,
                              color: Color.fromRGBO(32, 32, 32, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          widget.subTitle3,
                          style: TextStyle(
                              decoration: _isHoverItem3
                                  ? TextDecoration.underline
                                  : null,
                              color: Color.fromRGBO(32, 32, 32, 1),
                              fontSize: 12),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
