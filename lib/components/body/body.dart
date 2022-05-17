import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/leftbody.dart';
import 'components/rightbody.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      width: 1250,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [LeftBody(), RightBody()],
      ),
    );
  }
}
