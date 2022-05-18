import 'package:flutter/material.dart';

import 'footercomponent/corparea.dart';
import 'footercomponent/naverfooterad.dart';
import 'footercomponent/noticeservice.dart';
import 'footercomponent/partnerbox.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.fromLTRB(70, 0, 70, 92),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(247, 249, 250, 1),
          border: Border(
          top: BorderSide(
            width: .7,
            color: Color.fromRGBO(218, 225, 231, 1)
          )
        )
      ),
      child: Center(
        child: SizedBox(
            width: 1130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NaverFooterAd(),
                NoticeService(),
                PartnerBox(),
                CorpArea()
              ],
            )
        )
      )


    );
  }
}