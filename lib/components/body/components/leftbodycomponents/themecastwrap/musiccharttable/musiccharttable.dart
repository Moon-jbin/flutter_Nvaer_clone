import 'package:flutter/material.dart';

import 'musicchartleft.dart';

class MusicChartTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 현재 Obx() , isActive, press만 제거한 상태임
    return Row(
      children: [
        MusicChartLeft(),
        // MusicChartRight()
      ],
    );
  }}




//
//
//
//       Column(
//         children:
//         List.generate(
//             _controller.musicChartLeft.length,
//             (index) => MusicChartLeft(
//                   title: _controller.musicChartLeft[index]["title"],
//                   image: _controller.musicChartLeft[index]["image"],
//                   person: _controller.musicChartLeft[index]["person"],
//                   num: _controller.musicChartLeft[index]["num"],
//                 )));
//   }
// }


