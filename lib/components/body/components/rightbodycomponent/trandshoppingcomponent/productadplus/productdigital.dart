import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital/productdigital_1.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital/productdigital_2.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital/productdigital_3.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital/productdigital_4.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital/productdigital_5.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital/productdigital_6.dart';

class ProductDigital extends StatefulWidget {
  final int pageIndex;

  const ProductDigital({Key? key, required this.pageIndex}) : super(key: key);

  @override
  _ProductDigitalState createState() => _ProductDigitalState();
}

class _ProductDigitalState extends State<ProductDigital> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: widget.pageIndex == 1
            ? ProductDigital_1()
            : widget.pageIndex == 2
                ? ProductDigital_2()
                : widget.pageIndex == 3
                    ? ProductDigital_3()
                    : widget.pageIndex == 4
                        ? ProductDigital_4()
                        : widget.pageIndex == 5
                            ? ProductDigital_5()
                            : widget.pageIndex == 6
                                ? ProductDigital_6()
                                : Text(""));
  }
}
