import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_1.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_10.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_2.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_3.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_4.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_5.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_6.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_7.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_8.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife/productlife_9.dart';

class ProductLife extends StatefulWidget {
  final int pageIndex;

  const ProductLife({Key? key, required this.pageIndex}) : super(key: key);

  @override
  _ProductLifeState createState() => _ProductLifeState();
}

class _ProductLifeState extends State<ProductLife> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: widget.pageIndex == 1
            ? ProductLife_1()
            : widget.pageIndex == 2
                ? ProductLife_2()
                : widget.pageIndex == 3
                    ? ProductLife_3()
                    : widget.pageIndex == 4
                        ? ProductLife_4()
                        : widget.pageIndex == 5
                            ? ProductLife_5()
                            : widget.pageIndex == 6
                                ? ProductLife_6()
                                : widget.pageIndex == 7
                                    ? ProductLife_7()
                                    : widget.pageIndex == 8
                                        ? ProductLife_8()
                                        : widget.pageIndex == 9
                                            ? ProductLife_9()
                                            : widget.pageIndex == 10
                                                ? ProductLife_10()
                                                : Text(""));
  }
}
