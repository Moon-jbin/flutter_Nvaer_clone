import 'package:flutter/material.dart';
import 'musicchartleft.dart';
import 'musicchartright.dart';

class MusicChartTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 현재 Obx() , isActive, press만 제거한 상태임
    return
      Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color.fromRGBO(228, 232, 235, 1)
            )
          )
        ),

        child: Row(
          children: [
            MusicChartLeft(),
            MusicChartRight()
          ],
        )
      ) ;

  }}
