import 'package:flutter/material.dart';

class RightBody extends StatefulWidget {
  @override
  RightBodyState createState() => RightBodyState();
}

class RightBodyState extends State<RightBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.only(left: 30),
      color: Colors.blue,
        child: Text("right"),
    );
  }
}