import 'package:flutter/material.dart';

class WeatherOne extends StatefulWidget {
  @override
  _WeatherOneState createState() => _WeatherOneState();
}

class _WeatherOneState extends State<WeatherOne> {
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
              "λ―ΈμΈ",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(80, 80, 80, 1),
              ),
            ),
            const SizedBox(width: 6),
            const Text("π"),
            const SizedBox(width: 6),
            const Text(
              "μ’μ",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(32, 32, 32, 1),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "|",
              style: TextStyle(
                color: Color.fromRGBO(228, 232, 235, 1),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "μ΄λ―ΈμΈ",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(80, 80, 80, 1),
              ),
            ),
            const SizedBox(width: 6),
            const Text("π"),
            const SizedBox(width: 6),
            const Text(
              "μ’μ",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(32, 32, 32, 1),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              "κ°μ°λ",
              style: TextStyle(
                  decoration: _isHover ? TextDecoration.underline : null,
                  fontSize: 12,
                  color: Color.fromRGBO(128, 128, 128, 1)),
            )
          ],
        ));
  }
}
