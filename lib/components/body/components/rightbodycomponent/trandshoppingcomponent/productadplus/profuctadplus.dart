import 'package:flutter/material.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productbeauty.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productdigital.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productfashion.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/productadplus/productlife.dart';

class ProductAdPlus extends StatefulWidget {
  @override
  _ProductAdPlusState createState() => _ProductAdPlusState();
}

class _ProductAdPlusState extends State<ProductAdPlus> {
  int selectedIndex = 1;
  int pageIndex = 1;
  late bool _isHoverBack = false;
  late bool _isHoverForward = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                      pageIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: selectedIndex == 1
                        ? const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(25, 206, 96, 1))))
                        : null,
                    child: Text(
                      "패션",
                      style: TextStyle(
                          color: selectedIndex == 1
                              ? const Color.fromRGBO(3, 199, 90, 1)
                              : const Color.fromRGBO(32, 32, 32, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                      pageIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: selectedIndex == 2
                        ? const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(25, 206, 96, 1))))
                        : null,
                    child: Text(
                      "라이프",
                      style: TextStyle(
                          color: selectedIndex == 2
                              ? const Color.fromRGBO(3, 199, 90, 1)
                              : const Color.fromRGBO(32, 32, 32, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                      pageIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: selectedIndex == 3
                        ? const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(25, 206, 96, 1))))
                        : null,
                    child: Text(
                      "뷰티",
                      style: TextStyle(
                          color: selectedIndex == 3
                              ? const Color.fromRGBO(3, 199, 90, 1)
                              : const Color.fromRGBO(32, 32, 32, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                      pageIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: selectedIndex == 4
                        ? const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(25, 206, 96, 1))))
                        : null,
                    child: Row(
                      children: [
                        Text(
                          "디지털",
                          style: TextStyle(
                              color: selectedIndex == 4
                                  ? const Color.fromRGBO(3, 199, 90, 1)
                                  : const Color.fromRGBO(32, 32, 32, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.circle,
                          size: 2,
                          color: selectedIndex == 4
                              ? const Color.fromRGBO(3, 199, 90, 1)
                              : const Color.fromRGBO(32, 32, 32, 1),
                        ),
                        Text(
                          "레저",
                          style: TextStyle(
                              color: selectedIndex == 4
                                  ? const Color.fromRGBO(3, 199, 90, 1)
                                  : const Color.fromRGBO(32, 32, 32, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 45),
                //버튼
                selectedIndex == 1
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "$pageIndex",
                            style: const TextStyle(
                                color: Color.fromRGBO(32, 32, 32, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            " / 10",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 58,
                            color: Colors.white,
                            child: Table(
                              border: TableBorder.all(
                                  width: 1,
                                  color:
                                      const Color.fromRGBO(228, 232, 235, 1)),
                              children: [
                                TableRow(
                                  children: [
                                    InkWell(
                                      onHover: (value) {
                                        setState(() {
                                          _isHoverBack = value;
                                        });
                                      },
                                      onTap: () {
                                        setState(() {
                                          if (pageIndex == 1) {
                                            pageIndex--;
                                            pageIndex = 10;
                                          } else {
                                            pageIndex--;
                                          }
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 3),
                                        color: _isHoverBack
                                            ? const Color.fromRGBO(
                                                247, 249, 250, 0.8)
                                            : Colors.white,
                                        height: 29,
                                        child: const Icon(
                                          Icons.arrow_back_ios,
                                          size: 11,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onHover: (value) {
                                        setState(() {
                                          _isHoverForward = value;
                                        });
                                      },
                                      onTap: () {
                                        setState(() {
                                          if (pageIndex == 10) {
                                            pageIndex++;
                                            pageIndex = 1;
                                          } else {
                                            pageIndex++;
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: _isHoverForward
                                            ? const Color.fromRGBO(
                                                247, 249, 250, 0.8)
                                            : Colors.white,
                                        height: 29,
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 11,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    : selectedIndex == 2
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "$pageIndex",
                                style: const TextStyle(
                                    color: Color.fromRGBO(32, 32, 32, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                " / 10",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 58,
                                color: Colors.white,
                                child: Table(
                                  border: TableBorder.all(
                                      width: 1,
                                      color: const Color.fromRGBO(
                                          228, 232, 235, 1)),
                                  children: [
                                    TableRow(
                                      children: [
                                        InkWell(
                                          onHover: (value) {
                                            setState(() {
                                              _isHoverBack = value;
                                            });
                                          },
                                          onTap: () {
                                            setState(() {
                                              if (pageIndex == 1) {
                                                pageIndex--;
                                                pageIndex = 10;
                                              } else {
                                                pageIndex--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            padding:
                                                const EdgeInsets.only(left: 3),
                                            color: _isHoverBack
                                                ? const Color.fromRGBO(
                                                    247, 249, 250, 0.8)
                                                : Colors.white,
                                            height: 29,
                                            child: const Icon(
                                              Icons.arrow_back_ios,
                                              size: 11,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onHover: (value) {
                                            setState(() {
                                              _isHoverForward = value;
                                            });
                                          },
                                          onTap: () {
                                            setState(() {
                                              if (pageIndex == 10) {
                                                pageIndex++;
                                                pageIndex = 1;
                                              } else {
                                                pageIndex++;
                                              }
                                            });
                                          },
                                          child: Container(
                                            color: _isHoverForward
                                                ? const Color.fromRGBO(
                                                    247, 249, 250, 0.8)
                                                : Colors.white,
                                            height: 29,
                                            child: const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 11,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        : selectedIndex == 3
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "$pageIndex",
                                    style: const TextStyle(
                                        color: Color.fromRGBO(32, 32, 32, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Text(
                                    " / 8",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(128, 128, 128, 1),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 58,
                                    color: Colors.white,
                                    child: Table(
                                      border: TableBorder.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              228, 232, 235, 1)),
                                      children: [
                                        TableRow(
                                          children: [
                                            InkWell(
                                              onHover: (value) {
                                                setState(() {
                                                  _isHoverBack = value;
                                                });
                                              },
                                              onTap: () {
                                                setState(() {
                                                  if (pageIndex == 1) {
                                                    pageIndex--;
                                                    pageIndex = 8;
                                                  } else {
                                                    pageIndex--;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                color: _isHoverBack
                                                    ? const Color.fromRGBO(
                                                        247, 249, 250, 0.8)
                                                    : Colors.white,
                                                height: 29,
                                                child: const Icon(
                                                  Icons.arrow_back_ios,
                                                  size: 11,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onHover: (value) {
                                                setState(() {
                                                  _isHoverForward = value;
                                                });
                                              },
                                              onTap: () {
                                                setState(() {
                                                  if (pageIndex == 8) {
                                                    pageIndex++;
                                                    pageIndex = 1;
                                                  } else {
                                                    pageIndex++;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                color: _isHoverForward
                                                    ? const Color.fromRGBO(
                                                        247, 249, 250, 0.8)
                                                    : Colors.white,
                                                height: 29,
                                                child: const Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 11,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : selectedIndex == 4
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "$pageIndex",
                                        style: const TextStyle(
                                            color:
                                                Color.fromRGBO(32, 32, 32, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        " / 6",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(128, 128, 128, 1),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        width: 58,
                                        color: Colors.white,
                                        child: Table(
                                          border: TableBorder.all(
                                              width: 1,
                                              color: const Color.fromRGBO(
                                                  228, 232, 235, 1)),
                                          children: [
                                            TableRow(
                                              children: [
                                                InkWell(
                                                  onHover: (value) {
                                                    setState(() {
                                                      _isHoverBack = value;
                                                    });
                                                  },
                                                  onTap: () {
                                                    setState(() {
                                                      if (pageIndex == 1) {
                                                        pageIndex--;
                                                        pageIndex = 6;
                                                      } else {
                                                        pageIndex--;
                                                      }
                                                    });
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 3),
                                                    color: _isHoverBack
                                                        ? const Color.fromRGBO(
                                                            247, 249, 250, 0.8)
                                                        : Colors.white,
                                                    height: 29,
                                                    child: const Icon(
                                                      Icons.arrow_back_ios,
                                                      size: 11,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onHover: (value) {
                                                    setState(() {
                                                      _isHoverForward = value;
                                                    });
                                                  },
                                                  onTap: () {
                                                    setState(() {
                                                      if (pageIndex == 6) {
                                                        pageIndex++;
                                                        pageIndex = 1;
                                                      } else {
                                                        pageIndex++;
                                                      }
                                                    });
                                                  },
                                                  child: Container(
                                                    color: _isHoverForward
                                                        ? const Color.fromRGBO(
                                                            247, 249, 250, 0.8)
                                                        : Colors.white,
                                                    height: 29,
                                                    child: const Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 11,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                : Text("")
              ],
            ),
          ),
          selectedIndex == 1
              ? ProductFashion(pageIndex: pageIndex)
              : selectedIndex == 2
                  ? ProductLife(pageIndex: pageIndex)
                  : selectedIndex == 3
                      ? ProductBeauty(pageIndex: pageIndex)
                      : selectedIndex == 4
                          ? ProductDigital(pageIndex: pageIndex)
                          : Text("")
        ],
      ),
    );
  }
}
