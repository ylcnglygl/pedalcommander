import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pedalcommander/controller/home_view_controller.dart';
import 'package:pedalcommander/view/widget/edit_button.dart';

class EditPedal extends GetView<HomeViewController> {
  const EditPedal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F2F2),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 35 / Get.width),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  controller.decrementValue();
                },
                child: editButton(context, "minus")),
            Image.asset("assets/icons/Logo.png", fit: BoxFit.contain),
            GestureDetector(
                onTap: () {
                  controller.incrementValue();
                },
                child: editButton(context, "plus")),
          ],
        ),
      ),
    );
  }
}
