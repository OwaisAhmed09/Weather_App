import 'package:flutter/material.dart';
import 'package:weather/utils/text.dart';

class ContryName extends StatefulWidget {
  const ContryName({super.key});

  @override
  State<ContryName> createState() => _ContryNameState();
}

class _ContryNameState extends State<ContryName> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                dyText.contry,
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.37,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              dyText.weather,
              style: TextStyle(
                fontSize: 25,
                color: Color(0xffEBEBF599),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )
      ],
    );
  }
}
