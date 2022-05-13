import 'package:flutter/material.dart';

import 'musiccharttable/musiccharttable.dart';

class MusicChart extends StatefulWidget {
  @override
  _MusicChartState createState() => _MusicChartState();
}

class _MusicChartState extends State<MusicChart> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      width: 750,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _isHover = value;
                    });
                  },
                  child: Row(
                    children: [
                      Text("뮤직 급상승 차트",
                          style: TextStyle(
                              decoration:
                                  _isHover ? TextDecoration.underline : null,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      ),
                    ],
                  )),
              const SizedBox(width: 531),
              const Text(
                "오후 1시 업데이트",
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(128, 128, 128, 1),
                ),
              ),
            ],
          ),
          Container(width: 750, child: MusicChartTable()),
          //뮤직차트테이블 위젯
        ],
      ),
    );
  }
}
