import 'package:flutter/material.dart';
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
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
        title: Image.asset(
          "assets/images/flutter_logo.png",
          width: 130,
        ),
      ),
      drawer: MyDrawer(context),
      body: Obx(
        () => sideBarController.pages[sideBarController.index.value],
      ),
    );
  }
}
