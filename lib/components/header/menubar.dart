import 'components/menuitems.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 52,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 2,
                spreadRadius: 0,
                offset: const Offset(0, 2))
          ],
          border: Border(
              top: BorderSide(color: Colors.grey.shade300, width: 0.5),
              bottom: BorderSide(color: Colors.grey.shade300, width: 0.5))),
      // color: Colors.blue,
      child: MenuItems(),
    );
  }
}
