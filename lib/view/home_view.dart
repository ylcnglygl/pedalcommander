import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pedalcommander/controller/home_view_controller.dart';
import 'package:pedalcommander/view/widget/edit_pedal.dart';
import 'package:pedalcommander/view/widget/engine_types.dart';
import 'package:pedalcommander/view/widget/star_method.dart';

import 'widget/volume_pedal.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Obx(
                () => starMethod(context, controller.starColor.value,
                    controller.cardText.value, controller.visibleCard.value),
              ),
              const SizedBox(height: 50),
              const EngineTypes(),
              const VolumePedal(),
              const EditPedal(),
            ],
          ),
        ),
      ),
    );
  }
}
