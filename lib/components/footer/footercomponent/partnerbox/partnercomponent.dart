import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/footer/footercomponent/partnerbox/partnercomponent/creators.dart';
import 'package:flutter_naver_clone/components/footer/footercomponent/partnerbox/partnercomponent/developers.dart';
import 'package:flutter_naver_clone/components/footer/footercomponent/partnerbox/partnercomponent/partners.dart';

class PartnerComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
           children: [
             const SizedBox(
               width: 87,
               child:Text("Creators", style: TextStyle(
                 color: Color.fromRGBO(32, 32, 32, 1),
                 fontSize: 12,
                 fontWeight: FontWeight.w600
               ),),
             ),
             Creators(),
           ],
         ),
        SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 87,
              child:Text("Partners", style: TextStyle(
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w600
              ),),
            ),
            Partners(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 87,
              child:Text("Developers", style: TextStyle(
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w600
              ),),
            ),
            Developers(),
          ],
        )
      ],
    );
  }
}