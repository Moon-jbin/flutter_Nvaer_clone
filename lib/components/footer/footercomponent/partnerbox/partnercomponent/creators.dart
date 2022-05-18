import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class Creators extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 693,
      height: 16,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Text(
            " | ",
            style: TextStyle(color: Color.fromRGBO(228, 232, 235, 1)),
          );
        },
        itemCount: _controller.creatorsItems.length,
        itemBuilder: (BuildContext context, int index) =>
            CreatorsItems(creator: _controller.creatorsItems[index]),
      ),
    );
  }
}

class CreatorsItems extends StatefulWidget {
  final String creator;

  const CreatorsItems({Key? key, required this.creator}) : super(key: key);

  @override
  _CreatorsItemsState createState() => _CreatorsItemsState();
}

class _CreatorsItemsState extends State<CreatorsItems> {
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
      child: Row(
        children: [
          Text(
            widget.creator,
            style: TextStyle(
              decoration: _isHover ? TextDecoration.underline : null,
              color: const Color.fromRGBO(119, 119, 119, 1),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
