import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/footer/footercomponent/partnerbox/partnercomponent.dart';
import 'package:flutter_naver_clone/components/footer/footercomponent/partnerbox/servicecomponent.dart';

class PartnerBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: .7,
            color: Color.fromRGBO(218, 225, 231, 1),
          )
        )
      ),
      width: 1130,
      child: Row(
        children: [
          //left
          Container(
            width: 780,
            child: PartnerComponent(),
          ),
          //right
          Container(
            width: 350,
            child: ServiceComponent(),
          )
        ],
      )
    );
  }
}