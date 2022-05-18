import 'package:flutter/material.dart';

class WeatherTwo extends StatefulWidget {
  @override
  _WeatherTwoState createState() => _WeatherTwoState();
}

class _WeatherTwoState extends State<WeatherTwo> {
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
        child: Row(
          children: [
            const Text(
              "☁",
            ),
            const SizedBox(width: 6),
            const Text(
              "18.3º",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(32, 32, 32, 1)),
            ),
            const SizedBox(width: 6),
            const Text(
              "흐림",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(32, 32, 32, 1),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "15.0º",
              style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(37, 134, 238, 1),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "/",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(228, 232, 235, 1),
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              "24.0º",
              style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(233, 86, 74, 1),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              "가산동",
              style: TextStyle(
                  decoration: _isHover ? TextDecoration.underline : null,
                  fontSize: 12,
                  color: Color.fromRGBO(128, 128, 128, 1)),
            )
          ],
        ));
  }
}
