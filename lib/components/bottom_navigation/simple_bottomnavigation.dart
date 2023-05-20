import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';
import 'package:flutter_comp/controller/bottom_navigation/simple_botton_controller.dart';
import 'package:get/get.dart';

class SimpleNavigationBar extends StatelessWidget {
  const SimpleNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    SimpleNavigationController simpleNavigationController =
        Get.put(SimpleNavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: titleColor,
          unselectedItemColor: grayColor,
          backgroundColor: Colors.white,
          currentIndex: simpleNavigationController.index.value,
          onTap: (index) {
            simpleNavigationController.index.value = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ),
      ),
      body: Obx(
        () => simpleNavigationController
            .Pages[simpleNavigationController.index.value],
      ),
    );
  }
}
