import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class PlayFunThree extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          _controller.playFunItemsPageThree.length,
              (index) => playFunItemsPageThree(
            image: _controller.playFunItemsPageThree[index]["image"],
            title: _controller.playFunItemsPageThree[index]["title"],
            desc: _controller.playFunItemsPageThree[index]["desc"],
            desc2: _controller.playFunItemsPageThree[index]["desc2"],
          )),
    );
  }
}

class playFunItemsPageThree extends StatefulWidget {
  final String image;
  final String title;
  final String desc;
  final String desc2;

  const playFunItemsPageThree(
      {Key? key,
        required this.image,
        required this.title,
        required this.desc,
        required this.desc2})
      : super(key: key);

  @override
  _playFunItemsPageThreeState createState() => _playFunItemsPageThreeState();
}

class _playFunItemsPageThreeState extends State<playFunItemsPageThree> {
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
                    border: Border.all(
                        width: .7,
                        color:  const Color.fromRGBO(218, 225, 230, 1)
                    )
                ),
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeOutCubic,
                      width: 139,
                      height:  _isHover ? 99 : 94,
                      child: Container(
                        width: 144,
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
