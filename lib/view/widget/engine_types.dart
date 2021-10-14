import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pedalcommander/controller/home_view_controller.dart';
import 'package:pedalcommander/view/widget/card_container.dart';

class EngineTypes extends GetView<HomeViewController> {
  const EngineTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.starColor.value =
                    controller.cardColors.ecoCardColors[0];
                controller.cardText.value = "ECO";
                controller.changeVisible();
              },
              child: cardContainer(
                  controller.cardColors.ecoCardColors[0],
                  controller.cardColors.ecoCardColors[1],
                  "ECO",
                  Alignment.topLeft,
                  Alignment.bottomRight),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 1 / 10),
            GestureDetector(
              onTap: () {
                controller.starColor.value =
                    controller.cardColors.sportPlusCardColors[0];
                controller.cardText.value = "SPORT+";
                controller.changeVisible();
              },
              child: cardContainer(
                  controller.cardColors.sportPlusCardColors[0],
                  controller.cardColors.sportPlusCardColors[1],
                  "SPORT+",
                  Alignment.topRight,
                  Alignment.bottomLeft),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 1 / 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.starColor.value =
                    controller.cardColors.cityCardColors[0];
                controller.cardText.value = "CITY";
                controller.changeVisible();
              },
              child: cardContainer(
                  controller.cardColors.cityCardColors[0],
                  controller.cardColors.cityCardColors[1],
                  "CITY",
                  Alignment.bottomLeft,
                  Alignment.topRight),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 1 / 10),
            GestureDetector(
              onTap: () {
                controller.starColor.value =
                    controller.cardColors.sportCardColors[0];
                controller.cardText.value = "SPORT";
                controller.changeVisible();
              },
              child: cardContainer(
                  controller.cardColors.sportCardColors[0],
                  controller.cardColors.sportCardColors[1],
                  "SPORT",
                  Alignment.bottomRight,
                  Alignment.topLeft),
            ),
          ],
        ),
      ],
    );
  }
}
