import 'package:get/get.dart';
import 'package:pedalcommander/view/home_view.dart';

import 'app_routes.dart';

class AppViews {
  static final List<GetPage> appViews = <GetPage>[
    GetPage(
      name: AppRoutes.homeView,
      page: () => const HomeView(),
    ),
  ];
}
