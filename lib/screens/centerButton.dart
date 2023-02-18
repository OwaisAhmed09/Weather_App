 import 'package:flutter/material.dart';
 
 class name extends StatelessWidget {
   const name({super.key});
 
   @override
   Widget build(BuildContext context) {
     return  Center(
                          child: Stack(
                            children: [
                              Positioned(
                               
                                child: Container(
                                  width: 222,
                                  height: 95,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/Sun.png"),
                                    ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xff132F5B),
                                      ),
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/images/Group 71.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
   }
 }
 
 
 
 
                     