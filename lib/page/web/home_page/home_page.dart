import 'package:flutter/material.dart';
import 'package:flutter_comp/controller/sidebar_controller.dart';
import 'package:get/get.dart';
import '../../../components/my_drawer.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 2,
          child: MyDrawer(context),
        ),
        Obx(
          () => Expanded(
            flex: 9,
            child: sideBarController.pages[sideBarController.index.value],
          ),
        )
      ],
    ));
  }
}
