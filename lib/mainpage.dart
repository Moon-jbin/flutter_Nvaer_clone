import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/header/menubar.dart';
import 'package:flutter_naver_clone/menucontroller.dart';
import 'package:flutter_naver_clone/scrollsearchbar.dart';
import 'package:get/get.dart';
import 'components/body/body.dart';
import 'components/footer/footer.dart';
import 'components/header/header.dart';
import 'package:show_up_animation/show_up_animation.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MenuController _controller = Get.put(MenuController());
  late ScrollController _scrollController;
  late bool _isHover = false;
  bool _showSearchBar = false;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(() {
            if (_scrollController.offset >= 200) {
              _showSearchBar = true;
            } else {
              _showSearchBar = false;
            }
          });
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          Positioned(
            child: _showSearchBar == true
                ? ShowUpAnimation(
                    animationDuration: Duration(milliseconds: 400),
                    curve: Curves.easeOutCubic,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            width: .7,
                            color: Color.fromRGBO(16, 206, 114, 1),
                          ),
                        ),
                      ),
                      child: ScrollSearchBar(),
                    ))
                : Container(),
          ),
          Positioned(
            bottom: 25,
            right: 25,
            child: Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _isHover ? Color.fromRGBO(25, 206, 96, 1) : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      spreadRadius: 0,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: InkWell(
                overlayColor: MaterialStateProperty.all(Colors.white),
                onTap: _scrollToTop,
                onHover: (value) {
                  setState(() {
                    _isHover = value;
                  });
                },
                child: Icon(Icons.vertical_align_top,
                    color: _isHover ? Colors.white : Colors.grey.shade600,
                    size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
