import 'package:flutter/material.dart';

class MediaOneItems_4 extends StatefulWidget{
  final String text;
  final bool isActive;
  final VoidCallback press;
  const MediaOneItems_4({Key? key, required this.text, required this.isActive, required this.press}) : super(key: key);

  @override
  _MediaOneItems_4State createState() => _MediaOneItems_4State();
}

class _MediaOneItems_4State extends State<MediaOneItems_4>{
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
        onHover: (value){
          setState(() {
            isHover = value;
          });
        },
        child: Container(
            color: !isHover ? Colors.white : const Color.fromRGBO(247, 249, 250, 1),
            padding: !isHover ? const EdgeInsets.fromLTRB(0, 23, 0, 22) : null,
            height: 65,
            child: !isHover
                ? Image.network(widget.text)
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: .6,
                            color: isHover
                                ? Colors.grey.shade400
                                : Colors.grey.shade500)),
                    child: const Center(
                        child: Text(
                          "구독",
                          style: TextStyle(fontSize: 12),
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: .6,
                            color: isHover
                                ? Colors.grey.shade400
                                : Colors.grey.shade500)),
                    child: const Center(
                        child: Text(
                          "기사보기",
                          style: TextStyle(fontSize: 12),
                        )),
                  ),
                ),
              ],
            )
        )
    );
  }
}