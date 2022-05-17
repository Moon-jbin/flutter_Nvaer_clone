import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/leftbodycomponents/themecastwrap/vibecomponent/posterview.dart';

class VibeMag extends StatefulWidget {
  @override
  _VibeMagState createState() => _VibeMagState();
}

class _VibeMagState extends State<VibeMag> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      margin: const EdgeInsets.only(top: 30),
      width: 750,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHover = value;
                  });
                },
                child: Text(
                  "VIBE MAG",
                  style: TextStyle(
                      decoration: _isHover ? TextDecoration.underline : null,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              const SizedBox(width: 1),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHover = value;
                  });
                },
                child: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 13,
                ),
              ),
            ],
          ),
          PosterView()
        ],
      ),
    );
  }
}
