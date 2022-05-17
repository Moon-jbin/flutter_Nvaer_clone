import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productcomponent.dart';

class TrandShopping extends StatefulWidget {
  @override
  _TrandShoppingState createState() => _TrandShoppingState();
}

class _TrandShoppingState extends State<TrandShopping> {
  late bool _isHover = false;
  late bool _isHoverOnePlus = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26),
      color: Colors.white,
      width: 350,
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
                    Image.asset(
                      "assets/images/mobile_logo.png",
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      "트렌드쇼핑",
                      style: TextStyle(
                          decoration:
                              _isHover ? TextDecoration.underline : null,
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 3),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 93,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Container(
                  decoration: selectedIndex == 0
                      ? const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(25, 206, 96, 1))))
                      : null,
                  child: Text(
                    "상품",
                    style: TextStyle(
                        color: selectedIndex == 0
                            ? const Color.fromRGBO(3, 199, 90, 1)
                            : const Color.fromRGBO(32, 32, 32, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                  decoration: selectedIndex == 1
                      ? const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(25, 206, 96, 1))))
                      : null,
                  child: Text(
                    "쇼핑몰",
                    style: TextStyle(
                        color: selectedIndex == 1
                            ? const Color.fromRGBO(3, 199, 90, 1)
                            : const Color.fromRGBO(32, 32, 32, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Container(
                  decoration: selectedIndex == 2
                      ? const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(25, 206, 96, 1))))
                      : null,
                  child: Text(
                    "MEN",
                    style: TextStyle(
                        color: selectedIndex == 2
                            ? const Color.fromRGBO(3, 199, 90, 1)
                            : const Color.fromRGBO(32, 32, 32, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverOnePlus = value;
                  });
                },
                child: Text(
                  "원쁠딜",
                  style: TextStyle(
                      decoration:
                          _isHoverOnePlus ? TextDecoration.underline : null,
                      color: const Color.fromRGBO(32, 32, 32, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 0.7, color: Color.fromRGBO(218, 225, 230, 1))),
              width: 350,
              child: selectedIndex == 0
                  ? ProductComponent()
                  : selectedIndex == 1
                      ? Text("쇼핑몰")
                      : selectedIndex == 2
                          ? Text("MEN")
                          : Container())
        ],
      ),
    );
  }
}
