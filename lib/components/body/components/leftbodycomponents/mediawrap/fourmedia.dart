import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

import 'fourmediacomponent/rowmediafour.dart';
import 'fourmediacomponent/rowmediaone.dart';
import 'fourmediacomponent/rowmediathree.dart';
import 'fourmediacomponent/rowmediatwo.dart';

class FourMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Table(
      border: TableBorder.all(color: Colors.grey.shade400, width: .6),
      children: [
        TableRow(
            children: List.generate(
                _controller.mediaFourItems_1.length,
                    (index) => MediaFourItems_1(
                    text: _controller.mediaFourItems_1[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaFourItems_2.length,
                    (index) => MediaFourItems_2(
                    text: _controller.mediaFourItems_2[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaFourItems_3.length,
                    (index) => MediaFourItems_3(
                    text: _controller.mediaFourItems_3[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaFourItems_4.length,
                    (index) => MediaFourItems_4(
                    text: _controller.mediaFourItems_4[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)
                )
            )
        ),
      ],
    );
  }
}





