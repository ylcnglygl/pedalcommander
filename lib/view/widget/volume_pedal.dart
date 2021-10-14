import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pedalcommander/controller/home_view_controller.dart';

class VolumePedal extends GetView<HomeViewController> {
  const VolumePedal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 200 / Get.height,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 35 / Get.width),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 104 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsNegative[3]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 79 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsNegative[2]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 60 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsNegative[1]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 47 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsNegative[0]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              const SizedBox(width: 10),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 47 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsPositive[0]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 60 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsPositive[1]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 79 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsPositive[2]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width * 21 / Get.width,
                height: MediaQuery.of(context).size.height * 104 / Get.height,
                decoration: BoxDecoration(
                    color: controller.barColorsPositive[3]
                        ? const Color(0xffFFCC33)
                        : const Color(0xffC4C4C4)),
                duration: const Duration(milliseconds: 500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
