import 'package:app/pages/Activities/activis_tab.dart';
import 'package:app/pages/Base/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final navigationController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: navigationController.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ActivisTab()
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navigationController.currentIndex,
          onTap: (index) {
            navigationController.navigatePageView(index);
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff121517),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(80),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hub),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Atividades',
            ),
          ],
        ),
      ),
    );
  }
}
