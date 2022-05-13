import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

import 'onemediacomponent/rowmediafour.dart';
import 'onemediacomponent/rowmediaone.dart';
import 'onemediacomponent/rowmediathree.dart';
import 'onemediacomponent/rowmediatwo.dart';

class OneMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Table(
      border: TableBorder.all(color: Colors.grey.shade400, width: .6),
      children: [
        TableRow(
            children: List.generate(
                _controller.mediaOneItems_1.length,
                    (index) => MediaOneItems_1(
                    text: _controller.mediaOneItems_1[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaOneItems_2.length,
                    (index) => MediaOneItems_2(
                    text: _controller.mediaOneItems_2[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaOneItems_3.length,
                    (index) => MediaOneItems_3(
                    text: _controller.mediaOneItems_3[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaOneItems_4.length,
                    (index) => MediaOneItems_4(
                    text: _controller.mediaOneItems_4[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)
                )
            )
        ),
      ],
    );
  }
}
