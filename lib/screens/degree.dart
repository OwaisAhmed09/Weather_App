import 'package:flutter/material.dart';
import 'package:weather/utils/text.dart';

  Widget DegreeCenter(degree) {
    return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child:  Text(
                                "$degree",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 96,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        );
  }
