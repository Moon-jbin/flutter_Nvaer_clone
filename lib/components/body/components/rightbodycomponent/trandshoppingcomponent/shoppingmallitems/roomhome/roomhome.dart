import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/roomhome/roomhomeitemone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/roomhome/roomhomeitemtwo.dart';


class RoomHome extends StatefulWidget {
  @override
  _RoomHomeState createState() => _RoomHomeState();
}

class _RoomHomeState extends State<RoomHome> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoomHomeItemOne(),
        SizedBox(height: 15),
        RoomHomeItemTwo(),
        InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHover = value;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 247, 249, 1),
                  border: Border.all(
                      width: .7,
                      color: const Color.fromRGBO(228, 232, 235, 1))),
              width: 332,
              padding: const EdgeInsets.fromLTRB(14, 11, 25, 11),
              child: Row(
                children: [
                  const Text(
                    "신상특가",
                    style: TextStyle(color: Color.fromRGBO(255, 85, 85, 1)),
                  ),
                  const Text(
                    " | ",
                    style: TextStyle(color: Color.fromRGBO(216, 216, 216, 1)),
                  ),
                  Text(
                    "현빈 추천선물~ 최대 3만원 할인전",
                    style: TextStyle(
                        decoration: _isHover ? TextDecoration.underline : null,
                        color: Color.fromRGBO(128, 128, 128, 1), fontSize: 12),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
