import 'package:flutter/material.dart';

AnimatedOpacity starMethod(
    BuildContext context, Color color, String text, bool visible) {
  return AnimatedOpacity(
    opacity: visible ? 1.0 : 0.0,
    duration: Duration(milliseconds: 100),
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.black,
          size: MediaQuery.of(context).size.height * 10 / 37,
        ),
        Icon(
          Icons.star,
          color: color,
          size: MediaQuery.of(context).size.height * 1 / 4,
        ),
        Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.height * 1 / 20,
                  height: MediaQuery.of(context).size.height * 1 / 20,
                  child: Image.asset(
                    "assets/icons/icon.png",
                    fit: BoxFit.cover,
                  ),
                ))),
        Positioned.fill(
            bottom: 10,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 24),
                ))),
      ],
    ),
  );
}
