import 'package:flutter/material.dart';
import 'package:weather/wigets/widgets.dart';

class BottomImage extends StatelessWidget {
  const BottomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          const Positioned(
            child: Image(
              image: AssetImage("assets/images/Rectangle 6.png"),
            ),
          ),
          const Positioned(
            width: 300,
            height: 300,
            top: -90,
            left: 80,
            // right: -5,
            child: Image(
              width: 300,
              height: 300,
              image: AssetImage("assets/images/Moon cloud fast wind (1).png"),
            ),
          ),
          const SizedBox(height: 10),
          Positioned(
            left: 20,
            top: 8,
            child: BottomText("Mon", "20°", "assets/images/Sun.png"),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: BottomText("Tue  ", " 21°", "assets/images/Sun.png"),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: BottomText("Wed", "12°", "assets/images/Moon cloud fast wind.png"),
          ),
          Positioned(
            left: 20,
            bottom: 75,
            child: BottomText("Thu ", " 13°", "assets/images/Moon cloud fast wind.png"),
          ),
          Positioned(
            left: 20,
            bottom: 45,
            child: BottomText("Fri   ", "   9°", "assets/images/Moon cloud fast wind.png"),
          ),
          const Positioned(
            bottom: 8,
            left: 22,
            child: Text(
              "Weekly temperature",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Positioned(
            bottom: 8,
            right: 35,
            child: Text(
              "°C",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
