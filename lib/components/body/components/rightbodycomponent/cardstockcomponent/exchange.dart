import 'package:flutter/material.dart';

class ExChange extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children:  const [
          Text(
            "환율",
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
          CircleAvatar(radius: 18,
          backgroundImage: NetworkImage("https://media.istockphoto.com/vectors/american-flag-vector-image-of-american-flag-american-flag-background-vector-id1073802568")
          ),
          SizedBox(width: 3),
          Text(
            "USD",
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(80, 80, 80, 1),
            ),
          ),
          SizedBox(width: 4),
          Text(
            "1,278.50",
            style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(32, 32, 32, 1),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 1),
          Icon(
            Icons.arrow_drop_up,
            color: Color.fromRGBO(37, 134, 238, 1),
          ),
          Text(
            "6.50 - 0.51%",
            style: TextStyle(
                color: Color.fromRGBO(37, 134, 238, 1),
                fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}