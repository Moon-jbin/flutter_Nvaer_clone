import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class NaverFooterAd extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1130,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Wrap(
        spacing: 70,
        children: List.generate(
          _controller.FooterAdItems.length,
          (index) => FooterAdItems(
            image: _controller.FooterAdItems[index]["image"],
            subTitle: _controller.FooterAdItems[index]["subTitle"],
            title: _controller.FooterAdItems[index]["title"],
            desc: _controller.FooterAdItems[index]["desc"],
            desc2: _controller.FooterAdItems[index]["desc2"],
          ),
        ),
      ),
    );
  }
}

class FooterAdItems extends StatefulWidget {
  final String image;
  final String subTitle;
  final String title;
  final String desc;
  final String desc2;

  const FooterAdItems(
      {Key? key,
      required this.image,
      required this.subTitle,
      required this.title,
      required this.desc,
      required this.desc2})
      : super(key: key);

  @override
  _FooterAdItemsState createState() => _FooterAdItemsState();
}

class _FooterAdItemsState extends State<FooterAdItems> {
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
        width: 330,
        child: Row(
          children: [
            Container(
              width: 160,
              height: 86,
              color: Colors.white,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 400),
                    curve: Curves.easeOutCubic,
                    width: 160,
                    height:  _isHover ? 91 : 86,
                    child: Container(
                      width: 165,
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

            Container(
              padding: EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.subTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(88, 196, 100, 1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.title,
                    style: TextStyle(
                        decoration: _isHover ? TextDecoration.underline : null,
                        color: const Color.fromRGBO(36, 36, 36, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.desc,
                    style: const TextStyle(
                      color: Color.fromRGBO(66, 66, 66, 1),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    widget.desc2,
                    style: const TextStyle(
                      color: Color.fromRGBO(66, 66, 66, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
