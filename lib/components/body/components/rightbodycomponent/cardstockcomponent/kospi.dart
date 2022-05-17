import 'package:flutter/material.dart';

class KosPi extends StatelessWidget {
  const KosPi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: const [
          Text(
            "증시",
            style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(32, 32, 32, 1),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 4),
          Text(
            "|",
            style: TextStyle(
              color: Color.fromRGBO(228, 232, 235, 1),
            ),
          ),
          SizedBox(width: 3),
          Text(
            "코스피",
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(80, 80, 80, 1),
            ),
          ),
          SizedBox(width: 4),
          Text(
            "2,605.25",
            style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(32, 32, 32, 1),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 1),
          Icon(
            Icons.arrow_drop_up,
            color: Color.fromRGBO(240, 90, 90, 1),
          ),
          Text(
            "8.67 + 0.33%",
            style: TextStyle(
              color: Color.fromRGBO(240, 90, 90, 1),
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
