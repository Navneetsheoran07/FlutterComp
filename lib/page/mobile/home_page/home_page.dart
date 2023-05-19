import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';
import 'package:get/get.dart';
import '../../../components/my_drawer.dart';
import '../../../controller/sidebar_controller.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: divColor,
        centerTitle: true,
        title: Image.asset(
          "assets/images/flutter_logo.png",
          width: 130,
        ),
      ),
      drawer: MyDrawer(),
      body: Obx(
        () => sideBarController.pages[sideBarController.index.value],
      ),
    );
  }
}
