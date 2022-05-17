import 'package:flutter/material.dart';

class NewsComponent extends StatefulWidget {
  const NewsComponent({Key? key}) : super(key: key);

  @override
_NewComponentState createState() => _NewComponentState();
}
class _NewComponentState extends State<NewsComponent>{
  late bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Row(
        children: [
          Container(
            height: 21,
            padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
            decoration: BoxDecoration(
              // color: Colors.blue,
              border: Border.all(
                width: 1,
                color: const Color.fromRGBO(32, 32, 32, 1),
              ),
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(10),
                right: Radius.circular(10),
              ),
            ),
            child: const Text(
              "이슈",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 6),
          Text(
            "코로나바이러스감염증-19 현황",
            style: TextStyle(
                fontSize: 13,
                color: const Color.fromRGBO(32, 32, 32, 1),
                decoration: _isHover ? TextDecoration.underline : null),
          )
        ],
      ),
    );
  }
}
