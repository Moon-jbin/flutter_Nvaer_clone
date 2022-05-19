import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/header/menubar.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:get/get.dart';
import 'components/body/body.dart';
import 'components/footer/footer.dart';
import 'components/header/header.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MenuController _controller = Get.put(MenuController());
  final ScrollController _scrollController = ScrollController();

  late int scrollIndex = 2;

  scrollListener() {
    _scrollController.offset >= 200 ? scrollIndex = 1 : scrollIndex = 2;
    // print(scrollIndex);
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      // scrollListener();
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: SafeArea(
              child: Column(
                children: [Header(), MenuBar(), MainBody(), Footer()],
              ),
            ),
          ),
          // scrollIndex == 1 ?
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 65,
          //   color: Colors.blue,
          // ) : Text("hi")
        ],
      ),
    );
  }
}
