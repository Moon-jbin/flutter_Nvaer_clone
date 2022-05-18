import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/header/components/weatherslider.dart';

class MenuItems extends StatefulWidget {
  @override
  MenuItemsState createState() => MenuItemsState();
}

class MenuItemsState extends State<MenuItems> {

  late bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.black,
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
        width: 1200,
        height: MediaQuery.of(context).size.height,
        // color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.mail,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                  SizedBox(width: 7),
                  Text(
                    "메일",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(3, 199, 90, 1),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "카페",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "블로그",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "지식iN",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "쇼핑",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "쇼핑LIVE",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "Pay",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "TV",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(3, 199, 90, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "사전",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "뉴스",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "증권",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "부동산",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "메일",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "지도",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "VIBE",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "책",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                child: const Text(
                  "웹툰",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {},
                onHover: (value){
                  setState(() {
                    isHover = value;
                  });
                },
                child: Row(
                  children:  [
                      Text(
                      "더보기",
                      style: TextStyle(
                        fontSize: 13,
                        decoration: isHover ? TextDecoration.underline : null
                        ),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey,size: 22,)
                  ],
                ) 
                ),
            Spacer(),
            WeatherSlider(),
          ],
        ),
      ),
    );
  }
}
