import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_1.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_10.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_2.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_3.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_4.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_5.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_6.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_7.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_8.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion/productfashion_9.dart';

class ProductFashion extends StatefulWidget {
  final int pageIndex;

  const ProductFashion({Key? key, required this.pageIndex}) : super(key: key);

  @override
  _ProductFashionState createState() => _ProductFashionState();
}

class _ProductFashionState extends State<ProductFashion> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: widget.pageIndex == 1
            ? ProductFashion_1()
            : widget.pageIndex == 2
                ? ProductFashion_2()
                : widget.pageIndex == 3
                    ? ProductFashion_3()
                    : widget.pageIndex == 4
                        ? ProductFashion_4()
                        : widget.pageIndex == 5
                            ? ProductFashion_5()
                            : widget.pageIndex == 6
                                ? ProductFashion_6()
                                : widget.pageIndex == 7
                                    ? ProductFashion_7()
                                    : widget.pageIndex == 8
                                        ? ProductFashion_8()
                                        : widget.pageIndex == 9
                                            ? ProductFashion_9()
                                            : widget.pageIndex == 10
                                                ? ProductFashion_10()
                                                : Text(""));
  }
}
