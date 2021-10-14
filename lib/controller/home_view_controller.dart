import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pedalcommander/constants/color_constants.dart';

class HomeViewController extends GetxController {
  CardColors cardColors = CardColors();
  RxString cardText = "CITY".obs;
  Rx<Color> starColor = const Color(0xff01CDE0).obs;
  RxInt barPositiveValue = 0.obs;
  RxInt barNegativeValue = 0.obs;
  RxList<bool> barColorsPositive = RxList([false, false, false, false]);
  RxList<bool> barColorsNegative = RxList([false, false, false, false]);
  RxList visibleList = RxList([false, true, true, true]);
  RxBool visibleCard = true.obs;

  void incrementValue() {
    if (barNegativeValue.value == 0) {
      barColorsPositive[barPositiveValue.value] = true;
      barPositiveValue.value++;
      if (barPositiveValue.value == 4) {
        barPositiveValue.value = 3;
      }
    }
    if (barPositiveValue.value == 0) {
      barColorsNegative[barNegativeValue.value <= 0
          ? barNegativeValue.value = 0
          : barNegativeValue.value--] = false;
    }
    if (barColorsPositive[0] == true) {
      barColorsNegative[0] = false;
    }
  }

  void decrementValue() {
    if (barPositiveValue.value == 0) {
      barColorsNegative[barNegativeValue.value] = true;
      barNegativeValue.value++;
      if (barNegativeValue.value == 4) {
        barNegativeValue.value = 3;
      }
    }
    if (barNegativeValue.value == 0) {
      barColorsPositive[barPositiveValue.value <= 0
          ? barPositiveValue.value = 0
          : barPositiveValue.value--] = false;
    }

    if (barColorsNegative[0] == true) {
      barColorsPositive[0] = false;
    }
  }

  void changeVisible() {
    visibleCard.value = false;
    Future.delayed(Duration(milliseconds: 100)).then((value) {
      visibleCard.value = true;
    });
  }
}
