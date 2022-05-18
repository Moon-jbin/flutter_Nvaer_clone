import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class OnePlusDeal_1 extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          _controller.onePlusDealItems_1.length,
          (index) => OnePlusDealItems_1(
                image1: _controller.onePlusDealItems_1[index]["image1"],
                image2: _controller.onePlusDealItems_1[index]["image2"],
                content: _controller.onePlusDealItems_1[index]["content"],
                percent: _controller.onePlusDealItems_1[index]["percent"],
                price: _controller.onePlusDealItems_1[index]["price"],
              )),
    );
  }
}

class OnePlusDealItems_1 extends StatefulWidget {
  final String image1;
  final String image2;
  final String content;
  final String percent;
  final String price;

  const OnePlusDealItems_1({
    Key? key,
    required this.image1,
    required this.image2,
    required this.content,
    required this.percent,
    required this.price,
  }) : super(key: key);

  @override
  _OnePlusDealItems_1State createState() => _OnePlusDealItems_1State();
}

class _OnePlusDealItems_1State extends State<OnePlusDealItems_1> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              _isHover = value;
            });
          },
          child: Row(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 85,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(widget.image1),
                                fit: BoxFit.cover),
                            border: Border.all(
                                width: .7,
                                color: const Color.fromRGBO(218, 225, 230, 1))),
                      ),
                      const SizedBox(width: 9),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(widget.image2),
                                fit: BoxFit.cover),
                            border: Border.all(
                                width: .7,
                                color: const Color.fromRGBO(218, 225, 230, 1))),
                      ),
                    ],
                  ),
                  const Positioned(
                    right: 55,
                    top: 20,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 9),
              SizedBox(
                width: 167,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          decoration:
                              _isHover ? TextDecoration.underline : null,
                          fontSize: 12,
                          color: Color.fromRGBO(32, 32, 32, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          widget.percent,
                          style: TextStyle(
                              decoration:
                                  _isHover ? TextDecoration.underline : null,
                              fontSize: 12,
                              color: Color.fromRGBO(240, 64, 69, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(
                              decoration:
                                  _isHover ? TextDecoration.underline : null,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(32, 32, 32, 1)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
