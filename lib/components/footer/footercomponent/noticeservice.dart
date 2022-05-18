import 'package:flutter/material.dart';

class NoticeService extends StatefulWidget {
  @override
  _NoticeServiceState createState() => _NoticeServiceState();
}

class _NoticeServiceState extends State<NoticeService> {
  late bool _isHover = false;
  late bool _isHover2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1130,
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 15),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: .7,
            color: Color.fromRGBO(218, 225, 231, 1),
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHover = value;
              });
            },
            child: Text(
              "공지사항",
              style: TextStyle(
                  decoration: _isHover ? TextDecoration.underline : null,
                  color: const Color.fromRGBO(32, 32, 32, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHover2 = value;
              });
            },
            child: Row(
              children: [
                Text(
                  "서비스 전체보기",
                  style: TextStyle(
                    decoration: _isHover2 ? TextDecoration.underline : null,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(32, 32, 32, 1),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
