import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class OtherLinks extends StatefulWidget {
  @override
  _OtherLinksState createState() => _OtherLinksState();
}

class _OtherLinksState extends State<OtherLinks> {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      padding: EdgeInsets.only(left: 17),
      margin: EdgeInsets.only(left: 16),
      height: 25,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 0.5,
            color: Color.fromRGBO(218, 225, 230, 1)
          )
        )
      ),
          child: Row(
              children: List.generate(
                  _controller.linkItems.length,
                  (index) => LinkMenuItems(
                      text: _controller.linkItems[index],
                      isActive: index == _controller.selectedIndex,
                      press: () => _controller.setMenuIndex(index)))),
        ));
  }
}

class LinkMenuItems extends StatefulWidget {
  final bool isActive;
  final String text;
  final VoidCallback press;

  const LinkMenuItems(
      {Key? key,
      required this.isActive,
      required this.text,
      required this.press})
      : super(key: key);

  @override
  _LinkMenuItemsState createState() => _LinkMenuItemsState();
}

class _LinkMenuItemsState extends State<LinkMenuItems> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              _isHover = value;
            });
          },
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(64, 64, 64, 1),
                decoration: _isHover ? TextDecoration.underline : null),
          ),
        ),
        SizedBox(width: 28)
      ],
    );
  }
}
