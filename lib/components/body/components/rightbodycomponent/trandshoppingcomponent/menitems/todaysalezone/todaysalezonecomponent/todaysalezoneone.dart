import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/shoppingmallinfo/shoppingmallcontroller.dart';
import 'package:get/get.dart';

class ToDaySaleZoneOne extends StatelessWidget {
  final ShoppingMallInfo _controller = Get.put(ShoppingMallInfo());

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 210,
      child: GridView.builder(
        itemCount: _controller.toDaySaleZoneItemsOne.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 327/417,
            mainAxisSpacing: 1,
            crossAxisSpacing: 5),
        itemBuilder: (BuildContext context, index) => toDaySaleZoneItemsOne(
          image: _controller.toDaySaleZoneItemsOne[index]["image"],
          title: _controller.toDaySaleZoneItemsOne[index]["title"],
          percent: _controller.toDaySaleZoneItemsOne[index]["percent"],
          price: _controller.toDaySaleZoneItemsOne[index]["price"],
          prevPrice: _controller.toDaySaleZoneItemsOne[index]["prevPrice"],
        ),
      ),
    );
  }
}

class toDaySaleZoneItemsOne extends StatefulWidget {
  final String image;
  final String title;
  final String percent;
  final String price;
  final String prevPrice;

  const toDaySaleZoneItemsOne(
      {Key? key,
        required this.image,
        required this.title,
        required this.percent,
        required this.price,
        required this.prevPrice,
      })
      : super(key: key);

  @override
  _toDaySaleZoneItemsOneState createState() => _toDaySaleZoneItemsOneState();
}

class _toDaySaleZoneItemsOneState extends State<toDaySaleZoneItemsOne> {
  late bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 163.5,
            height: 163,
            color: Colors.white,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeOutCubic,
                  width: 163.5,
                  height:  _isHover ? 168 : 163,
                  child: Container(
                    width: 168.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(widget.image)
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(
            widget.title,
            style: TextStyle(
              decoration: _isHover ? TextDecoration.underline : null,
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(32, 32, 32, 1),
            ),
          ),
          Row(
            children: [
              Text(widget.percent, style: const TextStyle(
                color: Color.fromRGBO(242, 12, 50, 1),
                fontSize: 13,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(width: 3),
              Text(widget.price, style: const TextStyle(
                color: Color.fromRGBO(32, 32, 32, 1),
                fontSize: 13,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(width: 3),
              Text(widget.prevPrice, style: const TextStyle(
                color: Color.fromRGBO(128, 128, 128, 1),
                fontSize: 12,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.lineThrough
              ),),
            ],
          )
        ],
      ),
    );
  }
}
