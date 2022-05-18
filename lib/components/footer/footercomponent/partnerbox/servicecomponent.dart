import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ServiceComponent extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            _controller.serviceItems.length,
            (index) => ServiceItems(
                image: _controller.serviceItems[index]["image"],
                title: _controller.serviceItems[index]["title"],
                desc: _controller.serviceItems[index]["desc"],
                index: index)),
      ),
    );
  }
}

class ServiceItems extends StatefulWidget {
  final String image;
  final String title;
  final String desc;
  final int index;

  const ServiceItems(
      {Key? key,
      required this.image,
      required this.title,
      required this.desc,
      required this.index})
      : super(key: key);

  @override
  _ServiceItemsState createState() => _ServiceItemsState();
}

class _ServiceItemsState extends State<ServiceItems> {
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
        width: 175,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(32, 32, 32, 1),
                  ),
                ),
                Text(widget.desc,
                  style: TextStyle(
                    decoration: _isHover ?  TextDecoration.underline : null,
                    color: const Color.fromRGBO(128, 128, 128, 1),
                    fontSize: 12
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Image.network(
              widget.image,
              width: widget.index == 0 ? 48 : 47,
              height: widget.index == 0 ? 48 : 50,
            )
          ],
        ),
      ),
    );
  }
}
