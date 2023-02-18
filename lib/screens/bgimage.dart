import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: double.infinity,
                    // height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/valentin-muller-bWtd1ZyEy6w-unsplash.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
  }
}