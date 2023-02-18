import 'package:flutter/material.dart';
import 'package:weather/controllers/home_controller.dart';
import 'package:weather/controllers/weather_controller.dart';
import 'package:weather/screens/bgimage.dart';
import 'package:weather/screens/bottom.dart';
import 'package:weather/screens/contry_name.dart';
import 'package:weather/screens/degree.dart';
import 'package:weather/screens/serchfield.dart';
import 'package:weather/wigets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            future: Repo().getWeather(),
            builder: ((context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          BgImage(),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SearchTextField(
                                    controller: search,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  ContryName(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  DegreeCenter("12°"),
                                  const SizedBox(
                                    height: 05,
                                  ),
                                  Container(
                                    child: const Text(
                                      "Hazardous Weather Outlook\nArea Forecast Discussion",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 5,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: const [
                                          Degree(
                                            image: 'assets/images/Sun.png',
                                            text: '2 pm',
                                            btext: '20°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image: 'assets/images/Sun.png',
                                            text: '1 pm',
                                            btext: '21°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                "assets/images/Moon cloud fast wind.png",
                                            text: '4 pm',
                                            btext: '12°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                "assets/images/Moon cloud fast wind.png",
                                            text: '6 am',
                                            btext: '13°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                "assets/images/Moon cloud fast wind.png",
                                            text: '4 am',
                                            btext: '8°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                "assets/images/Moon cloud fast wind.png",
                                            text: '12 am',
                                            btext: '6°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                'assets/images/Moon cloud fast wind.png',
                                            text: '10 pm',
                                            btext: '12°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                'assets/images/Moon cloud fast wind.png',
                                            text: '8 pm',
                                            btext: '13°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                'assets/images/Moon cloud fast wind.png',
                                            text: '5 pm',
                                            btext: '15°',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Degree(
                                            image:
                                                'assets/images/Moon cloud fast wind.png',
                                            text: "4 pm",
                                            btext: '15°',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  BottomImage(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            })),
      ),
    );
  }
}
