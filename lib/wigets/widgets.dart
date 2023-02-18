import 'package:flutter/material.dart';

// _____________________multiple degree widget____________________

class Degree extends StatelessWidget {
  final image;
  final String text;
  final String btext;

  // final color;
  const Degree({
    super.key,
    // required this.color,
    required this.image,
    required this.text,
    required this.btext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 146,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff0B698B),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 13, 8, 0),
                          child: Text(
                            text,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff132F5B),
                        ),
                        child: Image(
                          image: AssetImage(image),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              btext,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

BottomText(text, degree, image ) {
  return  Row(
                children: [
                  Text(
           "$text",
            style: const TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
              const SizedBox(width: 5),
                  Image(image: AssetImage("$image")),
                  const SizedBox(width: 10),
                  Text(
            "$degree",
            style: const TextStyle(
                    color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          ),
                ],
              );
}
