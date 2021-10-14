import 'package:get/get.dart';
import 'package:pedalcommander/controller/home_view_controller.dart';

class HomeViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeViewController());
  }
}
