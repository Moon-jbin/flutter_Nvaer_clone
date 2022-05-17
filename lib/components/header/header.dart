import 'package:flutter/material.dart';
import 'components/searchbar.dart';
import 'components/startpage.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1250,
        height: 160, //212
        padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
        // color: Colors.blue,
        child: Column(
          children: [
            StartPage(),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
