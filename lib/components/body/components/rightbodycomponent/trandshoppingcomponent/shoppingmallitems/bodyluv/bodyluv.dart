import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/bodyluv/shoppingmallitemone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/bodyluv/shoppingmallitemtwo.dart';

class BodyLuv extends StatefulWidget {
  @override
  _BodyLuvState createState() => _BodyLuvState();
}

class _BodyLuvState extends State<BodyLuv> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShoppingMallItemOne(),
        SizedBox(height: 15),
        ShoppingMallItemTwo(),
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
                    "여름 준비 최대 76%할인!",
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
