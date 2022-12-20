import 'package:app/pages/Base/base_screen.dart';
import 'package:app/pages/Base/controller/navigation_controller.dart';
import 'package:app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App',
      theme: darkThemeData(context),
      home: const BaseScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
