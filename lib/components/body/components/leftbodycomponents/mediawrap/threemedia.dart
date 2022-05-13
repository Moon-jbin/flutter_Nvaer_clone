import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/threemediacomponent/rowmediafour.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/threemediacomponent/rowmediaone.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/threemediacomponent/rowmediathree.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/threemediacomponent/rowmediatwo.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class ThreeMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Table(
      border: TableBorder.all(color: Colors.grey.shade400, width: .6),
      children: [
        TableRow(
            children: List.generate(
                _controller.mediaThreeItems_1.length,
                    (index) => MediaThreeItems_1(
                    text: _controller.mediaThreeItems_1[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaThreeItems_2.length,
                    (index) => MediaThreeItems_2(
                    text: _controller.mediaThreeItems_2[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaThreeItems_3.length,
                    (index) => MediaThreeItems_3(
                    text: _controller.mediaThreeItems_3[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
        ),
        TableRow(
            children:  List.generate(
                _controller.mediaThreeItems_4.length,
                    (index) => MediaThreeItems_4(
                    text: _controller.mediaThreeItems_4[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)
                )
            )
        ),
      ],
    );
  }
}





