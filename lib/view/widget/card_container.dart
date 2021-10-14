import 'package:flutter/material.dart';

Container cardContainer(Color color1, Color color2, String name,
    AlignmentGeometry begin, AlignmentGeometry end) {
  return Container(
    height: 84,
    width: 84,
    decoration: BoxDecoration(
        color: Colors.yellow,
        gradient: LinearGradient(begin: begin, end: end, colors: [
          color1,
          color2,
        ]),
        borderRadius: BorderRadius.circular(18)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 38,
            width: 38,
            child: Image.asset("assets/icons/icon.png", fit: BoxFit.cover)),
        Text(name),
      ],
    ),
  );
}
