import 'package:flutter/material.dart';

import 'naverlogincomponent/findinfo.dart';

class NaverLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        padding: const EdgeInsets.fromLTRB(17, 16, 16, 12),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(247, 249, 250, 1),
            border: Border.all(
                width: 1, color: const Color.fromRGBO(218, 225, 230, 1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "네이버를 더 안전하고 편리하게 이용하세요",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(128, 128, 128, 1),
              ),
            ),
            Center(
              child: InkWell(
                onTap: (){},
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 11),
                    width: 315,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 206, 96, 1),
                        border:Border.all(
                            width: 1,
                            color: Color.fromRGBO(21, 198, 84, 1)
                        )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("NAVER", style: TextStyle(color: Colors.white, fontSize: 17,fontFamily: 'BlackHanSans'),),
                        Text("  로그인", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),)
                      ],
                    )
                )
              )
            ),
            SafeArea(child: FindInfo())

          ],
        ));
  }
}
