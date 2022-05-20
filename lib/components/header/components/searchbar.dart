import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 11),
        child: Row(
              children: [
                Container(
                    width: 222,
                    height: 52,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/naver_logo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
                Container(
                  width: 532,
                  height: 56,
                  margin: const EdgeInsets.fromLTRB(20.0, 6, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(25, 206, 96, 1)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide:
                                const BorderSide(width: 1, color: Colors.green),
                              ),
                              suffixIcon: Container(
                                color: Colors.transparent,
                                width: 60,
                                height: 57,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        color: Colors.white,
                                        child: Icon(Icons.keyboard,
                                            color: Colors.grey.shade300, size: 21),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        color: Colors.white,
                                        child: const Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color: Color.fromRGBO(25, 206, 96, 1),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10)
                                  ],
                                ),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 56,
                  height: 56,
                  color: const Color.fromRGBO(25, 205, 96, 1),
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.search,
                      size: 33,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 225,
                  height: 56,
                  child: Image.asset("assets/images/naver_header_ad.png"),
                )
              ],
            ),
    );
  }
}
