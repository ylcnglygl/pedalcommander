import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedalcommander/routes/app_routes.dart';
import 'package:pedalcommander/routes/app_views.dart';
import 'package:pedalcommander/utils/binding/home_view_controller_binding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeViewControllerBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline6: TextStyle(),
        ).apply(
          fontFamily: GoogleFonts.nunito().fontFamily,

          // displayColor: Colors.blue,
        ),
      ),
      getPages: AppViews.appViews,
      initialRoute: AppRoutes.initialView,
    );
  }
}
