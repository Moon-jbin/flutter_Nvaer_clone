import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/twomediacomponent/rowmediafour.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/twomediacomponent/rowmediaone.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/twomediacomponent/rowmediathree.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/mediawrap/twomediacomponent/rowmediatwo.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';

class TwoMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Table(
        border: TableBorder.all(color: Colors.grey.shade400, width: .6),
        children: [
          TableRow(
            children: List.generate(
                _controller.mediaTwoItems_1.length,
                (index) => MediaTwoItems_1(
                  text: _controller.mediaTwoItems_1[index],
                  isActive: index == _controller.selectedIndex,
                  press: () => _controller.setMenuIndex(index)

                )
            )
          ),
          TableRow(
            children:  List.generate(
                _controller.mediaTwoItems_2.length,
                    (index) => MediaTwoItems_2(
                    text: _controller.mediaTwoItems_2[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
          ),
          TableRow(
            children:  List.generate(
                _controller.mediaTwoItems_3.length,
                    (index) => MediaTwoItems_3(
                    text: _controller.mediaTwoItems_3[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)

                )
            )
          ),
          TableRow(
            children:  List.generate(
                _controller.mediaTwoItems_4.length,
                    (index) => MediaTwoItems_4(
                    text: _controller.mediaTwoItems_4[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index)
                )
            )
          ),
        ],
    );
  }
}





