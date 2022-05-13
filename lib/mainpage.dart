import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/header/menubar.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';
import 'components/body/body.dart';
import 'components/footer/footer.dart';
import 'components/header/header.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Scaffold(
      key: _controller.scaffoldKey,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              children: [Header(), MenuBar(), MainBody(), Footer()],
            ),
          )),
    );
  }
}
