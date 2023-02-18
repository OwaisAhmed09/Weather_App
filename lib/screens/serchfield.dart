import 'package:flutter/material.dart';
import 'package:weather/controllers/data.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField(
      {super.key,  required this.controller});

  var controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.white,
          icon: const Icon(Icons.location_on),
          iconColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                width: 3,
                color: Colors.white,
              )),
          labelText: "Search temperature"),
    );
  }
}
