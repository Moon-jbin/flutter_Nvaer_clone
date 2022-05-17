import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_1.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_2.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_3.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_4.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_5.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_6.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_7.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty/productbeauty_8.dart';

class ProductBeauty extends StatefulWidget {
  final int pageIndex;

  const ProductBeauty({Key? key, required this.pageIndex}) : super(key: key);

  @override
  _ProductBeautyState createState() => _ProductBeautyState();
}

class _ProductBeautyState extends State<ProductBeauty> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: widget.pageIndex == 1
            ? ProductBeauty_1()
            : widget.pageIndex == 2
                ? ProductBeauty_2()
                : widget.pageIndex == 3
                    ? ProductBeauty_3()
                    : widget.pageIndex == 4
                        ? ProductBeauty_4()
                        : widget.pageIndex == 5
                            ? ProductBeauty_5()
                            : widget.pageIndex == 6
                                ? ProductBeauty_6()
                                : widget.pageIndex == 7
                                    ? ProductBeauty_7()
                                    : widget.pageIndex == 8
                                        ? ProductBeauty_8()
                                        : Text(""));
  }
}
