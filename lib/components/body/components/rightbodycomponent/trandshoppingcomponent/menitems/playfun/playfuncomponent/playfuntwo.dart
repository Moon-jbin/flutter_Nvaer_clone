import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class PlayFunTwo extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          _controller.playFunItemsPageTwo.length,
              (index) => playFunItemsPageTwo(
            image: _controller.playFunItemsPageTwo[index]["image"],
            title: _controller.playFunItemsPageTwo[index]["title"],
            desc: _controller.playFunItemsPageTwo[index]["desc"],
            desc2: _controller.playFunItemsPageTwo[index]["desc2"],
          )),
    );
  }
}

class playFunItemsPageTwo extends StatefulWidget {
  final String image;
  final String title;
  final String desc;
  final String desc2;

  const playFunItemsPageTwo(
      {Key? key,
        required this.image,
        required this.title,
        required this.desc,
        required this.desc2})
      : super(key: key);

  @override
  _playFunItemsPageTwoState createState() => _playFunItemsPageTwoState();
}

class _playFunItemsPageTwoState extends State<playFunItemsPageTwo> {
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
              Container(
                width: 139,
                height: 94,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.image), fit: BoxFit.cover),
                    border: Border.all(
                        width: .7,
                        color: const Color.fromRGBO(218, 225, 230, 1))),
              ),
              const SizedBox(width: 13),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          decoration:
                          _isHover ? TextDecoration.underline : null,
                          fontSize: 13,
                          color: Color.fromRGBO(0, 85, 224, 1),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.desc,
                      style: TextStyle(
                          decoration:
                          _isHover ? TextDecoration.underline : null,
                          fontSize: 12,
                          color: Color.fromRGBO(32, 32, 32, 1),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 4),
                    Text(
                      widget.desc2,
                      style: TextStyle(
                          decoration:
                          _isHover ? TextDecoration.underline : null,
                          fontSize: 12,
                          color: Color.fromRGBO(32, 32, 32, 1)),
                    ),
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
